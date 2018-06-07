//
//  TableViewController.swift
//  randommm
//
//  Created by 丹尾 沙也花 on 2018/06/07.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
    var random: Int = 0
    var number: Int = 0
    var numberArray: [Int] = []
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    while random < 30 {
    let number = Int(arc4random_uniform(100))
    
    numberArray.append(number)
    random += 1
    }
    
    tableView.register(UINib(nibName: "TableViewCell", bundle: nil),
    forCellReuseIdentifier: "cell")
    
    tableView.delegate = self
    tableView.dataSource = self
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
    
    cell.label.text = String(numberArray[indexPath.row])
    
    return cell
    }
}
