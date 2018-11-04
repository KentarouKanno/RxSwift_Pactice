import UIKit
import RxSwift

// SequenceType(Array, Dictionary, Set等)の要素を順にeventとして発生させ、最後にcompleteするObservable

let disposeBag = DisposeBag()

let from: Observable<Int> = Observable.from([1 ,2 ,3])

from
    .subscribe { print($0) }
    .disposed(by: disposeBag)

print(" ----------- ")

let from1 = Observable.from(["a" ,"b" ,"c"])

from1
    .subscribe { print($0) }
    .disposed(by: disposeBag)


print(" ----------- ")

let from2 = Observable.from(["a": 1 ,"b": 2 ,"c": 3])

from2
    .subscribe { print($0) }
    .disposed(by: disposeBag)


print(" ----------- ")

let from3 = Observable.from(0...5)

from3
    .subscribe { print($0) }
    .disposed(by: disposeBag)
