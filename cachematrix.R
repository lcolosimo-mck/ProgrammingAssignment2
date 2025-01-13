## caching the inverse of a matrix
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    in <-NUll
    get <-function () x
    set <-function(y) {
    x<<- y
    in<<-NULL
    }
    getin <-function () in
    setin <- function(inverse) {
    in<<-inverse
    }
    return (list(
    set=set,
    get=get,
    getinverse=getin,
    setinverse=setin
    ))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <-x$getinverse()
        if(!is.null(inverse)) {
            message("getting inverse data")
            return(inverse)
        }
        data<-solve(x$get())
        x$setinverse(data)
        
}
