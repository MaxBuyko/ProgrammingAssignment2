## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                                                       ## create a new variable to make the function work properly
        set <- function (y){                                            ## set a new matrix to calculate a solution for
                x <<- y
                m <<- NULL
                }
        get <- function() x                                             ## show current matrix
        setms <- function(ms) m <<- ms                                  ## set matrix solution
        getms <- function() m                                           ## get matrix solution
        list (set = set, get = get, setms = setms, getms = getms)       ## put a list of function to be able to extract via '$'
        }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getms()                                                  ## extract current value of 'm'
        if(!is.null(m)) {                                               ## in case m is not NULL return it's value from cache
                message("Getting matrix solution from cache")
                return(m)
        }
        data <- x$get()                                                 ## in case 'm' is NULL extract the current matrix
        m <- solve(data)                                                ## create an inverse matrix to
        x$setms(m)                                                      ## set the inverse matrix as inverse to makeCacheMatrix vector
        m                                                               ## print 'm'
}