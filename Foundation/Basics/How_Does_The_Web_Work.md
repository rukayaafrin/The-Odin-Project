## What is a web server?
- delivers web pages to users' devices upon request
- handles HTTP requests from clients(browsers) and serves requested file

## What is a network?
- group of connected devices that share resources and allows data exchange


## What is the internet?
- global network of interconnected computers that communicate via standardized protocals

## What are standardized protocols?
### Transmission Control Protocol (TCP): paired with IP
- connection-based protocol
- data is delivered in sequence 

### Internet Protocol (IP)
- addressing and routing of packets

### User Datagram Protocol (UDP)
- Connectionless
- faster protocol that doesn’t ensure packet order or delivery

### Hypertext Transfer Protocol / Secure (HTTP/HTTPS)
- Request and Transfer web content
- HTTPS adds encryption

### File Transfer Protocol (FTP)
- Transfer files between devices on network

### Simple Mail Transfer Protocol (SMTP)
- Send email between servers

### Domain Name System (DNS)
- Translates domain names into IP addresses.

### ICMP (Internet Control Message Protocol)
- Used for error messages and network diagnostics (e.g., the "ping" command).

## What is an IP address?
- unique identifier of a device on a network

## What is a router?
- directs data packets between different networks and ensures data is sent to the correct destination

## What is an ISP?
- Internet Service Provider: provides access to internet

## What are packets and how are they used to transfer data?
- Packets are small units of data transferred across networks
- Each packet:{
    Header: {metadata:{source,destination IP, packet number, protocal, routing info etc}},
    addresing,
    Payload: {data},
    Footer: {checksum}
}
## What is a client?
- requests services or resources from a server

## What is a server?
- computer or software that provides services or resources in response to requests from clients.

## What is a web page?
- document on the internet that can contain text, images, videos, and links, accessible via a browser.

## What is a web browser?
- used to access, retrieve, and display web pages on the internet

## What is a search engine?
-  web service that indexes and organizes information on the internet, allowing users to search for content by keywords

## What is a DNS request?
- query made by a device to the Domain Name System to resolve a domain name (like google.com) to its corresponding IP address.

## In your own words, describe the process that takes place when you initiate a search on google.com in terms of what we discussed.

1. DNS Request: device sends a DNS request to convert google.com to it's IP address
2. Connection: device uses IP to connect to google's servers
3. Request and Response: Send a request to server when a search is entered in the client. Server responses
4. Rendering: Browser renders response
