import UIKit
import RxSwift


let error = NSError(domain: "com.rxswiftsample.throw", code: -1, userInfo: nil)
let source: Observable<Int> = Observable.error(error)

let subscription = source.subscribe { (event: Event<Int>) -> Void in
    switch event {
    case .next(let element):
        print("Next: \(element)")
    case .completed:
        print("Completed")
    case .error(let error):
        if let error = error as? NSError {
            print("Error: domain =\(error.domain), code =\(error.code), userInfo =\(error.userInfo), ")
        }
    }
}
