//
//  ViewController.swift
//  MyAlbum
//
//  Created by KeunHyeong on 2020/09/13.
//  Copyright © 2020 KeunHyeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    
    @IBOutlet weak var pricaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    
    @IBAction func btnAction(_ sender: Any) {
        let message = "가격은 \(currentValue)원 입니다"
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler:{ action in
            self.refresh()
        })
        alert.addAction(action)
        present(alert ,animated: true, completion: nil)
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        pricaLabel.text = "\(currentValue)"
    }
}

