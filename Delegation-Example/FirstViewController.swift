//
//  FirstViewController.swift
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

class FirstViewController: UIViewController {
    
    @IBOutlet weak var labelPlatformDetails: UILabel!
    @IBOutlet weak var labelDeveloperLanguage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Navigation
    @IBAction func actionAddDetail(_ sender: UIButton) {
        guard  let secondView = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            fatalError("View Controller not found")
        }
        secondView.delegate = self //Protocol conformation here
        navigationController?.pushViewController(secondView, animated: true)
    }
    
}

//MARK: - Protocol Delegate Methods
extension FirstViewController: DeveloperEntryDelegate{
    
    func textDeveloperPlatform(_ text: String) {
        print(text)
        labelPlatformDetails.text = "Platform: \(text)"
    }
    
    func textDeveloperLanguage(_ text: String) {
        print(text)
        labelDeveloperLanguage.text = "Language: \(text)"
    }
}
