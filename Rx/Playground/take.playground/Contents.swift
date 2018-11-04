import UIKit
import RxSwift

let disposeBag = DisposeBag()

let takeElement = Observable
    .from([1, 2, 3, 4, 5])
    .take(3) // 先頭の3つだけにする

takeElement
    .subscribe { print($0) }
    .disposed(by: disposeBag)
