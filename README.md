# pgam
Poisson-Gamma Additive Models

This work is an extension of the state space model for Poisson count data, Poisson-Gamma model, towards a semiparametric specification. Just like the generalized additive models (GAM), cubic splines are used for covariate smoothing. The semiparametric models are fitted by an iterative process that combines maximization of likelihood and backfitting algorithm.

## Installation

```r
install.packages("remotes")
remotes::install_github("wjunger/pgam")
```

or

```r
install.packages("remotes")
remotes::install_github("NPEA/pgam")
```

Check further instruction on how to install R packages from GitHub repositories at the [remotes package repository](https://github.com/r-lib/remotes).

## Notice

The repository [NPEA/pgam](https://github.com/NPEA/pgam) is an updated fork and it is ready to use. However, if you wish to fork this project, fork the upstream [wjunger/pgam](https://github.com/wjunger/pgam).

## License

GPL (>= 2)

## Disclaimer

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.