#include <Rcpp.h>
using namespace Rcpp;
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar)

// [[Rcpp::export]]
int update_mat(NumericMatrix x, NumericVector doc, NumericVector h) {
   int nrow = x.nrow();
   int ncol = doc.size();
   for(int i =0; i < nrow; i++){
   		for(int j =0; j < ncol; j++){
       		if(h[i] < x( i,doc[j]-1)){
            	x(i,doc[j]-1) =  h[i];
            }
       }
   }
   return 1;
}
