import Cocoa

// 스위프트 기초 문법 07 - property observer
// property observer는 프로퍼티의 값의 변화를 관찰하고, 이에 응답.
// property observer를 사용하기 위해서는 프로퍼티의 값이 반드시 초기화 되어 있어야 함.
// willSet, didSet 2가지 제공.
// willSet : 값이 저장되기 직전에 호출. 새로운 property의 값이 newValue 로 제공.
// didSet : 새로운 값이 저장된 직후에 호출. 이전 property의 값이 oldValue 로 제공.


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


var myProperty: Int = 10{
   didSet(oldVal){
      //myProperty의 값이 변경된 직후에 호출, oldVal은 변경 전 myProperty의 값
   }
   willSet(newVal){
      //myProperty의 값이 변경되기 직전에 호출, newVal은 변경 될 새로운 값
   }
}



// 가장 많이 쓰이는 방식은 Model에서 갱신된 값을 View에 보여줄 때

var score: Int = 0 {
    didSet(oldValue) {
        print("현재 점수는: \(self.score), 이전 점수는 \(oldValue)")
    }
}

// 이런식으로 비교가능.
