//
//  MainPage.swift
//  Dice
//
//  Created by Halyna on 18/03/2021.
//
import AVFoundation
import SwiftUI

struct MainPage: View {
    @State var showingImage = false
    @State var random = Int.random(in: 0..<6)
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        ZStack{
            Button(action: {
                self.random = Int.random(in: 0..<6)
                showImage()
                playSounds("dice.mp3")
            }) {
                Image(DiceArray[self.random].imageDice)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onAppear(perform: {
                        playSounds("dice.mp3")
                    })
                
            }
            if showingImage{
                ZStack{
                    Rectangle()
                        .frame(width: 370, height: 900, alignment: .center)
                        .foregroundColor(.white)
                    workoutAnimation().aspectRatio(contentMode: .fit)
                }
            }
        }
    }
    private func showImage() {
        self.showingImage = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            self.showingImage = false
        }
    }
    func playSounds(_ soundFileName : String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
            fatalError("Unable to find \(soundFileName) in bundle")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer.play()
    }
}
struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
