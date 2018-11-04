import UIKit
import RxSwift

// eventを任意に発生させることができるObservable

let disposeBag = DisposeBag()

let create = Observable<String>
    .create { observer -> Disposable in
        
        observer.onNext("A")
        observer.onNext("B")
        observer.onCompleted()
        
        return Disposables.create()
}

create
    .subscribe { print($0) }
    .disposed(by: disposeBag)

print("-----------")


let source = Observable<Int>.create { observer -> Disposable in
    
    observer.onNext(42)
    observer.onCompleted()
    return Disposables.create()
}

let subscription = source.subscribe { (event: Event<Int>) -> Void in
    switch event {
    case .next(let element):
        print("Next: \(element)")
    case .completed:
        print("Completed")
    case .error(let error):
        print("Error: \(error)")
    }
}





