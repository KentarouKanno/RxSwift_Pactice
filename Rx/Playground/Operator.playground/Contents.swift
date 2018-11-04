import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

var number1 = UITextField()
var number2 = UITextField()
var number3 = UITextField()

var result = UILabel()

number1.text = "1"
number2.text = "2"
number3.text = "3"

Observable.combineLatest(number1.rx.text.orEmpty,
                         number2.rx.text.orEmpty,
                         number3.rx.text.orEmpty) { textValue1, textValue2, textValue3 -> Int in
    return (Int(textValue1) ?? 0) + (Int(textValue2) ?? 0) + (Int(textValue3) ?? 0)
    }
    .map { $0.description }
    .bind(to: result.rx.text)
    .disposed(by: disposeBag)





