//
//  DetailsViewController.swift
//  NavigationBug
//
//  Created by Alex Severyanov on 6/24/19.
//  Copyright © 2019 Alex Severyanov. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

   @IBOutlet var contentTextView: UITextView!
   @IBOutlet var contentTextField: UITextField!

   override func viewDidLoad() {
      super.viewDidLoad()

      DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
         self.contentTextField.becomeFirstResponder()
      }
   }

   override var inputAccessoryView: UIView? {
      return UIView()
   }

   override var canBecomeFirstResponder: Bool {
      return true
   }
}
