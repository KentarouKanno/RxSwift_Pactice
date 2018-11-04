import UIKit
import RxSwift


let disposeBag = DisposeBag()

let range = Observable
    .range(start: 0, count: 10)

range
    .subscribe { print($0) }
    .disposed(by: disposeBag)
