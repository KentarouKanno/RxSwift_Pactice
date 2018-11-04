import UIKit
import RxSwift

// Cのfor-loopのように、初期値・条件・ループ後の操作、を指定し、条件を満たす間nextを発生させ、最後にcompleteするObservable

let disposeBag = DisposeBag()

let generate = Observable<Int>
    .generate(
        initialState: 0,
        condition   : { $0 < 3 },
        iterate     : { $0 + 1 }
)

generate
    .subscribe { print($0) }
    .disposed(by: disposeBag)
