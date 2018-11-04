import UIKit
import RxSwift

// 指定した秒数後に実行する

let timer = Observable<Int>.timer(10, scheduler: MainScheduler.instance)
timer.subscribe { print($0) }
