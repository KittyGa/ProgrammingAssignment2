## The makeCacheMatrix function creates a special "matrix" object that can cache its inverse. 
## The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 


## This function creates creates a special "matrix" object that is basically the inverse of the matrix. 
## The function 
## 1. sets the value of the cache matrix,
## 2. gets the value of the cache matrix 
## 3. sets the value of the inverse of the matrix and
## 4. gets the value of the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  
  i = NULL
  set = function(y)
  {
    x <<- y
    i <<- NULL
      }
get <- function() x
setinv = function(solve) i <<- solve
getinv =function() i
list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve would retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
   i = solve(x)
  
  if (!is.null(i)){
      message("getting cached data")
    return(i)
}

data = x$get()
i = solve(data, ...)

solve(i)
return(i)
}
