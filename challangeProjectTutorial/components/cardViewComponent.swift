//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import UIKit
import SnapKit

class cardViewComponent : UIView {
    
    private let profileImage = UIImageView()
    private let text1        = UILabel()
    private let text2        = UILabel()
    private let text3        = UILabel()
    private let button       = UIButton()
    
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
        addSubview(text2)
        addSubview(text3)
        addSubview(button)
        setUI()
        setupConstraints()
    }
    
    private func setUI() {
        profileImage.layer.cornerRadius = 15
        profileImage.contentMode        = .scaleAspectFit
        profileImage.backgroundColor    = .clear
        text1.font                      = .boldSystemFont(ofSize: 16)
        text2.font                      = .systemFont(ofSize: 12)
        text3.font                      = .boldSystemFont(ofSize: 18)
        button.layer.cornerRadius       = 15
    }
    
    private func setupConstraints() {
        profileImage.snp.makeConstraints{
            $0.width.height.equalTo(30)
            $0.top.leading.equalToSuperview().offset(24)
        }
        text1.snp.makeConstraints{
            $0.top.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
        }
        text2.snp.makeConstraints{
            $0.top.equalTo(text1.snp.bottom).offset(4)
            $0.trailing.equalToSuperview().offset(-24)
        }
        text3.snp.makeConstraints{
            $0.leading.equalToSuperview().offset(10)
            $0.top.equalTo(profileImage.snp.bottom).offset(24)
        }
        button.snp.makeConstraints{
            $0.trailing.equalToSuperview().offset(-16)
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalTo(text3.snp.bottom).offset(34)
        }
    }
    
    func configure(viewModel: cardViewComponentViewModel) {
        profileImage.image     = viewModel.image
        text1.textColor        = viewModel.text1Color
        text2.textColor        = viewModel.text2Color
        text3.textColor        = viewModel.text3Color
        text1.text             = viewModel.text1String
        text2.text             = viewModel.text2String
        text3.text             = viewModel.text3String
        button.backgroundColor = viewModel.buttonBackGroundColor
        button.setTitle(viewModel.buttonTitle, for: .normal)
        button.setTitleColor(viewModel.buttonTitleColor, for: .normal)
    }
    
}

