//
//  FirstViewController.swift
//  Delegation-Example
//
//  Created by Anand Nimje on 30/09/18.
//  Copyright © 2018 Anand. All rights reserved.
//

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
