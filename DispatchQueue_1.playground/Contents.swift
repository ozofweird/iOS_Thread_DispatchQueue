import UIKit


//DispatchQueue.main.sync {
//    // DeadLock을 일으키므로 사용 금지
//}

DispatchQueue.main.async {

}

DispatchQueue.global().sync {
    // 큐에 작업을 추가할 경우 해당 작업이 끝날때까지 대기
    for i in 1 ... 5 {
        print("\(i) -- 글로벌 싱크")
    }
    print("==========")
}

DispatchQueue.global().async {
    // 큐에 작업을 추가하고 다른 작업을 수행
    for i in 200 ... 205 {
        print("\(i) -- 글로벌 어싱크1")
    }
}

DispatchQueue.global().async {
    // 큐에 작업을 추가하고 다른 작업을 수행
    for i in 300 ... 305 {
        print("\(i) -- 글로벌 어싱크2")
    }
}

for i in 100 ... 105 {
    print("\(i) -- 외부 루프")
}
