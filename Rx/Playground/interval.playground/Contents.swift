import UIKit
import RxSwift


//

let interval = Observable<Int>.interval(1, scheduler: MainScheduler.instance)
interval.subscribe { print($0) }

