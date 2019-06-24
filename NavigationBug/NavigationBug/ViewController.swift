//
//  ViewController.swift
//  NavigationBug
//
//  Created by Alex Severyanov on 6/24/19.
//  Copyright © 2019 Alex Severyanov. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
   }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
   }

   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell")
      if cell == nil {
         cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
      }
      cell.textLabel?.text = String(describing: indexPath)
      return cell
   }

   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
      performSegue(withIdentifier: "details", sender: nil)
   }
}

