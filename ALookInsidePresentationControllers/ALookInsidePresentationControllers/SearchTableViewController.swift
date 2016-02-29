//
//  SearchTableViewController.swift
//  ALookInsidePresentationControllers
//
//  Created by Simon on 16/2/28.
//  Copyright © 2016年 Simon. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {
    
    var data = ["A", "B", "C", "D", "E"]
    var searchController : UISearchController!
    override func viewDidLoad() {
        super.viewDidLoad()

        configureSearchController()
        
    }
    
    func configureSearchController() {
        let resultTableViewController = ResultTableViewController()
        searchController = UISearchController(searchResultsController: resultTableViewController)
        searchController.searchResultsUpdater = resultTableViewController
        print("searchController: \(searchController)")
        tableView.tableHeaderView = searchController.searchBar
        definesPresentationContext = true
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SearchTableViewControllerCell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }

}


