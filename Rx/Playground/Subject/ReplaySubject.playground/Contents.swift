import UIKit
import RxSwift

// 指定した数または全てをキャッシュするSubjectで、初期値は与えられない。


// キャッシュ上限指定
let replayThree = ReplaySubject<Any>.create(bufferSize: 3)

// キャッシュ上限なし、全てをキャッシュする
let replayAll = ReplaySubject<Any>.createUnbounded()


