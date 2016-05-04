//
//  LayerMaskController.swift
//  DMMemory
//
//  Created by 21 on 16/5/4.
//  Copyright © 2016年 21. All rights reserved.
//

import UIKit

class LayerMaskController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //使用图片的图层作为裁剪区域
        let containV = UIView(frame: CGRectMake(100,100,0,0))
        self.view.addSubview(containV)
        containV.backgroundColor = UIColor.redColor()
        
        let imaV = UIImageView(frame: CGRectMake(0,0,200,200))
        containV.addSubview(imaV)
        imaV.image = UIImage(named: "ReceiverTextNodeBkg")
        
        let imaV2 = UIImageView(frame: CGRectMake(0,0,200,200))
        containV.addSubview(imaV2)
        imaV2.image = UIImage(named: "test3")
        
        containV.layer.mask = imaV.layer
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
