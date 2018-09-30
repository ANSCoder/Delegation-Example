//
//  SecondViewController.swift
//  Delegation-Example
//
//  Created by Anand Nimje on 30/09/18.
//  Copyright © 2018 Anand. All rights reserved.
//
//  MIT License
//  Copyright (c) 2018 Anand Nimje
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

/*
protocol DeveloperEntryDelegate: AnyObject {
    func textDeveloperPlatform(_ text: String)
    func textDeveloperLanguage(_ text: String) //optional method
}

//optional method
extension DeveloperEntryDelegate {
    func textDeveloperLanguage(_ text: String){}
} */


protocol DeveloperEntryDelegate: AnyObject {
    func textDeveloperPlatform(_ text: String)
    func textDeveloperLanguage(_ text: String)
}

class SecondViewController: UIViewController {

    weak var delegate: DeveloperEntryDelegate?
    
    @IBOutlet weak var textPlateform: UITextField!
    @IBOutlet weak var textLanguage: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Action Pass back view Details
    @IBAction func actionDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.delegate?.textDeveloperPlatform(textPlateform.text ?? "")
        self.delegate?.textDeveloperLanguage(textLanguage.text ?? "")
    }

}
