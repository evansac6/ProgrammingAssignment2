# This assignment is to write a pair of functions that cache the inverse of a matrix.
# The makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
# The cacheSolve function computes the inverse of the "matrix" returned by makeCacheMatrix. 


# The makeCacheMatrix function creates a matrix

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(z) {
            x <<- z
            inver <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inver <<- inverse
        getInverse <- function() inver
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


# The cacheSolve function computes the inverse of the makeCacheMatrix function. 
# If the inverse has already been calculated and the matrix has not changed, 
# then the cachesolve retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        inver <- x$getInverse()
        if (!is.null(inver)) {
            return(inver)
        }
        matrix <- x$get()
        inver <- solve(matrix)
        x$setInverse(inver)
        inver
}
