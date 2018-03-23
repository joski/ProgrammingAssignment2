## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix<-NULL
  
  #set a new matrix and delete existing
  setMatrix<-function(y){
    x<<-y
    inverseMatrix<-NULL
  }
  
  getMatrix <- function() x
  
  getInverse <- function() inverseMatrix
  
  setInverse <- function(inverse) inverseMatrix<<-inverse
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(is.null(x$getInverse())){
    x$setInverse(solve(x$getMatrix()))
  }
  return(x$getInverse())
}

