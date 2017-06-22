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
        btnOk?.backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1)
        self.view.addSubview(btnOk!)
        
        btnOk?.addTarget(self, action: #selector(clickBtnOk), for: UIControlEvents.touchUpInside)
        btnOk?.addTarget(self, action: #selector(clickBtnOk2), for: UIControlEvents.touchDown)
        
        
        
        
        switch traitCollection.userInterfaceIdiom{
        case.pad:print("pad")
        case.phone:print("phone")
        case.tv:print("tv")
        case.carPlay:print("carPlay")
            
        default:
            break
        }
        
    }
    
    @objc private func clickBtnOk(sender: UIButton ){
        print("click")
        }//selector 適用於新版
    @objc private func clickBtnOk2(sender: UIButton){
        print("click2")
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

