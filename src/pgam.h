/*
Prototypes go right here
*/

/* Poisson-gamma filter */
void pgam_filter(double *w,double *y,int *ny,double *eta,double *att1,double *btt1);

/* Poisson-gamma prediction */
void pgam_predict(double *y,int *ny,double *att1,double *btt1,double *yhat,double *vyhat,double *deviance,double *pearson);

/* likelihood evaluation */
void pgam_loglik(double *y,int *ny,int *fnz,double *att1,double *btt1,double *likval);

