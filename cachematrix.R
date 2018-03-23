## Put comments here that give an overall description of what your
## functions do

## This function takes a matrix X and returns list of functions for getting/setting the 
##  matrix or the inverse

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix<-NULL
  
  #set a new matrix and delete existing inverse
  setMatrix<-function(y){
    x<<-y
    inverseMatrix<-NULL
  }
  
  getMatrix <- function() x
  
  getInverse <- function() inverseMatrix
  
  setInverse <- function(inverse) inverseMatrix<<-inverse
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, getInverse = getInverse, setInverse=setInverse)
}


## Checks to see if inverse has previously been set, if not the setInverse function is called
##  Returns the inverse by calling getInverse()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(is.null(x$getInverse())){
    x$setInverse(solve(x$getMatrix()))
  }
  return(x$getInverse())
}

