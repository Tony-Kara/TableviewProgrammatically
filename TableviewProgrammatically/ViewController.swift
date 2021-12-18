//
//  ViewController.swift
//  TableviewProgrammatically
//
//  Created by mac on 12/17/21.
//

import UIKit




class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    

    private  let tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "tony")
        table.register(TableHeader.self, forHeaderFooterViewReuseIdentifier: "tony1")
        table.register(TableFooter.self, forHeaderFooterViewReuseIdentifier: "tony2")
        return table
    }()
    
    private let models = [
        "Model S",
        "Model X",
        "Model Y",
        "Model 3",
        "Model S P90"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(tableview)
        tableview.dataSource = self
        tableview.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return  models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tony", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        return cell
    }
    
    
    // Footer
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard section > 0 else {
            return nil
        }
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: "tony2") 
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return section == 1 ? 100 : 0
    }
    // Header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard section == 0 else {
            return nil
        }

        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "tony1") as? TableHeader
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 200 : 0
    }
    
}

