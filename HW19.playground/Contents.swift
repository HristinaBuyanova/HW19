import UIKit

// ссылка с гитхаб 
getData(urlRequest: "http://dog-api.kinduff.com/api/facts?number=1")

// Marvel
var urlComponents = URLComponents()
urlComponents.scheme = https
urlComponents.host = hostMarvel
urlComponents.path = pathComics
urlComponents.queryItems = [
    URLQueryItem(name: "ts", value: String(ts)),
    URLQueryItem(name: "apikey", value: publicKey),
    URLQueryItem(name: "hash", value: hash)
]

if let marvelUrl = urlComponents.url {
    getData(urlRequest: marvelUrl.absoluteString)
} else {
    print("Ошибка создания ссылки Marvel")
}

