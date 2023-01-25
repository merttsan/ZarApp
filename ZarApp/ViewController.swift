//
//  ViewController.swift
//  ZarApp
//
//  Created by Mert Şan on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var labelTxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            colorChange()
        }
    }
    
    @objc func colorChange () {
        view.backgroundColor = UIColor(red: CGFloat.random(in: 0..<1), green: CGFloat.random(in: 0..<1), blue: CGFloat.random(in: 0..<1), alpha: CGFloat(1))
        labelTxt.textColor = UIColor(red: CGFloat.random(in: 0..<1), green: CGFloat.random(in: 0..<1), blue: CGFloat.random(in: 0..<1), alpha: CGFloat(1))
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        secondVC.modalPresentationStyle = .popover
        present(secondVC, animated: true)
    }
    
}

