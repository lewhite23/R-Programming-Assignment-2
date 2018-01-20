

## This function creates the matrix and it's inverse. First you have to set the value and then get the value. Then, set the inverse and get the inverse of the matrix

makeCacheMatrix <- function(x= matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<-y
    inv<<- NULL
  }
  get<-function()x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, 
       get = get, 
       setInverse = setInverse,
       getInverse = getInverse)
}



## The below function checks to see if solution has been calculate - if so, the computation will be skipped. But, if not, the code will get the inverse and then set it with the setInverse function 

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
        	message("getting cached data")
        	return (inv)
        }
        data <- x$get()
        inv<- solve(data)
        x$setInverse(inv)
        inv
}
