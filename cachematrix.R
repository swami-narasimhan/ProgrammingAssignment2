## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        set <-  function(y){
                x <<- y
                mat <<- NULL
        }
        get <- function()x
        setInverse <- function(Inverse) mat <<- Inverse
        getInverse <- function() mat
        list(set=set, get=get,setInverse=setInverse, getInverse=getInverse)
}


## Unsure what I am doing but creating Inverse cache-call or
##  Inverse calculation based on example
cacheSolve <- function(x, ...) {
        mat <- x$getInverse()
        if(!is.null(mat)){
          message("getting cached Inverse data")
          return(mat)
        }
        data <- x$get()
        mat <- solve(data,...)
        x$setInverse(mat)
        mat
}
