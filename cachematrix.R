## Put comments here that give an overall description of what your
## functions do

install.packages("matlib")
library(matlib)

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y)
  {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  #Matlab Package needed
  setInvMatrix <- function(invMatrix) m <<- inv
  getInvMatrix <- function() m
  list(set = set, get = get, 
       setInvMatrix = setInvMatrix,
       getInvMatrix = getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInvMatrix()
  if(!is.null(m) && is.matrix(m))
  {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m <- inv(data)
  x$setInvMatrix(m)
  
}
