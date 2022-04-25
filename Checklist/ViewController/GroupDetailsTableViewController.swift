//
//  GroupDetalsViewController.swift
//  Chechlist
//
//  Created by Сумая on 22/04/22.
//

import UIKit
// TODO:
//1.Отобразит информатицию с помощь массива(прочитать данные из масива)
//создать массив снащими данными
//2.Создать оутлеты или проверить их соединение
//3.

class GroupDetailsTableViewController: UITableViewController {

    var item: [ChecklistIcon] = [
        ChecklistIcon(isChecked: true, name: " walk the dog "),
        ChecklistIcon(isChecked: false, name: " brush the treeth "),
        ChecklistIcon(isChecked: true, name: " IOS development"),
        ChecklistIcon(isChecked: false, name: " Scocer practice "),
        ChecklistIcon(isChecked: true, name: " Eat ice-cream"),
        ChecklistIcon(isChecked: false, name: " Dance in the rain "),
    ]
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = item[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItemCell", for: indexPath) as! CheckListItemTableViewCell
        
        cell.tasck.text = items.name
        cell.check.isHidden = items.isChecked
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
