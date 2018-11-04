import UIKit
import RxSwift

// 指定した値のeventを無限に発生し続けるObservable、takeなどと一緒に使用

let disposeBag = DisposeBag()

let repeatElement = Observable<String>
    .repeatElement("A")
    .take(3) // 3つだけにする

repeatElement
    .subscribe { print($0) }
    .disposed(by: disposeBag)
