## Put comments here that give an overall description of what your
## functions do
## The first function "make cacheMatrix" sets a special matrix then caches it, then retrievesthe stored matrix 
## and calculates its inverse stores it, and finally retreives the solved inversee

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
        x<<-y
        m<<-NULL
  }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}
## Write a short comment describing this function
## This function retreives the matrix created above and checks to see if the inverse has already been solved, if not,
## it calculates the inverse with the setmatrix function.

cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
        message("getting cached data")
        return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}

}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
