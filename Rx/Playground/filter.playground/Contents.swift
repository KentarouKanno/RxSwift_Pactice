import UIKit
import RxSwift

// onNextで渡された値について、条件がtrueの要素のみからなるObservableに変換する、onCompletedやonErrorはそのまま流します。

let disposeBag = DisposeBag()

let observable: Observable<Int> = Observable.from([1 ,2 ,3 ,4 ,5])


let filteredObservable: Observable<Int> = observable
    .filter { $0 > 3 }

filteredObservable
    .subscribe { print($0) }
    .disposed(by: disposeBag)

