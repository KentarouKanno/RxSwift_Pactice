import UIKit
import RxSwift


func count(from: Int, to: Int, quickStart: Bool) -> Observable<Int> {
    return Observable<Int>
        .timer(quickStart ? 0 : 1, period: 1, scheduler: MainScheduler.instance)
        .take(from - to + 1)
        .map { from - $0 }
}


let observable = count(from: 10, to: 3, quickStart: true)

// observable.subscribe { print($0) }

observable.subscribe { (event) in
    switch event {
    case .next(let count):
        print(count)
    case .completed:
        print("completed")
    case .error(let error):
        print(error)
    }
}


