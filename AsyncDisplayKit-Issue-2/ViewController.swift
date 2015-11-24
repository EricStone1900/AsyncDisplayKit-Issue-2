//
//  ViewController.swift
//  AsyncDisplayKit-Issue-2
//
//  Created by 崔 明辉 on 15/11/24.
//  Copyright © 2015年 AsyncDisplayKit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLabel()
        configureImageView()
    }
    
    func configureLabel() {
        let textLabel = ASTextNode()
        textLabel.attributedString = NSAttributedString(string: "Hello, World!",
            attributes: [
                NSForegroundColorAttributeName: UIColor.blackColor(),
                NSFontAttributeName: UIFont.systemFontOfSize(17)
            ])
        textLabel.measure(CGSize(width: view.bounds.width, height: CGFloat.max))
        textLabel.frame = CGRect(x: 0, y: 50, width: textLabel.calculatedSize.width, height: textLabel.calculatedSize.height)
        self.view.addSubnode(textLabel)
    }
    
    func configureImageView() {
        let imageView = ASNetworkImageNode(cache: ImageManager.sharedManager,
            downloader: ImageManager.sharedManager)
        imageView.frame = CGRect(x: 0, y: 100, width: view.bounds.size.width, height: 300)
        imageView.contentMode = .ScaleAspectFill
        imageView.clipsToBounds = true
        imageView.URL = NSURL(string: "http://ww3.sinaimg.cn/large/7191b2ebgw1eyb1uontv4j21w02iou0r.jpg")!
        self.view.addSubnode(imageView)
    }

}

