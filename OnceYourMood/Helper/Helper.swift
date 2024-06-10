//
//  Helper.swift
//  OnceYourMood
//
//  Created by Angelos Staboulis on 10/6/24.
//

import Foundation
enum Mood{
    case Apatimeni
    case Dynamiki
    case Ekneurismeni
    case Exantlimeni
}
class Helper{
    static let shared = Helper()
    func createDynamikiEffect(valueAnimation:Double,scale:CGSize,animation:Bool,mood:Mood)->(Double,CGSize,Bool){
        var newValueAnimation = valueAnimation
        var newScale = scale
        var newAnimation = animation
        switch mood{
            
        case .Apatimeni:
            if newValueAnimation < 1.5 {
                newValueAnimation = newValueAnimation + 0.1
                newScale = .init(width: newValueAnimation, height: newValueAnimation)
            }else{
                newValueAnimation = 0
                newScale = .init(width: newValueAnimation, height: newValueAnimation)
            }
            break
        case .Dynamiki:
            if newValueAnimation < 30 {
                newValueAnimation = newValueAnimation + 1
            }else{
                newValueAnimation = 0
            }
             break
        case .Ekneurismeni:
            if newValueAnimation < 360 {
                newValueAnimation = newValueAnimation + 1
            }else{
                newValueAnimation = 0
            }
            break
        case .Exantlimeni:
            newAnimation.toggle()
            break
        }
        return (newValueAnimation,newScale,newAnimation)
    }
   
}
