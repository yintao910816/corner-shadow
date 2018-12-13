//
//  ViewController.swift
//  ShadowAndCornerDemo
//
//  Created by sw on 13/12/2018.
//  Copyright © 2018 sw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bgView.backgroundColor = .clear
        bgView.layer.shadowColor = UIColor.black.cgColor
        bgView.layer.shadowOpacity = 0.5
        bgView.layer.shadowRadius = 5
        
        let path = UIBezierPath.init()
        path.move(to: .init(x: -5, y: -5))
        
        path.addLine(to: .init(x: contentView.frame.size.width + 5, y: -5))
        path.addLine(to: .init(x: contentView.frame.size.width + 5, y: contentView.frame.size.height + 5))
        path.addLine(to: .init(x: -5, y: contentView.frame.size.height + 5))
        path.addLine(to: .init(x: -5, y: -5))

        bgView.layer.shadowPath = path.cgPath
        
        contentView.layer.cornerRadius = 5
        contentView.layer.masksToBounds = true
    }


}

