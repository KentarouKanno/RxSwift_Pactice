import UIKit
import RxSwift

let disposeBag = DisposeBag()

let observable: Observable<Int> = Observable.from([1, 2, 3, 4, 5])
let flatMappedObservable: Observable<Int> = observable
    .flatMap { value in Observable.from(0..<value) }


flatMappedObservable
    .subscribe { print($0) }
    .disposed(by: disposeBag)
