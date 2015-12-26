# The assignment is to write a pair of functions that cache the inverse of a matrix.
# The makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
# The cacheSolve function computes the inverse of the "matrix" returned by makeCacheMatrix. 
# If the inverse has already been calculated (and the matrix has not changed), then the cachesolve retrieves the inverse from the cache.


# The makeCacheMatrix function creates a matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
            x <<- y
            inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


# The cacheSolve function computes the inverse of the makeCacheMatrix. 
# If the inverse has already been calculated (and the matrix has not changed), then the cachesolve retrieves the inverse from the cache.
# Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
