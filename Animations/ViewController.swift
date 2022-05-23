//
//  ViewController.swift
//  Animations
//
//  Created by Oscar Hernandez on 21/05/22.
//

import UIKit

class ViewController: UIViewController {

    
    
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
            if sender.selectedSegmentIndex == 0 {
                let fish = LoaderView(animation:"fish")
                fish.frame.size = CGSize(width: 400, height: 400)
                fish.center = self.view.center
                view.addSubview(fish)
                view.backgroundColor = .cyan
                print("0")
            }else if sender.selectedSegmentIndex == 1 {
                print("1")
            }else{
                print("2")
            }
        }


}

