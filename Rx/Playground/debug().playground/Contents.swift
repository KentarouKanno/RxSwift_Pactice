import UIKit
import RxSwift

let disposeBag = DisposeBag()

let doOn = Observable
    .of("A", "B", "C", "D")
    .debug()

doOn
    .subscribe { print($0) }
    .disposed(by: disposeBag)
