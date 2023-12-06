import Foundation

//Marvel
public let publicKey = "340c54ef487f6035b5c56989ac428fe9"
let privateKey = "99b5d5af3ac00d0dfe52a594b62d2b03c552e3c5"
public let ts = Date.currentTimeStamp
public let hash = (String(ts) + privateKey + publicKey).MD5()
public let https = "https"
public let hostMarvel = "gateway.marvel.com"
public let pathComics = "/v1/public/comics"

