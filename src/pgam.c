
#ifdef WINDOWS
#include <windows.h>  /* For easy self window porting, without needing everything R.h needs */
#include <stdarg.h>
#else
#include <R.h>
#endif

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "pgam.h"

typedef double * vector;

/* Poisson-gamma filter */
void pgam_filter(double *w,double *y,int *ny,double *eta,double *att1,double *btt1)
{
int n,t;
double W;
vector at,bt;

n = *ny;
W = *w;

at = (double*)calloc(n+1,sizeof(double));
bt = (double*)calloc(n+1,sizeof(double));

/* diffuse initialization */
at[0] = 0.0;
bt[0] = 0.0;

for(t=0;t<n;t++)
	{
	/* prediction */
	att1[t] = W*at[t];
	btt1[t] = W*bt[t]*exp(-eta[t]);
	/* update */
	at[t+1] = W*at[t]+y[t];
	bt[t+1] = W*bt[t]+exp(eta[t]);
	}
free(at);
free(bt);
}


void pgam_predict(double *y,int *ny,double *att1,double *btt1,double *yhat,double *vyhat,double *deviance,double *pearson)
/* Poisson-gamma prediction */
{
int n,t;

n = *ny;

for (t=0;t<n;t++)
	{
	/* mean */
	yhat[t] = att1[t]/btt1[t];
	/* variance */
	vyhat[t] = att1[t]*(1.0+btt1[t])/pow(btt1[t],2);
	/* deviance */
	if (!(y[t] == 0))
		deviance[t] = 2*(att1[t]*log(att1[t]/(y[t]*btt1[t]))-(att1[t]+y[t])*log((y[t]+att1[t])/((1.0+btt1[t])*y[t])));
	else
		deviance[t] = 2*(att1[t]*log((1.0+btt1[t])/btt1[t]));
	/* pearson */
	pearson[t] = pow(y[t]*btt1[t]-att1[t],2)/(att1[t]*(1.0+btt1[t]));
	}
}


void pgam_loglik(double *y,int *ny,int *fnz,double *att1,double *btt1,double *likval)
/* likelihood evaluation */
{
int n,tau,t;

n = *ny;
tau = *fnz-1;

for (t=tau+1;t<n;t++)
	*likval += lgamma(att1[t]+y[t])-lgamma(y[t]+1.0)-lgamma(att1[t])+att1[t]*log(btt1[t])-(att1[t]+y[t])*log(1.0+btt1[t]);
}


int main(void)
/* intended for testing only */
{
int j,n=10,fnz=1;
vector y,eta,att1,btt1;
double llik,w=0.85;

y=(double *)calloc(n,sizeof(double));
eta=(double *)calloc(n,sizeof(double));
att1=(double *)calloc(n,sizeof(double));
btt1=(double *)calloc(n,sizeof(double));

for(j=0;j<n;j++)
	{
	y[j]=j;
	eta[j]=w*y[j];
	}

pgam_filter(&w,y,&n,eta,att1,btt1);
pgam_loglik(y,&n,&fnz,att1,btt1,&llik);

for(j=0;j<n;j++)
	printf("att1:\n %f\n",att1[j]);
for(j=0;j<n;j++)
	printf("btt1:\n %f\n",btt1[j]);

printf("value of likelihood is %f\n",llik);

return(0);
}

