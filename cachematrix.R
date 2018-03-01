## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv<-NULL
	get<- function() x ##retrieving data in x
	set<- function(y){ ##initializing
		x <<- y
		inv <<- NULL
	}
	setinv<-function(result){
		inv <<- result
	}
	getinv<-function() inv
	list (set=set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {##checking if inverse is already computed and compute it if not
        ## Return a matrix that is the inverse of 'x'
		if (is.null(x$getinv())){
			print "inverse is not yet computed"
			## compute inverse here
			x_data<-x$get()		##getting the data for computation
			ans<- solve(x_data) 
			x$setinv(ans)		##pushing the result to 
			return (ans)
		}else {
			print "retrieving from cache"
			return(x$getinv())
		}
		
}
