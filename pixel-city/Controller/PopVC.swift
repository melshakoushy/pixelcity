//
//  PopVC.swift
//  pixel-city
//
//  Created by Mahmoud Elshakoushy on 4/19/19.
//  Copyright © 2019 Mahmoud Elshakoushy. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    //outlets
    @IBOutlet weak var popImageView: UIImageView!
    //variables
    var passedImage: UIImage!
    
    func initData(image: UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
