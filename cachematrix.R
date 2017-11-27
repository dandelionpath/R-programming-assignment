## Put comments here that give an overall description of what your
## functions do
## This function will store the matrix and its inverse.
## Write a short comment describing this function
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
        i <-NULL
        set<-function(y){
                x <<- y
                i <<- NULL
                }
        get<-function()x
        setinverse<-function(inverse){
                i<<-inverse
                }
        getinverse<-function()i
        list(set=set,
             get=get,
             setinverse=setinverse,
             getinverse=getinverse)

}


## Write a short comment describing this function
## This function is to retieve the inverse of the matrix. If the matrix inverse has been
## computed, it will stop and give that inverse matrix. Otherwise, it will compute
## and set the value in cache
cacheSolve <- function(x, ...) {
        i<-x$getinverse()
        if(!is.null(i)){
              message("getting cached data")
              return(i)
        }
        else{
                data<-x$get()
                i<-solve(data)
                x$setinverse(i)
                i
        }
        
        ## Return a matrix that is the inverse of 'x'
}
