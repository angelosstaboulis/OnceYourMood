//
//  Ekneurismeni.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

struct Ekneurismeni: View {
    @State var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var valueAnimation:Double
    var body: some View {
        VStack{
            Image("ekneurismeni").resizable() 
                .overlay(content: {
                    Image("ungry").onReceive(timer, perform: { value in
                       createEffect()
                    }).rotationEffect(.degrees(valueAnimation))
                    .animation(.spring, value: valueAnimation)
                    
                })
                .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - 90,alignment: .top)
                .ignoresSafeArea()
        }
    }
    func createEffect(){
        if valueAnimation < 360 {
            valueAnimation = valueAnimation + 1
        }else{
            valueAnimation = 0
        }
    }
}

#Preview {
    Ekneurismeni(valueAnimation: 0)
}
