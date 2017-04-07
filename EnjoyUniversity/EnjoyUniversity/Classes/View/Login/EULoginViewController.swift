//
//  EULoginViewController.swift
//  EnjoyUniversity
//
//  Created by lip on 17/4/6.
//  Copyright © 2017年 lip. All rights reserved.
//

import UIKit

class EULoginViewController: UIViewController {
    
    /// 隐藏状态栏
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    let scal = UIScreen.main.scale

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPasswordView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

// MARK: - UI 相关方法
extension EULoginViewController{
    
    fileprivate func setupPhoneView(){
        
        let phoneview = UIView(frame: view.frame)
        phoneview.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        view.addSubview(phoneview)
        
        let phoneimg = UIImageView(image: UIImage(named: "login_phone"))
        phoneview.addSubview(phoneimg)
        
        let firstlabel = UILabel()
        firstlabel.text = "输入手机号"
        firstlabel.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        firstlabel.font = UIFont.boldSystemFont(ofSize: 24)
        firstlabel.sizeToFit()
        phoneview.addSubview(firstlabel)
        
        let secondlabel = UILabel()
        secondlabel.text = "为方便通讯，请输入手机号"
        secondlabel.textColor = UIColor.init(red: 132/255, green: 132/255, blue: 132/255, alpha: 1)
        secondlabel.font = UIFont.boldSystemFont(ofSize: 14)
        secondlabel.sizeToFit()
        phoneview.addSubview(secondlabel)
        
        let lineview = UIView()
        lineview.backgroundColor = UIColor.init(red: 200/255, green: 199/255, blue: 204/255, alpha: 1)
        phoneview.addSubview(lineview)
        
        let china = UIImageView(image: UIImage(named: "login_china"))
        phoneview.addSubview(china)
        
        let moreimg = UIImageView(image: UIImage(named: "login_more"))
        phoneview.addSubview(moreimg)
        
        let placelabel = UILabel()
        placelabel.text = "+86"
        placelabel.font = UIFont.boldSystemFont(ofSize: 12)
        placelabel.textColor = UIColor.init(red: 102/255, green: 102/255, blue: 102/255, alpha: 1)
        placelabel.sizeToFit()
        phoneview.addSubview(placelabel)
        
        let phonetextfield = UITextField()
        phonetextfield.keyboardType = .phonePad
        phonetextfield.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        phonetextfield.font = UIFont.boldSystemFont(ofSize: 18)
        phonetextfield.borderStyle = .none
        phoneview.addSubview(phonetextfield)
        
        let nextBtn = UIButton()
        nextBtn.setTitle("下一步", for: .normal)
        nextBtn.setTitleColor(UIColor.init(red: 132/255, green: 132/255, blue: 132/255, alpha: 1), for: .normal)
        nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        nextBtn.sizeToFit()
        nextBtn.addTarget(nil, action: #selector(didClickNexTBtn), for: .touchUpInside)
        phoneview.addSubview(nextBtn)
        
        // 自动布局
        phoneimg.translatesAutoresizingMaskIntoConstraints = false
        firstlabel.translatesAutoresizingMaskIntoConstraints = false
        secondlabel.translatesAutoresizingMaskIntoConstraints = false
        lineview.translatesAutoresizingMaskIntoConstraints = false
        china.translatesAutoresizingMaskIntoConstraints = false
        moreimg.translatesAutoresizingMaskIntoConstraints = false
        placelabel.translatesAutoresizingMaskIntoConstraints = false
        phonetextfield.translatesAutoresizingMaskIntoConstraints = false
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        phoneview.addConstraint(NSLayoutConstraint(item: phoneimg,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: phoneview,
                                                   attribute: .top,
                                                   multiplier: 1.0,
                                                   constant: 53))
        phoneview.addConstraint(NSLayoutConstraint(item: phoneimg,
                                                   attribute: .centerX,
                                                   relatedBy: .equal,
                                                   toItem: phoneview,
                                                   attribute: .centerX,
                                                   multiplier: 1.0,
                                                   constant: 0))
        // 输入手机号
        phoneview.addConstraint(NSLayoutConstraint(item: firstlabel,
                                                  attribute: .top,
                                                  relatedBy: .equal,
                                                  toItem: phoneimg,
                                                  attribute: .bottom,
                                                  multiplier: 1.0,
                                                  constant: 12 * scal))
        phoneview.addConstraint(NSLayoutConstraint(item: firstlabel,
                                                  attribute: .centerX,
                                                  relatedBy: .equal,
                                                  toItem: phoneview,
                                                  attribute: .centerX,
                                                  multiplier: 1.0,
                                                  constant: 0))
        // 为什么要输入手机号
        phoneview.addConstraint(NSLayoutConstraint(item: secondlabel,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: firstlabel,
                                                   attribute: .bottom,
                                                   multiplier: 1.0,
                                                   constant: 6 * scal))
        phoneview.addConstraint(NSLayoutConstraint(item: secondlabel,
                                                   attribute: .centerX,
                                                   relatedBy: .equal,
                                                   toItem: phoneview,
                                                   attribute: .centerX,
                                                   multiplier: 1.0,
                                                   constant: 0))
        // 线
        phoneview.addConstraints([NSLayoutConstraint(item: lineview,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: secondlabel,
                                                     attribute: .bottom,
                                                     multiplier: 1.0,
                                                     constant: scal * 38),
                                  NSLayoutConstraint(item: lineview,
                                                     attribute: .centerX,
                                                     relatedBy: .equal,
                                                     toItem: phoneview,
                                                     attribute: .centerX,
                                                     multiplier: 1.0,
                                                     constant: 0)])
        lineview.addConstraints([NSLayoutConstraint(item: lineview,
                                                          attribute: .width,
                                                          relatedBy: .equal,
                                                          toItem: nil,
                                                          attribute: .notAnAttribute,
                                                          multiplier: 1.0,
                                                          constant: scal * 130.0),
                                       NSLayoutConstraint(item: lineview,
                                                          attribute: .height,
                                                          relatedBy: .equal,
                                                          toItem: nil,
                                                          attribute: .notAnAttribute,
                                                          multiplier: 1.0,
                                                          constant: 0.5)])
        // 中国 
        phoneview.addConstraints([NSLayoutConstraint(item: china,
                                                     attribute: .left,
                                                     relatedBy: .equal,
                                                     toItem: lineview,
                                                     attribute: .left,
                                                     multiplier: 1.0,
                                                     constant: 0),
                                  NSLayoutConstraint(item: china,
                                                     attribute: .bottom,
                                                     relatedBy: .equal,
                                                     toItem: lineview,
                                                     attribute: .top,
                                                     multiplier: 1.0,
                                                     constant: -scal * 5)])
        china.addConstraints([NSLayoutConstraint(item: china,
                                                    attribute: .width,
                                                    relatedBy: .equal,
                                                    toItem: nil,
                                                    attribute: .notAnAttribute,
                                                    multiplier: 1.0,
                                                    constant: scal * 13),
                                 NSLayoutConstraint(item: china,
                                                    attribute: .height,
                                                    relatedBy: .equal,
                                                    toItem: nil,
                                                    attribute: .notAnAttribute,
                                                    multiplier: 1.0,
                                                    constant: scal * 9)])
        // 小箭头
        phoneview.addConstraints([NSLayoutConstraint(item: moreimg,
                                                     attribute: .left,
                                                     relatedBy: .equal,
                                                     toItem: china,
                                                     attribute: .right,
                                                     multiplier: 1.0,
                                                     constant: scal * 2),
                                  NSLayoutConstraint(item: moreimg,
                                                     attribute: .centerY,
                                                     relatedBy: .equal,
                                                     toItem: china,
                                                     attribute: .centerY,
                                                     multiplier: 1.0,
                                                     constant: 0)])
        moreimg.addConstraints([NSLayoutConstraint(item: moreimg,
                                                 attribute: .width,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1.0,
                                                 constant: scal * 3),
                              NSLayoutConstraint(item: moreimg,
                                                 attribute: .height,
                                                 relatedBy: .equal,
                                                 toItem: nil,
                                                 attribute: .notAnAttribute,
                                                 multiplier: 1.0,
                                                 constant: scal * 5)])
        // +86
        phoneview.addConstraints([NSLayoutConstraint(item: placelabel,
                                                     attribute: .left,
                                                     relatedBy: .equal,
                                                     toItem: moreimg,
                                                     attribute: .right,
                                                     multiplier: 1.0,
                                                     constant: scal * 4),
                                  NSLayoutConstraint(item: placelabel,
                                                     attribute: .centerY,
                                                     relatedBy: .equal,
                                                     toItem: china,
                                                     attribute: .centerY,
                                                     multiplier: 1.0,
                                                     constant: 0)])

        // 手机号输入框
        phoneview.addConstraints([NSLayoutConstraint(item: phonetextfield,
                                                     attribute: .bottom,
                                                     relatedBy: .equal,
                                                     toItem: lineview,
                                                     attribute: .top,
                                                     multiplier: 1.0,
                                                     constant: -scal * 5),
                                  NSLayoutConstraint(item: phonetextfield,
                                                     attribute: .left,
                                                     relatedBy: .equal,
                                                     toItem: placelabel,
                                                     attribute: .right,
                                                     multiplier: 1.0,
                                                     constant: scal * 5)])
        phonetextfield.addConstraints([NSLayoutConstraint(item: phonetextfield,
                                                   attribute: .width,
                                                   relatedBy: .equal,
                                                   toItem: nil,
                                                   attribute: .notAnAttribute,
                                                   multiplier: 1.0,
                                                   constant: scal * 80),
                                NSLayoutConstraint(item: phonetextfield,
                                                   attribute: .height,
                                                   relatedBy: .equal,
                                                   toItem: nil,
                                                   attribute: .notAnAttribute,
                                                   multiplier: 1.0,
                                                   constant: scal * 10)])
        // 下一步按钮
        phoneview.addConstraints([NSLayoutConstraint(item: nextBtn,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: lineview,
                                                     attribute: .bottom,
                                                     multiplier: 1.0,
                                                     constant: scal * 32),
                                  NSLayoutConstraint(item: nextBtn,
                                                     attribute: .centerX,
                                                     relatedBy: .equal,
                                                     toItem: phoneview,
                                                     attribute: .centerX,
                                                     multiplier: 1.0,
                                                     constant: 0)])

        
        
    }
    
    fileprivate func setupPasswordView(){
        
        let passwordview = UIView(frame: view.frame)
        passwordview.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        view.addSubview(passwordview)
        
        let phoneimg = UIImageView(image: UIImage(named: "login_phone"))
        passwordview.addSubview(phoneimg)
        
        let firstlabel = UILabel()
        firstlabel.text = "输入登录密码"
        firstlabel.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        firstlabel.font = UIFont.boldSystemFont(ofSize: 24)
        firstlabel.sizeToFit()
        passwordview.addSubview(firstlabel)
        
        let secondlabel = UILabel()
        secondlabel.text = "请输入一个安全的密码"
        secondlabel.textColor = UIColor.init(red: 132/255, green: 132/255, blue: 132/255, alpha: 1)
        secondlabel.font = UIFont.boldSystemFont(ofSize: 14)
        secondlabel.sizeToFit()
        passwordview.addSubview(secondlabel)
        
        let lineview = UIView()
        lineview.backgroundColor = UIColor.init(red: 200/255, green: 199/255, blue: 204/255, alpha: 1)
        passwordview.addSubview(lineview)
        
        
        
        let passwordtextfield = UITextField()
        passwordtextfield.keyboardType = .default
        passwordtextfield.isSecureTextEntry = true
        passwordtextfield.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        passwordtextfield.font = UIFont.boldSystemFont(ofSize: 20)
        passwordtextfield.borderStyle = .none
        passwordtextfield.contentHorizontalAlignment = .center
        passwordtextfield.textAlignment = .center
        passwordview.addSubview(passwordtextfield)
        
        let forgetpwdBtn = UIButton()
        forgetpwdBtn.setTitle("忘记密码 >", for: .normal)
        forgetpwdBtn.setTitleColor(UIColor.init(red: 120/255, green: 120/255, blue: 120/255, alpha: 1), for: .normal)
        forgetpwdBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        forgetpwdBtn.addTarget(nil, action: #selector(didClickForgetBtn), for: .touchUpInside)
        forgetpwdBtn.sizeToFit()
        passwordview.addSubview(forgetpwdBtn)
        
        let nextBtn = UIButton()
        nextBtn.setTitle("登陆", for: .normal)
        nextBtn.setTitleColor(UIColor.init(red: 132/255, green: 132/255, blue: 132/255, alpha: 1), for: .normal)
        nextBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        nextBtn.addTarget(nil, action: #selector(didClickLoginBtn), for: .touchUpInside)
        nextBtn.sizeToFit()
        passwordview.addSubview(nextBtn)
        
        let backBtn = UIButton(frame: CGRect(x: 10, y: 18, width: 18, height: 18))
        backBtn.setImage(UIImage(named: "login_back"), for: .normal)
        backBtn.addTarget(nil, action: #selector(didClickBackBtn), for: .touchUpInside)
        passwordview.addSubview(backBtn)
        
        // 自动布局
        phoneimg.translatesAutoresizingMaskIntoConstraints = false
        firstlabel.translatesAutoresizingMaskIntoConstraints = false
        secondlabel.translatesAutoresizingMaskIntoConstraints = false
        lineview.translatesAutoresizingMaskIntoConstraints = false
        passwordtextfield.translatesAutoresizingMaskIntoConstraints = false
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
        forgetpwdBtn.translatesAutoresizingMaskIntoConstraints = false
        
        
        passwordview.addConstraint(NSLayoutConstraint(item: phoneimg,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: passwordview,
                                                   attribute: .top,
                                                   multiplier: 1.0,
                                                   constant: 53))
        passwordview.addConstraint(NSLayoutConstraint(item: phoneimg,
                                                   attribute: .centerX,
                                                   relatedBy: .equal,
                                                   toItem: passwordview,
                                                   attribute: .centerX,
                                                   multiplier: 1.0,
                                                   constant: 0))
        // 输入密码
        passwordview.addConstraint(NSLayoutConstraint(item: firstlabel,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: phoneimg,
                                                   attribute: .bottom,
                                                   multiplier: 1.0,
                                                   constant: 12 * scal))
        passwordview.addConstraint(NSLayoutConstraint(item: firstlabel,
                                                   attribute: .centerX,
                                                   relatedBy: .equal,
                                                   toItem: passwordview,
                                                   attribute: .centerX,
                                                   multiplier: 1.0,
                                                   constant: 0))
        // 输入强度优秀的密码
        passwordview.addConstraint(NSLayoutConstraint(item: secondlabel,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: firstlabel,
                                                   attribute: .bottom,
                                                   multiplier: 1.0,
                                                   constant: 6 * scal))
        passwordview.addConstraint(NSLayoutConstraint(item: secondlabel,
                                                   attribute: .centerX,
                                                   relatedBy: .equal,
                                                   toItem: passwordview,
                                                   attribute: .centerX,
                                                   multiplier: 1.0,
                                                   constant: 0))
        // 线
        passwordview.addConstraints([NSLayoutConstraint(item: lineview,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: secondlabel,
                                                     attribute: .bottom,
                                                     multiplier: 1.0,
                                                     constant: scal * 38),
                                  NSLayoutConstraint(item: lineview,
                                                     attribute: .centerX,
                                                     relatedBy: .equal,
                                                     toItem: passwordview,
                                                     attribute: .centerX,
                                                     multiplier: 1.0,
                                                     constant: 0)])
        lineview.addConstraints([NSLayoutConstraint(item: lineview,
                                                    attribute: .width,
                                                    relatedBy: .equal,
                                                    toItem: nil,
                                                    attribute: .notAnAttribute,
                                                    multiplier: 1.0,
                                                    constant: scal * 130.0),
                                 NSLayoutConstraint(item: lineview,
                                                    attribute: .height,
                                                    relatedBy: .equal,
                                                    toItem: nil,
                                                    attribute: .notAnAttribute,
                                                    multiplier: 1.0,
                                                    constant: 0.5)])
        
        // 密码输入区
        passwordview.addConstraints([NSLayoutConstraint(item: passwordtextfield,
                                                     attribute: .bottom,
                                                     relatedBy: .equal,
                                                     toItem: lineview,
                                                     attribute: .top,
                                                     multiplier: 1.0,
                                                     constant: -scal * 5),
                                  NSLayoutConstraint(item: passwordtextfield,
                                                     attribute: .centerX,
                                                     relatedBy: .equal,
                                                     toItem: passwordview,
                                                     attribute: .centerX,
                                                     multiplier: 1.0,
                                                     constant: 0)])
        passwordtextfield.addConstraints([NSLayoutConstraint(item: passwordtextfield,
                                                          attribute: .width,
                                                          relatedBy: .equal,
                                                          toItem: nil,
                                                          attribute: .notAnAttribute,
                                                          multiplier: 1.0,
                                                          constant: scal * 100),
                                       NSLayoutConstraint(item: passwordtextfield,
                                                          attribute: .height,
                                                          relatedBy: .equal,
                                                          toItem: nil,
                                                          attribute: .notAnAttribute,
                                                          multiplier: 1.0,
                                                          constant: scal * 15)])
        // 忘记密码按钮
        passwordview.addConstraints([NSLayoutConstraint(item: forgetpwdBtn,
                                                        attribute: .top,
                                                        relatedBy: .equal,
                                                        toItem: lineview,
                                                        attribute: .bottom,
                                                        multiplier: 1.0,
                                                        constant: scal * 7),
                                     NSLayoutConstraint(item: forgetpwdBtn,
                                                        attribute: .centerX,
                                                        relatedBy: .equal,
                                                        toItem: passwordview,
                                                        attribute: .centerX,
                                                        multiplier: 1.0,
                                                        constant: 0)])
        // 下一步按钮
        passwordview.addConstraints([NSLayoutConstraint(item: nextBtn,
                                                     attribute: .top,
                                                     relatedBy: .equal,
                                                     toItem: lineview,
                                                     attribute: .bottom,
                                                     multiplier: 1.0,
                                                     constant: scal * 32),
                                  NSLayoutConstraint(item: nextBtn,
                                                     attribute: .centerX,
                                                     relatedBy: .equal,
                                                     toItem: passwordview,
                                                     attribute: .centerX,
                                                     multiplier: 1.0,
                                                     constant: 0)])

    }
    
    fileprivate func setupCodeUI(){
        
        let codeview = UIView(frame: view.frame)
        codeview.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        view.addSubview(codeview)
        
        let phoneimg = UIImageView(image: UIImage(named: "login_phone"))
        codeview.addSubview(phoneimg)
        
        let firstlabel = UILabel()
        firstlabel.text = "输入验证码"
        firstlabel.textColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        firstlabel.font = UIFont.boldSystemFont(ofSize: 24)
        firstlabel.sizeToFit()
        codeview.addSubview(firstlabel)
        
        let secondlabel = UILabel()
        secondlabel.text = "15061883391 55秒后重发"
        secondlabel.textColor = UIColor.init(red: 132/255, green: 132/255, blue: 132/255, alpha: 1)
        secondlabel.font = UIFont.boldSystemFont(ofSize: 14)
        secondlabel.sizeToFit()
        codeview.addSubview(secondlabel)
        
        let correctlabel = UILabel()
        correctlabel.text = "请输入正确的验证码"
        correctlabel.textColor = UIColor.init(red: 1, green: 82/255, blue: 93/255, alpha: 1)
        correctlabel.font = UIFont.boldSystemFont(ofSize: 10)
        correctlabel.sizeToFit()
        codeview.addSubview(correctlabel)
        
        let verifycode = SwiftyVerificationCodeView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        codeview.addSubview(verifycode)
        
        let warnlabel1 = UILabel()
        warnlabel1.text = "输入即表示同意"
        warnlabel1.font = UIFont.boldSystemFont(ofSize: 11)
        warnlabel1.textColor = UIColor.init(red: 181/255, green: 181/255, blue: 181/255, alpha: 1)
        warnlabel1.sizeToFit()
        codeview.addSubview(warnlabel1)
        
        let warnlabel2 = UILabel()
        warnlabel2.text = "《法律声明及隐私政策》"
        warnlabel2.font = UIFont.boldSystemFont(ofSize: 11)
        warnlabel2.textColor = UIColor.init(red: 252/255, green: 152/255, blue: 94/255, alpha: 1)
        warnlabel2.sizeToFit()
        codeview.addSubview(warnlabel2)
        
        let backBtn = UIButton(frame: CGRect(x: 10, y: 18, width: 18, height: 18))
        backBtn.setImage(UIImage(named: "login_back"), for: .normal)
        backBtn.addTarget(nil, action: #selector(didClickBackBtn), for: .touchUpInside)
        codeview.addSubview(backBtn)
        
        // 自动布局
        phoneimg.translatesAutoresizingMaskIntoConstraints = false
        firstlabel.translatesAutoresizingMaskIntoConstraints = false
        secondlabel.translatesAutoresizingMaskIntoConstraints = false
        correctlabel.translatesAutoresizingMaskIntoConstraints = false
        verifycode.translatesAutoresizingMaskIntoConstraints = false
        warnlabel1.translatesAutoresizingMaskIntoConstraints = false
        warnlabel2.translatesAutoresizingMaskIntoConstraints = false
        
        codeview.addConstraint(NSLayoutConstraint(item: phoneimg,
                                                      attribute: .top,
                                                      relatedBy: .equal,
                                                      toItem: codeview,
                                                      attribute: .top,
                                                      multiplier: 1.0,
                                                      constant: 53))
        codeview.addConstraint(NSLayoutConstraint(item: phoneimg,
                                                      attribute: .centerX,
                                                      relatedBy: .equal,
                                                      toItem: codeview,
                                                      attribute: .centerX,
                                                      multiplier: 1.0,
                                                      constant: 0))
        // 输入验证码
        codeview.addConstraint(NSLayoutConstraint(item: firstlabel,
                                                      attribute: .top,
                                                      relatedBy: .equal,
                                                      toItem: phoneimg,
                                                      attribute: .bottom,
                                                      multiplier: 1.0,
                                                      constant: 12 * scal))
        codeview.addConstraint(NSLayoutConstraint(item: firstlabel,
                                                      attribute: .centerX,
                                                      relatedBy: .equal,
                                                      toItem: codeview,
                                                      attribute: .centerX,
                                                      multiplier: 1.0,
                                                      constant: 0))
        // 手机号 重发
        codeview.addConstraint(NSLayoutConstraint(item: secondlabel,
                                                      attribute: .top,
                                                      relatedBy: .equal,
                                                      toItem: firstlabel,
                                                      attribute: .bottom,
                                                      multiplier: 1.0,
                                                      constant: 6 * scal))
        codeview.addConstraint(NSLayoutConstraint(item: secondlabel,
                                                      attribute: .centerX,
                                                      relatedBy: .equal,
                                                      toItem: codeview,
                                                      attribute: .centerX,
                                                      multiplier: 1.0,
                                                      constant: 0))
        // 验证码错误
        codeview.addConstraint(NSLayoutConstraint(item: correctlabel,
                                                  attribute: .top,
                                                  relatedBy: .equal,
                                                  toItem: secondlabel,
                                                  attribute: .bottom,
                                                  multiplier: 1.0,
                                                  constant: 6 * scal))
        codeview.addConstraint(NSLayoutConstraint(item: correctlabel,
                                                  attribute: .centerX,
                                                  relatedBy: .equal,
                                                  toItem: codeview,
                                                  attribute: .centerX,
                                                  multiplier: 1.0,
                                                  constant: 0))
        // 验证码输入框
        codeview.addConstraints([NSLayoutConstraint(item: verifycode,
                                                  attribute: .top,
                                                  relatedBy: .equal,
                                                  toItem: correctlabel,
                                                  attribute: .bottom,
                                                  multiplier: 1.0,
                                                  constant: 15 * scal),
                                 NSLayoutConstraint(item: verifycode,
                                                    attribute: .centerX,
                                                    relatedBy: .equal,
                                                    toItem: codeview,
                                                    attribute: .centerX,
                                                    multiplier: 1.0,
                                                    constant: 0)])
        verifycode.addConstraints([NSLayoutConstraint(item: verifycode,
                                                     attribute: .width,
                                                     relatedBy: .equal,
                                                     toItem: nil,
                                                     attribute: .notAnAttribute,
                                                     multiplier: 1.0,
                                                     constant: UIScreen.main.bounds.width),
                                  NSLayoutConstraint(item:  verifycode,
                                                     attribute: .height,
                                                     relatedBy: .equal,
                                                     toItem: nil,
                                                     attribute: .notAnAttribute,
                                                     multiplier: 1.0,
                                                     constant: 50)])
        // 输入即表示同意
        codeview.addConstraint(NSLayoutConstraint(item: warnlabel1,
                                                  attribute: .top,
                                                  relatedBy: .equal,
                                                  toItem: correctlabel,
                                                  attribute: .bottom,
                                                  multiplier: 1.0,
                                                  constant: 63 * scal))
        codeview.addConstraint(NSLayoutConstraint(item: warnlabel1,
                                                  attribute: .left,
                                                  relatedBy: .equal,
                                                  toItem: codeview,
                                                  attribute: .left,
                                                  multiplier: 1.0,
                                                  constant: 44 * scal))
        // 法律政策
        codeview.addConstraint(NSLayoutConstraint(item: warnlabel2,
                                                  attribute: .top,
                                                  relatedBy: .equal,
                                                  toItem: correctlabel,
                                                  attribute: .bottom,
                                                  multiplier: 1.0,
                                                  constant: 63 * scal))
        codeview.addConstraint(NSLayoutConstraint(item: warnlabel2,
                                                  attribute: .left,
                                                  relatedBy: .equal,
                                                  toItem: warnlabel1,
                                                  attribute: .right,
                                                  multiplier: 1.0,
                                                  constant: 2 * scal))

       
        
    }
    
}

// MARK: - 代理方法
extension EULoginViewController:SwiftyVerificationCodeViewDelegate{
    
    func verificationCodeDidFinishedInput(code: String) {
        
        //FIXME: - 网络请求二维码
        
    }
    
    
}

// MARK: - 监听方法
extension EULoginViewController{
    
    /// 返回按钮监听 返回到输入手机号层
    @objc fileprivate func didClickBackBtn(){
        
    }

    /// 下一步 输入手机号->下一个页面
    @objc fileprivate func didClickNexTBtn(){
        
    }
    
    /// 登陆
    @objc fileprivate func didClickLoginBtn(){
        
    }
    
    /// 忘记密码
    @objc fileprivate func didClickForgetBtn(){
        
    }
    
}
