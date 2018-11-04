import UIKit
import RxSwift


let disposeBag = DisposeBag()

let skipElement = Observable
    .from([1, 2, 3, 4, 5])
    .skip(3)

skipElement
    .subscribe { print($0) }
    .disposed(by: disposeBag)
