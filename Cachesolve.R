cacheSolve <- function(x, ...) {
    inv <- x$getInverse()  # Check if inverse is already cached
    if (!is.null(inv)) {
        message("Getting cached data")
        return(inv)  # Return the cached inverse
    }
    mat <- x$get()  # Get the matrix
    inv <- solve(mat, ...)  # Compute the inverse
    x$setInverse(inv)  # Cache the computed inverse
    inv
}
