//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by Kaiqi Gong on 15/4/3.
//  Copyright (c) 2015年 Kaiqi Gong. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookTapped(sender: AnyObject) {
        var controller: SLComposeViewController =  SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.addImage(beautyImage.image)
        controller.setInitialText("一起来玩女神画廊吧")
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterShare(sender: AnyObject) {
        var controller: SLComposeViewController =  SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.addImage(beautyImage.image)
        controller.setInitialText("一起来玩女神画廊吧")
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboShare(sender: AnyObject) {
        var controller: SLComposeViewController =  SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        controller.addImage(beautyImage.image)
        controller.setInitialText("一起来玩女神画廊吧")
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}