//
//  ViewController.swift
//  Segue
//
//  Created by Esmaeil MIRZAEE on 10/25/19.
//  Copyright © 2019 Esmaeil MIRZAEE. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  @IBOutlet weak var senderTextField: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func sendButtonPressed(_ sender: UIButton) {
    performSegue(withIdentifier: "secondViewController", sender: self)
  }
  

}

