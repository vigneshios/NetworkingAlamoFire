//
//  ViewController.swift
//  NwtworkingAlamoFire
//
//  Created by vignesh on 10/19/17.
//  Copyright © 2017 vignesh. All rights reserved.
//

import UIKit

class StarWarsVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var crew = [Crew]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Networking AlomoFire Test")
        
        NetworkingService.shared.getpeople { (response) in
            self.crew = response.crew
            self.tableView.reloadData()
        }
        
    }


}

extension StarWarsVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crew.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "NAME: \(crew[indexPath.row].name)"
        cell.detailTextLabel?.text = "BIRTH YEAR: \(crew[indexPath.row].birthYear)"
        return cell
    }
    
}
