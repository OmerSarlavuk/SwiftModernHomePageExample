//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import SnapKit
import UIKit


class tabBarViewComponent :  UIView {
    
    private let firstView = UIView()
    private let button1   = UIButton()
    private let button2   = UIButton()
    private let button3   = UIButton()
    private let button4   = UIButton()
    private let button5   = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupUI() {
        addSubview(firstView)
        firstView.addSubview(button1)
        addSubview(button2)
        addSubview(button3)
        addSubview(button4)
        addSubview(button5)
        setUI()
        setupConstraints()
    }
    
    private func setUI() {
        button1.setImage(selectImages().selectImage(image: .home), for: .normal)
        button2.setImage(selectImages().selectImage(image: .contact), for: .normal)
        button3.setImage(selectImages().selectImage(image: .calendar), for: .normal)
        button4.setImage(selectImages().selectImage(image: .notifications), for: .normal)
        firstView.layer.cornerRadius = 25
        firstView.backgroundColor    = .s3
        button5.backgroundColor = .red
        button5.setTitle("3", for: .normal)
        button5.setTitleColor(.white, for: .normal)
        button5.layer.cornerRadius = 10
    }
    
    private func setupConstraints() {
        firstView.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(50)
        }
        button1.snp.makeConstraints{
            $0.width.height.equalTo(22)
            $0.centerX.centerY.equalToSuperview()
        }
        button2.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(firstView.snp.trailing).offset(65)
            $0.width.height.equalTo(22)
        }
        button3.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(22)
            $0.trailing.equalTo(button4.snp.leading).offset(-75)
        }
        button4.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.width.height.equalTo(22)
        }
        button5.snp.makeConstraints{
            $0.width.height.equalTo(20)
            $0.top.equalTo(button4.snp.top).offset(-10)
            $0.leading.equalTo(button4.snp.trailing).offset(-12)
        }
    }
    
}

