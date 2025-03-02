//
//  TableViewController.swift
//  Example
//
//  Created by 王笑宇 on 2/27/25.
//

import UIKit

class TableViewController: UITableViewController {

    
    override func viewDidLoad() {
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        return cell!
    }
    



    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ViewController()
        
        navigationController!.pushViewController(vc, animated: true)
    }
}
