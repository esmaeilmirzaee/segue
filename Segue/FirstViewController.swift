//
//  ViewController.swift
//  Segue
//
//  Created by Esmaeil MIRZAEE on 10/25/19.
//  Copyright © 2019 Esmaeil MIRZAEE. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, ResponseBack {

  @IBOutlet weak var senderTextField: UITextField!
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func sendButtonPressed(_ sender: UIButton) {
    performSegue(withIdentifier: "SendTextToSecondController", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "SendTextToSecondController" {
      let secondViewController = segue.destination as! SecondUIViewController
      view.backgroundColor = UIColor.black
      secondViewController.recievedText = senderTextField.text!
      secondViewController.delegate = self
    }
  }
  
  func yourResponse(text: String) {
    label.text = text
  }

}

