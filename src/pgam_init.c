#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* .C calls */
extern void pgam_filter(double *, double *, int *, double *, double *, double *);
extern void pgam_loglik(double *, int *, int *, double *, double *, double *);
extern void pgam_predict(double *, int *, double *, double *, double *, double *, double *, double *);

static const R_CMethodDef CEntries[] = {
    {"pgam_filter",  (DL_FUNC) &pgam_filter,  6},
    {"pgam_loglik",  (DL_FUNC) &pgam_loglik,  6},
    {"pgam_predict", (DL_FUNC) &pgam_predict, 8},
    {NULL, NULL, 0}
};

void R_init_pgam(DllInfo *dll)
{
    R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
