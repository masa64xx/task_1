//
//  FirstViewController.swift
//  task
//
//  Created by 村上 雅典 on 2015/06/26.
//  Copyright (c) 2015年 村上 雅典. All rights reserved.
//ta

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //UItabledatasource.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->
        UITableViewCell{
        
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
            cell.text = taskMgr.tasks[indexPath.row].name
            cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
            
            return cell
    }
}


