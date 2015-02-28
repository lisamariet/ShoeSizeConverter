//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Lisa-Marie on 28.02.15.
//  Copyright (c) 2015 Lisa-Marie Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMensShoeSize: UITextField!
    @IBOutlet weak var lblMensConvertedShoeSize: UILabel!
    @IBOutlet weak var txtWomansShoeSize: UITextField!
    @IBOutlet weak var lblWomansConvertedShoeSize: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnConvertPressed(sender: UIButton) {
        
        let enteredShoeSize = txtMensShoeSize.text.toInt()!
        
        //lblMensConvertedShoeSize.text = (enteredShoeSize + 30).description
        lblMensConvertedShoeSize.text = "\(enteredShoeSize + 30) in European size"
        
        lblMensConvertedShoeSize.hidden = false
    }

    @IBAction func btnWomansShoeSizeConvertPressed(sender: UIButton) {
        
        let womansUSShoeSize = Double((txtWomansShoeSize.text as NSString).doubleValue)
        
        lblWomansConvertedShoeSize.text = "\(womansUSShoeSize + 30.5) in European size"
        
        lblWomansConvertedShoeSize.hidden = false
    }
}

