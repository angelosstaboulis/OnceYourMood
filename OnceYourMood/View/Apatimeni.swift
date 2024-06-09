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

    var body: some View {
        VStack{
            Image("apatimeni").resizable() 
                .overlay(content: {
                    Image("ungry").onReceive(timer, perform: { value in
                        if valueAnimation < 20 {
                            valueAnimation = valueAnimation + 1
                        }else{
                            valueAnimation = 0
                        }
                    })
                    .offset(y: valueAnimation)
                })
                .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - 90,alignment: .top)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    Apatimeni(valueAnimation: 0)
}
