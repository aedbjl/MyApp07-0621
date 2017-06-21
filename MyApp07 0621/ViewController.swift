//
//  ViewController.swift
//  MyApp07 0621
//
//  Created by iii-user on 2017/6/21.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    private var btnOk:UIButton?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnOk = UIButton(type: UIButtonType.system)
        btnOk?.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        btnOk?.setTitle("OK", for:UIControlState.normal)
        self.view.addSubview(btnOk!)
        
        switch traitCollection.userInterfaceIdiom{
        case.pad:print("pad")
        case.phone:print("phone")
        case.tv:print("tv")
        case.carPlay:print("carPlay")
            
        default:
            break
        }
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        switch UIDevice.current.orientation{
        case.faceUp:print("faceup")
        case.faceDown:print("facedown")
        case.landscapeLeft:print("Home->Right")
        case.landscapeRight:print("Home->Left")
        case.portrait:print("normal")
        case.portraitUpsideDown:print("abnormal")
        default:
            break
        }
        
        print("size => w =\(size.width),h=\(size.height)")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

