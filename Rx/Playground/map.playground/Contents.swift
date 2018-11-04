import UIKit
import RxSwift

let disposeBag = DisposeBag()

let observable: Observable<Int> = Observable.from([1, 2, 3, 4, 5])

let mappedObservable: Observable<Int> = observable
    .map { value in value * 2 }

mappedObservable
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)

print("-------------")

// 型を変換する

let mappedObservableString: Observable<String> = observable
    .map { String($0 * 3) }

var s = ""

mappedObservableString
    .subscribe(onNext: {
        s = s + $0
        print($0)
    }).disposed(by: disposeBag)

print(s)

