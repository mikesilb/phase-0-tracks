1. What are some common HTTP status codes?
* Some common HTTP status codes are 1XX Informational
	* 100 - Continue
	* 101 - Switch Protocol
	* 102 - Prcoessing
* 2XX Success codes
	* 200 - OK
	* 201 - Created
	* 202 - Accepted
* 3XX Redirect codes
* 4XX Error codes
	* 403 - Forbidden
	$ 404 - Not Found
2. What is the difference between a GET request and a POST request? When might each be used?
* GET requests a representation of the specified resource. Note that GET should not be used for operations that cause side-effects, such as using it for taking actions in web applications. One reason for this is that GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause.
* POST submits data to be processed (e.g., from an HTML form) to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
* 