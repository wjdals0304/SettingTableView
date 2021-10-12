//
//  SettingTableViewController.swift
//  SettingTableView
//
//  Created by 김정민 on 2021/10/12.
//

import UIKit

class SettingTableViewController: UITableViewController {

    let sectionTitles:[String] = ["전체 설정","개인 설정","기타"]
    let allSettings: [String] = ["공지사항","실험실","버전 정보"]
    let privateSettings: [String] = ["개인/보안","알림","채팅","멀티프로필"]
    let etcs: [String] = ["고객센터/도움말"]
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var titleView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = .black
        titleView.backgroundColor = .black
        
        titleLabel.textColor = .white
        titleLabel.text = "설정"
        
        self.tableView.separatorStyle = .singleLine
        self.tableView.separatorColor = .gray
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 3
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return allSettings.count
        } else if section == 1 {
            return privateSettings.count
        } else if section == 2 {
            return etcs.count
        } else {
            return 0
        }
        
    }

    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        returnedView.backgroundColor = .black
         
        let label = UILabel(frame: CGRect(x: 20 , y: -10, width: 150, height: 40))
        label.text = self.sectionTitles[section]
        label.textColor = .gray
        returnedView.addSubview(label)

        return returnedView
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell") else {
            return UITableViewCell()
        }
        
        if indexPath.section == 0 {
            cell.textLabel?.text = "\(allSettings[indexPath.row])"
            cell.backgroundColor = .black
            cell.textLabel?.textColor = .white
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "\(privateSettings[indexPath.row])"
            cell.backgroundColor = .black
            cell.textLabel?.textColor = .white
        } else if indexPath.section == 2 {
            cell.textLabel?.text = "\(etcs[indexPath.row])"
            cell.backgroundColor = .black
            cell.textLabel?.textColor = .white
        }
        
        return cell
        
    }
    
    
    
}
