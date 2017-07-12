##What are some common HTTP status codes?
* 200 - OK. The request was successful.
* 300 - Multiple choices. There are many different choices and the request cannot be resolved to a single one.
* 301 - Moved permanently. The requested resource has been assigned a new URI.
* 302 - Found. The resources has a different URI.
* 400 - Bad request. The request could not be understood due to incorrect syntax.
* 403 - Forbidden. The request was understood, but the server refuses to fulfull it.
* 404 - Not found. The server did not find anything matching the request URI.
* 500 - Internal server error. The server was unable to fulfull the request.
* 550 - Permission denied. Your account does not have permission to perform the requested action.

##What is the difference between a GET request and a POST request? When might each be used?
* GET
	* Requests data from a resource.
	* Can be cached.
	* Requests remain in browser history.
	* Requests can be bookmarked.
	* Has length restrictions
	* Should only be used to retrieve data.
* POST
	* Supplies data to be processed to a resource
	* Never cached.
	* Requests do not remain in browser history.
	* Requests cannot be bookmarked.
	* No length restrictions.

A GET request would be used for a database query, whereas a POST request would be used for database updates.

##Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is a piece of data sent from a website and stored on the client's computer. Cookies are used to store stateful information or to track the user's browsing activity.