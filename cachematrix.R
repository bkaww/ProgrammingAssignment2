## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
  
## The inverse of a Matrix
## It always time-wasting to inverse a matrix and there may be some advantages 
##to program this action, because it will save your time
## These functions are used to create a special "matrix" object and computes the inverse of the special "matrix"

## makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse

  makeCacheMatrix <- function(x = matrix()) {
    
   r <- NULL
   set <- function(y) {
       
             x <<- y
             r <<- NULL
    }
  get <- function() x
  setsolve <- function(solve) r <<- solve
  getsolve <- function() r
  list ( set = set, get = get, setsolve=setsolve, getsolve=getsolve)

}


## cacheSolve: This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    r <- x$getsolve()
    if(!is.null(r)) {
        message("getting cached data")
        return(r)
    }
    
    data <- x$get()
    r <- solve(data,...)
    x$setsolve(r)
    r
}
