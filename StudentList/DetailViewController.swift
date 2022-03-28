//
//  DetailViewController.swift
//  StudentList
//
//  Created by Chris Bond on 3/28/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var studentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
