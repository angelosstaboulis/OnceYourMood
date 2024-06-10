//
//  Dynamiki.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

struct Dynamiki: View {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var valueAnimation:Double
    var body: some View {
        Image("dynamiki").resizable()
            .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - 90,alignment: .top)
            .overlay(content: {
                Image("ungry").onReceive(timer, perform: { value in
                   createEffect()
                }).rotationEffect(.degrees(valueAnimation))
                .animation(.linear, value: valueAnimation)
            }).ignoresSafeArea()
    }
    func createEffect(){
        if valueAnimation < 30 {
            valueAnimation = valueAnimation + 1
        }else{
            valueAnimation = 0
        }
    }
}

#Preview {
    Dynamiki(valueAnimation: 0)
}
