//
//  ViewController.swift
//  Animations
//
//  Created by Oscar Hernandez on 21/05/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    var viewAnimation : AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        let segmentedControl = UISegmentedControl (items: ["Anim1","Anim2","Anim3"])
        segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        self.view.addSubview(segmentedControl)
        segmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        
        
        
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
        {
            viewAnimation?.removeFromSuperview()
            
            if sender.selectedSegmentIndex == 0 {
                let circle = LoaderView(animation:"circle")
                circle.animationView?.frame.size = CGSize(width: 400, height: 400)
                circle.animationView?.center = self.view.center
                viewAnimation = circle.animationView!
                view.addSubview(viewAnimation!)
                view.backgroundColor = .cyan
                print("0")
            }else if sender.selectedSegmentIndex == 1 {
                let circle3d = LoaderView(animation:"circles3d")
                circle3d.animationView?.frame.size = CGSize(width: 400, height: 400)
                circle3d.animationView?.center = self.view.center
                viewAnimation = circle3d.animationView!
                view.addSubview(viewAnimation!)
                view.backgroundColor = .red
                print("1")
            }else{
                let speed = LoaderView(animation:"speed")
                speed.animationView?.frame.size = CGSize(width: 400, height: 400)
                speed.animationView?.center = self.view.center
                viewAnimation = speed.animationView!
                view.addSubview(viewAnimation!)
                view.backgroundColor = .green
                print("2")
            }
        }


}

