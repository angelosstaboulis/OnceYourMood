//
//  Exantlimeni.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

struct Exantlimeni: View {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var animationValue:Bool

    var body: some View {
        VStack{
            Image("exantlimenh").resizable() 
                .overlay(content: {
                    Image("ungry").onReceive(timer, perform: { value in
                        animationValue = Helper.shared.createDynamikiEffect(valueAnimation: 0, scale: .zero, animation: animationValue, mood: .Exantlimeni).2
                    })
                    .offset(y: animationValue ? 0 : -80)
                    .animation(.interpolatingSpring(stiffness: 350, damping: 5, initialVelocity: 10))

                })
                .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - 90,alignment: .top)
                .ignoresSafeArea()
        }
    }
    
}

#Preview {
    Exantlimeni(animationValue: false)
}
