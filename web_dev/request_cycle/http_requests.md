# 2. Common HTTP status codes
## Source: http://www.restapitutorial.com/httpstatuscodes.html.

200: everything was responded to successfully
201: request fulfilled and new content created
204: request fulfilled, but an entity body (the header and body info) are not necessarily returned

301: the information you're looking for is permanently moved

400: Bad request
401: Unauthorized to access information
403: Forbidden access to requested information
404: URL not found

500: internal error that prevented the server from providing the information

# 3. The difference between a GET request and a POST request, and when they are each used
GET: tells a server it wants to retrieve something. Anytime you want to simply call up information you can use GET.

POST: asks the server to accept and store data from the body of the request message, e.g. when a user sets up a new account online they need to submit an inputted user name and password. This would involve a POST request to have the server accept this input.

# 4. Definition of cookie and how it relates to HTTP requests
A cookie is a piece of data that a website sends to the user's computer for the user's browser to store to remember information like past browsing, what's in a shopping cart, or a logged in/out status. Cookies are sent after a user makes a call to a server.