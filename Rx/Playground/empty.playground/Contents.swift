import RxSwift

// completeだけが発生するObservable

let disposeBag = DisposeBag()

let empty = Observable<Void>.empty()

empty
    .subscribe {
        print($0)
    }
    .disposed(by: disposeBag)


print("-----------")

let source = Observable<Int>.empty()

source.subscribe { (event: Event<Int>) -> Void in
    switch event {
    case .next(let element):
        print("next: \(element)")
    case .completed:
        print("completed")
    case .error(let error):
        print("error: \(error)")
    }
}



