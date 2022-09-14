//
//  ContentView.swift
//  practice2
//
//  Created by user on 2022/9/13.
//

import SwiftUI
import AVFoundation

//var helloWorld = "Hello World!";
//var happyPrograming = "Happy Programing!";

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Guess These Movies").fontWeight(.bold).font(.system(.title))
            Text("Can you guess the movies from these emojis?\nTap the button to find out the answer!").font(.system(.title))
            Button{
                speak(text: "綠巨人浩克")
            }label: {
                Text("🤢👨‍⚕️🧪").fontWeight(.bold).font(.system(.title, design: .rounded))
            }.padding()
             .foregroundColor(.white)
             .background(Color.green)
             .cornerRadius(20)
            Button{
                speak(text: "美國隊長")
            }label: {
                Text("🇺🇸🪖🛡").fontWeight(.bold).font(.system(.title, design: .rounded))
            }.padding()
             .foregroundColor(.white)
             .background(Color.yellow)
             .cornerRadius(20)
            Button{
                speak(text: "蜘蛛人")
            }label: {
                Text("🕷🏃").fontWeight(.bold).font(.system(.title, design: .rounded))
            }.padding()
             .foregroundColor(.white)
             .background(Color.blue)
             .cornerRadius(20)
            Button{
                speak(text: "蟻人")
            }label: {
                Text("🐜🚶🏼‍♂️").fontWeight(.bold).font(.system(.title, design: .rounded))
            }.padding()
             .foregroundColor(.white)
             .background(Color.red)
             .cornerRadius(20)
        }
    }
}

func speak(text: String) {
    let utterance = AVSpeechUtterance(string: text)
    utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
    let synthesizer = AVSpeechSynthesizer()
    synthesizer.speak(utterance)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
