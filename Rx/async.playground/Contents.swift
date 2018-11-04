import UIKit
import PlaygroundSupport


PlaygroundPage.current.needsIndefiniteExecution = true


class Client {
    func someTask() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let jsonData = data {
                self.printJSON(jsonData)
            }
        }
        task.resume()
    }
    
    func printJSON(_ data: Data) {
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            print(json)
        } catch {
            print("parse error!")
        }
    }
}

let client = Client()
client.someTask()
