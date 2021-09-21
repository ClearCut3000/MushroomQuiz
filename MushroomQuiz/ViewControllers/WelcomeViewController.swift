//
//  ViewController.swift
//  MushroomQuiz
//
//  Created by Николай Никитин on 16.09.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "mushroomBack.png")!)
    }
    
    
    @IBAction func unwind (_ seque: UIStoryboardSegue){
        print( #line, #function)
    }
    
}

