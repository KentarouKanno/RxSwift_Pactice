import UIKit
import RxSwift

// event(next, complete, error)が一切発生しないObservable

let disposeBag = DisposeBag()

let never = Observable<Void>.never()

never
    .subscribe{ print($0) }
    .disposed(by: disposeBag)
