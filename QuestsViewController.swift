//
//  QuestsViewController.swift
//  NSTableView
//
//  Created by me on 27.10.16.
//  Copyright © 2016 ovmx. All rights reserved.
//

import UIKit

class QuestsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var quests = TIBApps.getAllQuests()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.dataSource = self
       tableView.estimatedRowHeight = 376
       tableView.rowHeight = UITableViewAutomaticDimension
    }

}

extension QuestsViewController : UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return quests.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainQuestsCell") as! QuestTableViewCell
        let quest = quests[indexPath.row]
        cell.quest = quest
        
        return cell
    }
}
