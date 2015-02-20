## These functions are used for caching the inverse of a matrix

## This function allows to create a special matrix containing its own inverse 

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setInverse <- function(i) inverse <<- i
    getInverse <- function() inverse
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function allows to return a matrix that is the inverse of given matrix

cacheSolve <- function(x, ...) {
    inverse <- x$getInverse()
    if (!is.null(inverse)) {
        message("Getting cached data")
        return(m)
    }
    data <- x$get()
    inverse <- solve(data)
    x$setInverse(inverse)
    inverse
}
