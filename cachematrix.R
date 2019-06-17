## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
        
}


## This creates a special matrix object that cashes the inverse of the matrix

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
                ## retrieves or calculates the inverse of the matrix
                ## Return a matrix that is the inverse of 'x'
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
