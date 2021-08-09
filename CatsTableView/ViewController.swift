//
//  ViewController.swift
//  CatsTableView
//
//  Created by Ana Lucia Fermino de O. Arine on 19/07/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let elements = ["Amarelo", "Branco", "P&B", "David", "Django", "Amarelo", "Branco", "P&B", "David", "Django"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 6
        cell.catImage.layer.cornerRadius = cell.catImage.frame.height / 6
        
        cell.animalName.text = elements[indexPath.row]
        cell.catImage.image = UIImage(named: elements[indexPath.row])
        
        return cell
        
    }

}

