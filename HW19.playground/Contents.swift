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
                print("Успешно. Код 200.")
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


getData(urlRequest: "http://dog-api.kinduff.com/api/facts?number=5")
