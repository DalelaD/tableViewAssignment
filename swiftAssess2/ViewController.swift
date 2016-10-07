 //
//  ViewController.swift
//  swiftAssess2
//
//  Created by BHSRam3 on 10/6/16.
//  Copyright © 2016 BHSRam3. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table1: UITableView!
    
    var rowNum=["Row A", "Row B","Row C","Row D","Row E", "Row F", "Row G", "Row H", "Row I", "Row J", "Row K"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        table1.dataSource=self
        table1.delegate=self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return rowNum.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let cell=UITableViewCell()
        
        cell.textLabel?.text=rowNum[indexPath.row]
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "😡")
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

