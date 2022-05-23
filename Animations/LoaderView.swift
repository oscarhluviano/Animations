//
//  LoaderView.swift
//  Animations
//
//  Created by Oscar Hernandez on 22/05/22.
//

import Foundation
import Lottie
import UIKit

public class LoaderView{
    
    var animationView : AnimationView?
    
    init(animation: String){
        commonlnit(anim: animation)
    }
    
    func commonlnit(anim: String) {
        self.animationView = .init(name: anim)
        self.animationView?.loopMode = .loop
        self.animationView?.play()
    }
}
