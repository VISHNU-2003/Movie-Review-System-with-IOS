//
//  TableViewController.swift
//  Form1
//
//  Created by Student on 31/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var names = ["Man of Steel","Batman Vs Superman","Suicide Squad","Wonder Woman","Justice League","Aquaman","Shazam!","Wonder Woman 1984","The Batman","Black Adam","The Flash"]
    
    @IBOutlet weak var Table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath ) as? CellTableViewCell
       cell?.lbl.text=names[indexPath.row]
        cell?.img.image=UIImage(named: names[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: names[indexPath.row], sender: self)
    }
    

}
