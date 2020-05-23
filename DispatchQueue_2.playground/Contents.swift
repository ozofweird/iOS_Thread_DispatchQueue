import UIKit

/*
// 개인 Serial 큐 생성
let serialQueue = DispatchQueue(label: "Serial")

serialQueue.sync {
    for i in 1 ... 5 {
        print(i)
    }
    print("==========")
}

serialQueue.async {
    for i in 200 ... 205 {
        print(i)
    }
}

serialQueue.async {
    for i in 300 ... 305 {
        print(i)
    }
}

for i in 100 ... 105 {
    print(i)
}
*/

/*------------------------------------------------*/
// 개인 Concurrent 큐 생성
let concurrentQueue = DispatchQueue(label: "Concurrent", attributes: .concurrent)

concurrentQueue.sync {
    for i in 1 ... 5 {
        print("\(i) --싱크")
    }
    
    print("==========")
}

concurrentQueue.async {
    for i in 200 ... 205 {
        print("\(i) --어싱크")
    }
    
    print("==========")
}

for i in 100 ... 105 {
    print("\(i) --어싱크")
}

// 캡슐화 (group)
let concurrentQueueItem = DispatchWorkItem {
    for i in 100 ... 105 {
        print("\(i) --어싱크 아이템")
    }
}

concurrentQueue.async (execute: concurrentQueueItem )
