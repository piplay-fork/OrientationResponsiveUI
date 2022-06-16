//
//  ViewController.swift
//  OrientationResponsiveUI
//
//  Created by Prakhar Tripathi on 10/04/20.
//  Copyright © 2020 Prakhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var portraitConstraints: [NSLayoutConstraint]!
    @IBOutlet var landscapeConstraints: [NSLayoutConstraint]!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.backgroundColor = greenColors[0]
        view2.backgroundColor = greenColors[1]
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        switch UIApplication.shared.statusBarOrientation {
        case .portrait:
            fallthrough
        case .portraitUpsideDown:
            print("Portrait")
            NSLayoutConstraint.deactivate(landscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        case .landscapeLeft:
            fallthrough
        case .landscapeRight:
            print("Landscape")
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(landscapeConstraints)
        case .unknown:
            print("unknown orientation")
        @unknown default:
            print("unknown case in orientation change")
        }
    }
    
    @IBAction func button1Action(_ sender: Any) {
        view1.backgroundColor = greenColors[0]
        view2.backgroundColor = greenColors[1]
    }
    
    @IBAction func button2Action(_ sender: Any) {
        view1.backgroundColor = redColors[0]
        view2.backgroundColor = redColors[1]
    }
    
    @IBAction func button3Action(_ sender: Any) {
        view1.backgroundColor = blueColors[0]
        view2.backgroundColor = blueColors[1]
    }
}
