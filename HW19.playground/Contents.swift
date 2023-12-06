import UIKit

func getData(urlRequest: String) {
    let urlRequest = URL(string: urlRequest)
    guard let url = urlRequest else {
        print("Неверный формат ссылки")
        return }
    URLSession.shared.dataTask(with: url) { data, responce, error in
        if error != nil {
            print("Error: \(String(describing: error))")
        } else if let responce = responce as? HTTPURLResponse {
            switch responce.statusCode {
            case 200:
                print("Успешно.")
            default:
                print("Код ответа: \(responce.statusCode)")
            }

            guard let data = data, let dataAsString = String(data: data, encoding: .utf8) else {
                print("Ошибка получения данных")
                return
            }
            print("Data: \(dataAsString)")
        }
    }.resume()
}

// ссылка с гитхаб
getData(urlRequest: "http://dog-api.kinduff.com/api/facts?number=5")

//Marvel
let publicKey = "340c54ef487f6035b5c56989ac428fe9"
let privateKey = "99b5d5af3ac00d0dfe52a594b62d2b03c552e3c5"

