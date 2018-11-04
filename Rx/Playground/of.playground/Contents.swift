import UIKit
import RxSwift

// 最初に指定した複数のnextが順に発生して、completeするObservable

let disposeBag = DisposeBag()

let of = Observable<String>.of("1", "2", "3", "4")

of
    .subscribe { print($0) }
    .disposed(by: disposeBag)

print(" ----------- ")

let of1 = Observable.of("1", "2", "3", "4")


of1
    .subscribe { print($0) }
    .disposed(by: disposeBag)

print(" ----------- ")

let of2 = Observable.of(["1", "2", "3", "4"])

of2
    .subscribe { print($0) }
    .disposed(by: disposeBag)
