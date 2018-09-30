//
//  SecondViewController.swift
//  Delegation-Example
//
//  Created by Anand Nimje on 30/09/18.
//  Copyright © 2018 Anand. All rights reserved.
//

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
