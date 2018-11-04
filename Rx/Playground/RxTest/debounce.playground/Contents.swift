import UIKit
import RxTest

let scheduler = TestScheduler(initialClock: 0)

let observable = scheduler.createHotObservable([
    Recorded.next(1, "R"),
    Recorded.next(2, "Rx"),
    Recorded.next(3, "RxS"),
    Recorded.next(4, "RxSw"),
    Recorded.next(5, "RxSwi"),
    Recorded.next(6, "RxSwif"),
    Recorded.next(7, "RxSwift")
    ])


_ = observable
    .debounce(1, scheduler: scheduler)
    .subscribe(onNext: {
        print("onNext: ", $0)
    })

scheduler.start()



