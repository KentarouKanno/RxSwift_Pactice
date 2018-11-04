import UIKit
import RxSwift

// 最初に指定したnextが一度発生して、completeするObservable

let disposeBag = DisposeBag()

let just = Observable<String>.just("A")

just
    .subscribe { print($0) }
    .disposed(by: disposeBag)



