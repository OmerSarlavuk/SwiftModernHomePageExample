//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import UIKit
import SnapKit

class topViewComponent: UIView{
    
    private let profileImage = UIImageView()
    private let text1        = UILabel()
    private let text12       = UILabel()
    private let menuIcon     = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupUI() {
        addSubview(profileImage)
        addSubview(text1)
        addSubview(text12)
        addSubview(menuIcon)
        setUI()
        setupConstraints()
    }
    
    private func setUI() {
        profileImage.layer.cornerRadius   = 35
        profileImage.backgroundColor      = .clear
        profileImage.contentMode          = .scaleAspectFit
        profileImage.image                = selectImages().selectImage(image: .i8)
        text1.textColor                   = .s4
        text1.text                        = "Welcome back"
        text12.text                       = "Jessica"
        text1.font                        = .systemFont(ofSize: 16)
        text12.font                       = .systemFont(ofSize: 26)
        text12.textColor                  = .black
        menuIcon.setImage(selectImages().selectImage(image: .menu), for: .normal)
        menuIcon.setImage(selectImages().selectImage(image: .menu), for: .normal)
    }
    
    private func setupConstraints() {
        profileImage.snp.makeConstraints{
            $0.width.height.equalTo(70)
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
        }
        text1.snp.makeConstraints{
            $0.leading.equalTo(profileImage.snp.trailing).offset(8)
            $0.top.equalTo(profileImage.snp.top).offset(3)
        }
        text12.snp.makeConstraints{
            $0.top.equalTo(text1.snp.bottom).offset(3)
            $0.leading.equalTo(profileImage.snp.trailing).offset(8)
        }
        menuIcon.snp.makeConstraints{
            $0.width.height.equalTo(44)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
        }
    }
    
}

