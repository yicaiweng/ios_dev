//
//  ViewController.swift
//  imageScroll
//
//  Created by Yicai Weng on 11/1/16.
//  Copyright © 2016 Yicai Weng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMainScroll.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "rosita"), #imageLiteral(resourceName: "zombie"), #imageLiteral(resourceName: "daryl"), #imageLiteral(resourceName: "gleen"), #imageLiteral(resourceName: "abraham"), #imageLiteral(resourceName: "hershell"), #imageLiteral(resourceName: "rick")]
        
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.myMainScroll.frame.width, height: self.myMainScroll.frame.height)
            
            myMainScroll.contentSize.width = myMainScroll.frame.width * CGFloat(i + 1)
            myMainScroll.addSubview(imageView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var myMainScroll: UIScrollView!
    
    var imageArray = [UIImage]()

}

