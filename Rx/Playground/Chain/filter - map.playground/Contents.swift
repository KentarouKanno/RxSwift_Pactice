import UIKit
import RxSwift

let disposeBag = DisposeBag()

let observable = Observable.of(
    "R",
    "Rx",
    "RxS",
    "RxSw",
    "RxSwi",
    "RxSwif",
    "RxSwift"
)

observable
    .filter { $0.count >= 2 }
    .map { $0.lowercased() }
    .subscribe(onNext: {
        print($0)
    }).disposed(by: disposeBag)
