## Put comments here that give an overall description of what your
## functions do
###This pair of functions caches the inverse of a matrix

## Write a short comment describing this function
###Creates a matrix that can cache its inverse

makeCacheMatrix <- function(m = matrix()) {
    i <- NULL
    set <- function(matrix){
        m <<- matrix
        i<<- NULL
    }
    get <- function() m
    setInverse <- function(inverse) {
        i <<-inverse
    }
    getInverse <- function () {
        i
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    
}


## Write a short comment describing this function
### Compute the inverse of the matrix created by the previous function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data) %*% data
    x$setInverse(m)
    m
}
