+++
title = "Access log format"
description = "Details of how an Apache access log is formatted."
weight = 1
+++
There are two different types of access logs which are currently supported. They are the **common** log format, and the **combined** format.

The **combined** format includes the following fields:

1. The request address
    usually an IPv4 dotted decimal address, but DNS names and IPv6 notation are also supported.
2. Client identity.
    This will be a hyphen (`'-'`) in most cases. The additional overhead of the [IdentityCheck](http://httpd.apache.org/docs/2.2/mod/mod_ident.html#identitycheck) directive means that this is information is normally not available.
3. User identity.
    This information is available when the user is "logged-in". In most cases this is also hyphen indicating the information is not available.
4. Request time stamp.
    The date and time when the request was made.
5. HTTP Request line.
    This is normally composed of three fields:

    * Protocol request method (i.e. GET, HEAD, POST, PUT, etc.)
    * URI
    * Protocol identifier (HTTP/1.0 or HTTP/1.1)

6. Status-code
    Three digit HTTP status of request.
7. Returned object size in octets (bytes).
    A hyphen indicates no object was returned.
8. The referer (sic).
    The URI of the page which included a link to this request. A hyphen if the request was not referred.
9. The user-agent.
    A hyphen if no user-agent information was provided.
10. End-of-line.

The **common** log format does not include the referer(8) and user-agent(9) fields.
