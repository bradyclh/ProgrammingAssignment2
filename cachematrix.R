## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #make a matrix
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(matrix) m <<- matrix
        getmatrix <- function() m
        x2 <- list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...) * data
        x$setmatrix(m)
        m
}
