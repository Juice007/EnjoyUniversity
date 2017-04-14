//
//  EURegisterInfoViewController.swift
//  EnjoyUniversity
//
//  Created by lip on 17/4/13.
//  Copyright © 2017年 lip. All rights reserved.
//

import UIKit

class EURegisterInfoViewController: EUBaseViewController {
    
    lazy var participatorlist = UserInfoListViewModel()
    
    let REGISTERCELL = "REGISTERCELL"

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        navitem.title = "签到详情"
        let rightBtn = UIBarButtonItem(title: "结束", style: .plain, target: nil, action: #selector(didClickFinishActivityBtn))
        navitem.rightBarButtonItem = rightBtn
        tableview.tableFooterView = UIView()
        tableview.register(EUActivityMemberCell.self, forCellReuseIdentifier: REGISTERCELL)
        setupTableHeadView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func loadData() {
        
        participatorlist.loadWaitingRegisterMemberInfoList(avid: 1) { (isSuccess, hasMember) in
            
            if !isSuccess{
                SwiftyProgressHUD.showFaildHUD(text: "网络异常", duration: 1)
                return
            }
            
            self.tableview.reloadData()
            self.refreshControl?.endRefreshing()
        }
        
    }
    
}

// MARK: - UI 相关方法
extension EURegisterInfoViewController{
    
    fileprivate func setupTableHeadView(){
        
        let headview = UIView(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width, height: 89))
        headview.backgroundColor = UIColor.white
        
        let registerlabel = UILabel(frame: CGRect(x: 11, y: 22, width: 150, height: 17))
        registerlabel.text = "活动签到"
        registerlabel.textColor = UIColor.init(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
        registerlabel.font = UIFont.boldSystemFont(ofSize: 16)
        headview.addSubview(registerlabel)
        
        let greenpoint = UIImageView(frame: CGRect(x: 11, y: 54, width: 11, height: 11))
        greenpoint.image = UIImage(named: "register_pointgreen")
        headview.addSubview(greenpoint)
        
        let finishednum = UILabel(frame: CGRect(x: 25, y: 51, width: 60, height: 12))
        finishednum.text = "已签到：1"
        finishednum.font = UIFont.boldSystemFont(ofSize: 14)
        finishednum.textColor = UIColor.init(red: 70/255, green: 70/255, blue: 70/255, alpha: 1)
        finishednum.sizeToFit()
        headview.addSubview(finishednum)
        
        let graypoint = UIImageView(frame: CGRect(x: 106, y: 54, width: 11, height: 11))
        graypoint.image = UIImage(named: "register_pointgray")
        headview.addSubview(graypoint)
        
        let notfinishednum = UILabel(frame: CGRect(x: 121, y: 51, width: 60, height: 12))
        notfinishednum.textColor = UIColor.init(red: 70/255, green: 70/255, blue: 70/255, alpha: 1)
        notfinishednum.text = "未签到：2"
        notfinishednum.font = UIFont.boldSystemFont(ofSize: 14)
        notfinishednum.sizeToFit()
        headview.addSubview(notfinishednum)
        
        let qrcodeBtn = UIButton(frame: CGRect(x: UIScreen.main.bounds.width - 60, y: 10, width: 50, height: 50))
        qrcodeBtn.setImage(UIImage(named: "register_qrcode"), for: .normal)
        headview.addSubview(qrcodeBtn)
        
        let codeLabel = UILabel(frame: CGRect(x: UIScreen.main.bounds.width - 60, y: 62, width: 50, height: 12))
        codeLabel.text = "4396"
        codeLabel.textColor = UIColor.init(red: 50/255, green: 50/255, blue: 50/255, alpha: 1)
        codeLabel.textAlignment = .center
        headview.addSubview(codeLabel)
        
        tableview.tableHeaderView = headview
        tableview.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
        
    }
}

/// MARK: - 代理
extension EURegisterInfoViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return participatorlist.waitingRegisterParticipatorList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: REGISTERCELL) as? EUActivityMemberCell ?? EUActivityMemberCell()
        cell.userinfo = participatorlist.waitingRegisterParticipatorList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "尚未签到"
    }
    
}

// MARK: - 监听方法
extension EURegisterInfoViewController{
    
    /// 结束活动
    @objc fileprivate func didClickFinishActivityBtn(){
        
    }
    
}
