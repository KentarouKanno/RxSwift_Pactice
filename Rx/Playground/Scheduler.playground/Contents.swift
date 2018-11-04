import UIKit
import RxSwift


// メインスレッドで実行するScheduler
let mainScheduler = MainScheduler.instance

// バックグラウンドで実行するScheduler
//let backgroundScheduler = SerialDispatchQueueScheduler(internalSerialQueueName:)
