## Function to create an inverse matrix to cache

## Sets the value of the matrix

makeCacheMatrix <- function(x = matrix()){
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }

## Gets the value of the matrix
    
    get <- function () x
    
## Sets the inverse of the matrix
    
    setinverse <- function(solve) i <<- solve
    
## Gets the inverse of the matrix
    
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}
     
## Computes the inverse of the matrix

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    
    ## If inverse already calculated then returns inverse from cache
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$solve(i)
    i
}