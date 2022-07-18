//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Jackie Wong on 7/18/22.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = TableViewController()
    
  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var importantSwitch: UISwitch!

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func addTapped(_ sender: Any) {
      let toDo = ToDo()

        if let titleText = titleTextField.text {
          toDo.name = titleText
          toDo.important = importantSwitch.isOn
        }
      previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
      navigationController?.popViewController(animated: true)
      
  }

}
