import UIKit
import RxSwift

// numがnilの場合はObservable.empty()、値がある場合はObservable.just(num!)のような動きをします

let disposeBag = DisposeBag()

var num: Int? = nil
let optional1 = Observable.from(optional: num)

optional1
    .subscribe(onNext: {
        print($0 + 3)
    }, onCompleted: {
        print("complete")
    })
    .disposed(by: disposeBag)

print("------------")

num = 5
let optional2 = Observable.from(optional: num)

optional2
    .subscribe(onNext: {
        print($0 + 3)
    }, onCompleted: {
        print("complete")
    })
    .disposed(by: disposeBag)
