//
//  ViewController.swift
//  StudentList
//
//  Created by Chris Bond on 3/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var students = ["Mahad Abdi",
                    "Chloe Atha",
                    "Kevork Atinizian",
                    "Philip Belmonte",
                    "Christopher Bond",
                    "Qingwan Cheng",
                    "Timothy Chin",
                    "Aleksej Cupic",
                    "Sean Curley",
                    "Ann DeMilt",
                    "Bridget Falkenhayn",
                    "John Fenton",
                    "Owen Flanagan",
                    "Erik Fotta",
                    "Rosemary Gellene",
                    "Sean Heller",
                    "Daniel Hong",
                    "Kathy Kim",
                    "Minji Kim",
                    "Kevin Koh",
                    "Rachel Lee",
                    "Michael Li",
                    "Jason Liu",
                    "Derek Marble",
                    "Max Montes Soza",
                    "Danielle O'Connor",
                    "Alex Park",
                    "Daniel Park",
                    "Junseo Park",
                    "Evan Sepe",
                    "Dominic Severo",
                    "Shrey Sharma",
                    "Santiago Silvani",
                    "Rhett Somers",
                    "Jack Standefer",
                    "Peter Torchio",
                    "Ella Walsh",
                    "Pace Williams",
                    "Xiao Tong Yu"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection was called returning \(students.count)")
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("CellForRowAt is buildingcell at indexPath.row \(indexPath.row) with \(students[indexPath.row])")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = students[indexPath.row]
        return cell
    }
}

