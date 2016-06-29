2. common HTTP status codes
..* 200 - OK
..* 300 - Multiple choices
..* 301 - Moved Permanently 
..* 400 - Bad Request
..* 403 - Forbidden
..* 404 - Not Found
..* 500 - Internal Server Error
..* 503 - Service Unavailable

3. A GET request creates a URL by appending the form data set to the original, in a fashion similar to key/value pairs. 

A POST request does not append the data set to the URL, but creates a message for parsing data according to the content type specified. 

GET requests aren't as secure and are easier to hack, so you would use a POST request when you wanted a safer request. POST requests are best suited when the request is changing something.

GET requests can be cached and bookmarked. GET requests are best suited for viewing purposes only.  

4. A cookie is a small file that is saved to a user's computer which stores preferences or information about the user, which the server then usese to identify the user to provide a customized experience based on these preferences. A cookie is created by the server sending an HTTP header called Set-Cookie. 
