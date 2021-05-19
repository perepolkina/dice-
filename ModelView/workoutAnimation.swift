//
//  workoutAnimation.swift
//  Dice
//
//  Created by Halyna on 22/03/2021.
//

import SwiftUI

let animatedImage = UIImage.animatedImage(with: images, duration: 0.4)
 struct workoutAnimation: UIViewRepresentable {

     func makeUIView(context: Self.Context) -> UIView {
         //let someView = UIView(frame: CGRect(x: 0, y: 0, width: 700, height: 700))
         let someView = UIView(frame: CGRect())
         let someImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 370, height: 450))
         someImage.image = animatedImage
         someView.addSubview(someImage)
         return someView
     }
     func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<workoutAnimation>) {

     }
 }


