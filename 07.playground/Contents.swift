import Cocoa

// 스위프트 기초 문법 07 - property observer

var myAge = 0 {
    willSet{
        print("값이 설정될 예정이다. myAge: \(myAge)")
        
    }
    didSet{
        print("값이 설정되었다. myAge: \(myAge)")
        
    }
}

myAge = 10
//값이 설정될 예정이다. myAge: 0
//값이 설정되었다. myAge: 10

// myAge = 20
// 값이 변경되는 것을 알 수 있다.
