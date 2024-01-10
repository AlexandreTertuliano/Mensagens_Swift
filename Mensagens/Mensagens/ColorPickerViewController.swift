//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Gold System on 10/01/24.
//  Copyright © 2024 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class{
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slBlue: UISlider!
    
    @IBOutlet weak var slRed: UISlider!
    
    @IBOutlet weak var slGreen: UISlider!
    
    weak var delegate: ColorPickerDelegate?
    
    @IBAction func chooseColor(_ sender: UIButton) {
        delegate?.applyColor(color: viColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        
    
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    
    
    
}
