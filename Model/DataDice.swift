import SwiftUI

struct DataDice: Identifiable {
    var id = UUID()
    var digitDice: Int
    var imageDice: String
}
let  DiceArray = [
    DataDice(digitDice: 1, imageDice: "1"),
    DataDice(digitDice: 2, imageDice: "2"),
    DataDice(digitDice: 3, imageDice: "3"),
    DataDice(digitDice: 4, imageDice: "4"),
    DataDice(digitDice: 5, imageDice: "5"),
    DataDice(digitDice: 6, imageDice: "6")
]

var images: [UIImage]! = [UIImage(named: "m1")!,UIImage(named: "m2")!, UIImage(named: "m3")!,UIImage(named: "m4")!,UIImage(named: "m5")!, UIImage(named: "m6")!,UIImage(named: "m7")!,UIImage(named: "m8")!]

//https://zvukipro.com/predmet/930-zvuki-igralnyh-kostej-kubikov.html
