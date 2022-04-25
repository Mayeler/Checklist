//
//  ViewController.swift
//  Chechlist
//
//  Created by Сумая on 15/04/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    let groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthdays",  imageName: "Birthdays"),
        ChecklistGroup(title: "Groceries", imageName: "Groceries"),
        ChecklistGroup(title: "To Do", imageName: "todopic"),
        ChecklistGroup(title: "Work", imageName: "workpic")
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
        //отображает количество элементов тоесть количество ячеек
        
    }
    //функция будет показывать как будет ввыглядить наша ячейка
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let group = groups[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTableViewCell", for: indexPath) as! GroupTableViewCell
        
        
      //cell.TitleLable.text = group.title
      //cell.IconView.image = UIImage(named: (group.imageName))
        
      
//        let group: ChecklistGroup = groups[indexPath.row]//индекс ячейки или строчки
//        let cell = UITableViewCell()
//        cell.textLabel?.text = group.title
      return cell
    }
    
    
}

