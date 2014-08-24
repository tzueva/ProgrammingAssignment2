## these functions help to calculate inverse matrices minimizing 
## computations by saving results in a cache and returning them
## if needed. The first function creates a special "matrix" object 
## that can cache its inverse, the second one computes the inverse
## special matrix, returned by the first function. If the invesre
## already exists, then the second function just gets the cached 
## result

## makeCacheMatrix function creates a special "matrix", which is really a list 
## containing a function to 
##1) set the value of matrix
## 2) get the value of matrix
## 3) set the value inverse matrix
## 4) get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
x <<- y
m <<- NULL
}
get<-function() x
setinverse<-function(solve) m<<- solve
getinverse<-function() m
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## cacheSolve function gets inverse matrix from the list in the cache...
## first checks if it is not NULL and gets inverse matrix from cache then
## if m is NULL, then the function gets initial matrix from cache...
## computes inverse matrix...
## and caches it
## prints the inverse matrix

cacheSolve <- function(x, ...) {
m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data, ...)
  x$setinverse(m) 
  m
}
