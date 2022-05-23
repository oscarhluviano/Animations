//
//  LoaderView.swift
//  Animations
//
//  Created by Oscar Hernandez on 22/05/22.
//

import Foundation
import Lottie
import UIKit

public class LoaderView: UIView{

    var animation: String
    
    init(nimation: String) {
        self.animation = animation
        super.init()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonlnit(anim: animation)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonlnit(anim: animation)
    }
    
    func commonlnit(anim: String) {
        let animationView = AnimationView(name: anim)
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height:400)
        animationView.center = self.center
        animationView.animationSpeed = 0.2
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 280).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 108).isActive = true
    }
}
