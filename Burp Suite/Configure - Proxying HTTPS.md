When intercepting HTTP traffic, we may encounter an issue when navigating to sites with TLS enabled that indicates that the PortSwigger Certificate Authority isn' t authorised to secure the connection, which is usually because the browser doesn't trust the certificate presented by Burp Suite

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Burp%20Suite/Assets/8b4b43cac91cd9a80622b953598d05eb.png)

To overcome this issue, we can manually add the PortSwigger CA certificate to our browser's list of trusted certificate authorities
1. Download the CA Certificate while the Burp Proxy is activated by navigating to http://burp/cert and downloading the cacert.der file
2. Access the Firefox Certificate Settings by typing about:preferences into your Firefox URL bar, press enter, search for "certificates", and then click on the View Certificates button
![](https://github.com/JonmarCorpuz/Procedures/blob/main/Burp%20Suite/Assets/a9de0495b2ac6738520c8f9946afdecb.png)
3. Import the CA Certificate by clicking on the Import button in the Certificate Manager window and then select the cacert.der file that you downloaded
4. Set Trust for the CA Certificate by checking the "Trust this CA to identify websites" box
![](https://github.com/JonmarCorpuz/Procedures/blob/main/Burp%20Suite/Assets/23e5cb317d00c1a5e64def1d46fa9301.png)

![](https://github.com/JonmarCorpuz/Procedures/blob/main/Burp%20Suite/Assets/fb2a8717ae887eda024a7791d83cefaf.gif)
