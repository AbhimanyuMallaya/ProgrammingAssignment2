## Put comments here that give an overall description of what your
## functions do- the functions get a matrix , use the solve function to get its inverse and cache the value

## Write a short comment describing this function - The makecachematrix function takes a matrix as its input
## then it proceeds to set its value and then get the value of the matrix.then it uses the solve function to 
##set the inverse matrix and get its value.Then  it  caches its own object .

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
  inv <<- NULL
  }
getmatrix <- function()x
setinverse <- function(solve) inv  <<- inverse
getinverse <- function() inv
list(set = set , getmatrix = getmatrix, getinverse = getinverse, setinverse = setinverse)
}


## Write a short comment describing this function - The cachesolve function takes the output from the makecachematrix function.
##it checks the output and then proceeds to check wheather makecachematrix has any inverse matrix stored or not.
##if it is empty the cachesolve function proceeds to get the original matrix and set the inverse matrix using solve function.
## if it does have the inverse stored,it returns the message "getting cached data" and gives back the cached object.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$getmatrix()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}


