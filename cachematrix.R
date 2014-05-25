## Put comments here that give an overall description of what your
## functions do

#functions create inverse matrix and save it into cache so next time 
#you need inverse matix, the program will not recalculate it
#but take it from cache and save time

## Write a short comment describing this function

#makeCacheMatrix gets a matix x and creates cache matrix for it

makeCacheMatrix <- function(x = matrix()) {
	 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse  = setinverse ,
             getinverse  = getinverse )
}


## Write a short comment describing this function
#cacheSolve computes the inverse of x, caches it and then return

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m

}
