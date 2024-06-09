//
//  Exantlimeni.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 9/6/24.
//

import SwiftUI

struct Exantlimeni: View {
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var valueAnimation:Bool

    var body: some View {
        VStack{
            Image("exantlimenh").resizable() 
                .overlay(content: {
                    Image("ungry").onReceive(timer, perform: { value in
                        valueAnimation.toggle()
                    })
                    .offset(x: valueAnimation ? -3 : 3, y: valueAnimation ? -3 : 3)
                })
                .frame(width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - 90,alignment: .top)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    Exantlimeni(valueAnimation: false)
}
