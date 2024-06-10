//
//  Apatimeni.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

struct Apatimeni: View {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var valueAnimation:Double
    @State var scale:CGSize
    var body: some View {
        VStack{
            Image("apatimeni").resizable() 
                .overlay(content: {
                    Image("ungry").onReceive(timer, perform: { value in
                        valueAnimation = Helper.shared.createDynamikiEffect(valueAnimation: valueAnimation, scale: scale, animation: false, mood: .Apatimeni).0
                        scale = Helper.shared.createDynamikiEffect(valueAnimation: valueAnimation, scale: scale, animation: false, mood: .Apatimeni).1
                        
                        
                    })
                    .scaleEffect(scale, anchor: .center)
                    .animation(.easeInOut, value: valueAnimation)
                })
                .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - 90,alignment: .top)
                .ignoresSafeArea()
        }
    }
  
}

#Preview {
    Apatimeni(valueAnimation: 0, scale: .zero)
}
