## Since matrix inverse calculation sometimes would be time consuming, we would
## like to write functions that when trying to calculate the matrix inverse, we 
## first look up the cache to see if it is already calculated. If it is, we can 
## just directly grab from cache thus saving us time of recomputation.

## This function gives us a list containing functions of set a matrix, get a matrix
## set the inverse of the matrix and get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv<- NULL
        set <- function(y){
          x<<-y
          invers <- NULL
        }
        get <- function() x
        setinverse<- function(inverse) inv<-inverse
        getinverse <- function() inv
        list (set=set,get=get,
              setinverse=setinverse,
              getinverse=getinverse)

}


## The function calculates the inverse of the list created with the above function.
## However, it first looks up if the inverse is still in the cache or not.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(is.null(inve)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- Solve(data,...)
        x$setinvers(inv)
        inv
}

