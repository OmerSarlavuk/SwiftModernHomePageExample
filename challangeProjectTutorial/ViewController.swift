//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let topC                = topViewComponent()
    private let c1                  = cardViewComponent()
    private let c2                  = cardViewComponent()
    private let c3                  = cardViewComponent()
    private let pc                  = profilesViewComponent()
    private let tabBarView          = tabBarViewComponent()
    private let text1               = UILabel()
    private let button1             = UIButton()
    private let text2               = UILabel()
    private let button2             = UIButton()
    private let view1               = UIView()
    private let view2               = UIView()
    private let label1              = UILabel()
    private let label2              = UILabel()
    private let line                = UIView()
    private let profileImage1       = UIImageView()
    private let text11              = UILabel()
    private let text22              = UILabel()
    private let kk                  = UIView()
    private let scrollView          = UIScrollView()
    private let genelView           = UIView()
    private let containerView       = UIView()
    private let scrollContainerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.addSubview(topC)
        view.addSubview(scrollContainerView)
        scrollContainerView.addSubview(scrollView)
        scrollView.addSubview(containerView)
        containerView.addSubview(text1)
        containerView.addSubview(button1)
        containerView.addSubview(c1)
        containerView.addSubview(c2)
        containerView.addSubview(c3)
        containerView.addSubview(text2)
        containerView.addSubview(button2)
        containerView.addSubview(pc)
        containerView.addSubview(view1)
        view1.addSubview(view2)
        view2.addSubview(label1)
        view2.addSubview(kk)
        view1.addSubview(label2)
        containerView.addSubview(line)
        containerView.addSubview(profileImage1)
        containerView.addSubview(text11)
        containerView.addSubview(text22)
        view.addSubview(tabBarView)
        setUI()
        setupConstraints()
    }
    
    private func setUI() {
        text1.text                       = "Upcoming consultations"
        text1.font                       = .boldSystemFont(ofSize: 20)
        text2.text                       = "Patient Profiles"
        text2.font                       = .boldSystemFont(ofSize: 20)
        c1.backgroundColor               = .s1
        c2.backgroundColor               = .s2
        c3.backgroundColor               = .s2
        c1.layer.cornerRadius            = 15
        c2.layer.cornerRadius            = 15
        c3.layer.cornerRadius            = 15
        label1.text                      = "Last enquiries"
        label1.textColor                 = .white
        label2.text                      = "Reports"
        label1.font                      = .systemFont(ofSize: 18)
        label2.font                      = .systemFont(ofSize: 18)
        label1.textAlignment             = .center
        label2.textAlignment             = .center
        view1.layer.cornerRadius         = 30
        view2.layer.cornerRadius         = 15
        view1.backgroundColor            = .s2
        view2.backgroundColor            = .s1
        profileImage1.layer.cornerRadius = 26
        profileImage1.contentMode        = .scaleAspectFit
        line.backgroundColor             = .s3
        text11.font                      = .boldSystemFont(ofSize: 16)
        text22.font                      = .boldSystemFont(ofSize: 12)
        profileImage1.image              = selectImages().selectImage(image: .i5)
        text11.text                      = "Anna Kowalsky"
        text22.text                      = "Video Consultation"
        text22.textColor                 = .darkGray
        kk.backgroundColor               = .s1
        kk.layer.cornerRadius            = 16
        button1.setImage(selectImages().selectImage(image: .right), for: .normal)
        button2.setImage(selectImages().selectImage(image: .right), for: .normal)
        c1.configure(viewModel: cardViewComponentViewModel(image: selectImages().selectImage(image: .i6), text1Color: .white, text1String: "5:45 PM", text2String: "Dec7", text3String: "Michael Simpson", text2Color: .white, text3Color: .white, buttonBackGroundColor: .s3, buttonTitle: "Join the call", buttonTitleColor: .white))
        c2.configure(viewModel: cardViewComponentViewModel(image: selectImages().selectImage(image: .i7), text1Color: .s3, text1String: "8:30AM", text2String: "Dec8", text3String: "Kate Brown", text2Color: .darkGray, text3Color: .s1, buttonBackGroundColor: .white, buttonTitle: "Wait for call", buttonTitleColor: .s4))
        pc.configure(i1: selectImages().selectImage(image: .plus), i2: selectImages().selectImage(image: .i1), i3: selectImages().selectImage(image: .i2), i4: selectImages().selectImage(image: .i3), i5: selectImages().selectImage(image: .i4))
    
    }
    
    private func setupConstraints() {
        topC.snp.makeConstraints{
            $0.top.equalToSuperview().offset(70)
            $0.leading.equalToSuperview().offset(32)
            $0.trailing.equalToSuperview().offset(-32)
            $0.height.equalTo(120)
        }
        scrollContainerView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(topC.snp.bottom)
            $0.bottom.equalTo(tabBarView.snp.top)
        }
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        containerView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(view)
            $0.height.equalTo(view)
        }
        text1.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalTo(containerView.snp.top).offset(6)
        }
        button1.snp.makeConstraints{
            $0.width.height.equalTo(44)
            $0.trailing.equalToSuperview().offset(-16)
            $0.top.equalTo(containerView.snp.top)
        }
        c1.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalTo(text1.snp.bottom).offset(32)
            $0.height.equalTo(200)
            $0.width.equalTo(170)
        }
        c2.snp.makeConstraints{
            $0.leading.equalTo(c1.snp.trailing).offset(16)
            $0.top.equalTo(text1.snp.bottom).offset(32)
            $0.height.equalTo(200)
            $0.width.equalTo(170)
        }
        c3.snp.makeConstraints{
            $0.leading.equalTo(c2.snp.trailing).offset(16)
            $0.top.equalTo(text1.snp.bottom).offset(32)
            $0.height.equalTo(200)
            $0.width.equalTo(170)
        }
        text2.snp.makeConstraints{
            $0.top.equalTo(c1.snp.bottom).offset(32)
            $0.leading.equalToSuperview().offset(16)
            
        }
        button2.snp.makeConstraints{
            $0.top.equalTo(c1.snp.bottom).offset(22)
            $0.trailing.equalToSuperview().offset(-16)
            $0.width.height.equalTo(44)
        }
        pc.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().offset(-16)
            $0.top.equalTo(text2.snp.bottom).offset(32)
            $0.height.equalTo(60)
        }
        view1.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(26)
            $0.trailing.equalToSuperview().offset(-26)
            $0.height.equalTo(70)
            $0.top.equalTo(pc.snp.bottom).offset(32)
        }
        view2.snp.makeConstraints{
            $0.top.equalToSuperview().offset(15)
            $0.bottom.equalToSuperview().offset(-15)
            $0.leading.equalToSuperview().offset(20)
            $0.width.equalTo(150)
        }
        kk.snp.makeConstraints{
            $0.width.height.equalTo(16)
            $0.bottom.equalToSuperview().offset(7)
            $0.centerX.equalToSuperview()
        }
        label1.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        label2.snp.makeConstraints{
            $0.trailing.equalToSuperview().offset(-75)
            $0.top.equalToSuperview().offset(25)
            $0.bottom.equalToSuperview().offset(-25)
        }
        line.snp.makeConstraints{
            $0.top.equalTo(view1.snp.bottom).offset(32)
            $0.width.equalTo(3)
            $0.leading.equalTo(view1.snp.leading)
            $0.height.equalTo(65)
        }
        profileImage1.snp.makeConstraints{
            $0.width.height.equalTo(52)
            $0.top.equalTo(line.snp.top)
            $0.leading.equalTo(line.snp.trailing).offset(20)
        }
        text11.snp.makeConstraints{
            $0.top.equalTo(profileImage1.snp.top).offset(2)
            $0.leading.equalTo(profileImage1.snp.trailing).offset(18)
        }
        text22.snp.makeConstraints{
            $0.top.equalTo(text11.snp.bottom).offset(6)
            $0.leading.equalTo(profileImage1.snp.trailing).offset(18)
        }
        tabBarView.snp.makeConstraints{
            $0.bottom.equalToSuperview()
            $0.leading.equalToSuperview().offset(32)
            $0.trailing.equalToSuperview().offset(-50)
            $0.height.equalTo(90)
        }
    }

}

