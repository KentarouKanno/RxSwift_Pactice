import UIKit
import RxSwift

// 一切キャッシュしないSubject

let disposeBag = DisposeBag()

let subscription = PublishSubject<String>()

subscription
    .subscribe(onNext: {
        print($0)
    }, onError: {
        print($0)
    }, onCompleted: {
        print("onCompleted")
    }).disposed(by: disposeBag)


subscription.onNext("a")
subscription.onCompleted()
subscription.onNext("b")

