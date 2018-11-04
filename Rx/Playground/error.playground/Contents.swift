import UIKit
import RxSwift

let disposeBag = DisposeBag()

enum MyError: Error {
    case error
}

let error = Observable<Void>.error(MyError.error)
    

error
    .subscribe(
    onNext: { event in
        print(event)
},
    onError: { error in
        print("エラー！ \(error)")
})

print("----------")


let error1 = Observable<Any>.create { observer in
    
    [1, 2, 3, 4].forEach({
        observer.on(.next($0))
    })
    observer.on(.error(MyError.error))
    return Disposables.create()
    }

error1
    .subscribe(
    onNext: { event in
        print(event)
}, onError: { error in
        print("エラー！ \(error)")
}).disposed(by: disposeBag)


