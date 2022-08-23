## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This is week3 assignment
# cacheSolve will retrieve the inverse  from the cache
library(MASS)
makeCacheMatrix<-function (x=matrix()){
    inv<-Null
    
    set <-function(y)
    {
      x<<-y
      inv <<- NULL
    }
    get <-function() x
    setinverse<-function(inverse) inv <<-inverse
    getinverse<-function() inv
    list(set = set,get = get,setinverse=setinverse,getinverse=getinverse)
  }
  
  # cacheSolve will retrieve the inverse from the cache
  cacheSolve <-function(x,...)
  {
    # return the inverse of 'x'
    inv<-x$get()
    if (!is.null(inv))
    {
      message("getting cached data")
     return(inv)
    }
 
     data<-x$get() 
    inv<-inverse(data,...)
    x$setinverse(inv)
    inv
  }
  
  

