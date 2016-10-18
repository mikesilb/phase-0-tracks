# HTTP Requests (Release 0)

2. List of Common HTTP Status Codes
*200 OK
*300 Multiple Choices
*301 Moved Permanently
*302 Found
*304 Not Modified
*307 Temporary Redirect
*400 Bad Request
*401 Unauthorized
*403 Forbidden
*404 Not Found
*410 Gone
*500 Internal Server Error
*501 Not Implemented
*503 Service Unavailable
*550 Permission denied


3. A GET request is used to retrieve data from a remote location while a POST request is used to insert or update data onto a remote location.  Use POST for destructive actions such as creation, editing, and deletion, because you can't hit a POST action in the address bar of your browser. Use GET when it's safe to allow a person to call an action. 

4. (Wikipedia) An HTTP cookie (also called web cookie, Internet cookie, browser cookie or simply cookie) is a small piece of data sent from a website and stored in the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.


(https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/) 
*Origin of cookies 

One of the biggest issues in the early days of the web was how to manage state. In short, the server had no way of knowing if two requests came from the same browser. The easiest approach, at the time, was to insert some token into the page when it was requested and get that token passed back with the next request. This required either using a form with a hidden field containing the token or to pass the token as part of the URL’s query string. Both solutions were intensely manual operations and prone to errors.


