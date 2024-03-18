//
//  ViewController.swift
//   Collapse tableview cells
//
//  Created by Karthiga on 18/03/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    var selected =  -1
    var iscollapce = false
    var imagearrange = ["img1","img2","img3","img4","img5"]
    var name = ["cutegirl","smile girl","beauty girl","lazy girl","stylish girl"]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.estimatedRowHeight = 243
        table.rowHeight = UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.selected == indexPath.row && iscollapce == true{
           // return 243
            return  450
        }else{
            return 50
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if selected == indexPath.row
        {
            if self.iscollapce == false{
                self.iscollapce == true
            }else{
                self.iscollapce = false
            }
        }else{
            self.iscollapce = true
        }
        self.selected = indexPath.row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)as! TableViewCell
        cell.toplabel.text = name[indexPath.row]
        cell.img.image = UIImage(named: "\(imagearrange[indexPath.row])")
        return cell
    }
}

