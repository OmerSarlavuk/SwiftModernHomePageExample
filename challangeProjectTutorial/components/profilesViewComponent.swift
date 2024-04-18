//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import UIKit
import SnapKit

class profilesViewComponent : UIView {
    
    private let profileImage1 = UIImageView()
    private let profileImage2 = UIImageView()
    private let profileImage3 = UIImageView()
    private let profileImage4 = UIImageView()
    private let profileImage5 = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupUI() {
        addSubview(profileImage1)
        addSubview(profileImage2)
        addSubview(profileImage3)
        addSubview(profileImage4)
        addSubview(profileImage5)
        setUI()
        setupConstraints()
    }
    
    private func setUI() {
        profileImage1.layer.cornerRadius = 30
        profileImage1.contentMode = .scaleAspectFit
        profileImage1.backgroundColor = .s3
        profileImage2.layer.cornerRadius = 30
        profileImage2.contentMode = .scaleAspectFit
        profileImage2.backgroundColor = .clear
        profileImage3.layer.cornerRadius = 30
        profileImage3.contentMode = .scaleAspectFit
        profileImage3.backgroundColor = .clear
        profileImage4.layer.cornerRadius = 30
        profileImage4.contentMode = .scaleAspectFit
        profileImage4.backgroundColor = .clear
        profileImage5.layer.cornerRadius = 30
        profileImage5.contentMode = .scaleAspectFit
        profileImage5.backgroundColor = .clear
    }
    
    private func setupConstraints() {
        profileImage1.snp.makeConstraints{
            $0.width.height.equalTo(60)
            $0.top.bottom.leading.equalToSuperview()
        }
        profileImage2.snp.makeConstraints{
            $0.width.height.equalTo(60)
            $0.leading.equalTo(profileImage1.snp.trailing).offset(20)
            $0.top.bottom.equalToSuperview()
        }
        profileImage3.snp.makeConstraints{
            $0.width.height.equalTo(60)
            $0.leading.equalTo(profileImage2.snp.trailing).offset(20)
            $0.top.bottom.equalToSuperview()
        }
        profileImage4.snp.makeConstraints{
            $0.width.height.equalTo(60)
            $0.leading.equalTo(profileImage3.snp.trailing).offset(20)
            $0.top.bottom.equalToSuperview()
        }
        profileImage5.snp.makeConstraints{
            $0.width.height.equalTo(60)
            $0.top.bottom.trailing.equalToSuperview()
            $0.leading.equalTo(profileImage4.snp.trailing).offset(20)
        }
    }
    
    func configure(i1: UIImage, i2: UIImage, i3: UIImage, i4: UIImage, i5: UIImage) {
        profileImage1.image = i1
        profileImage2.image = i2
        profileImage3.image = i3
        profileImage4.image = i4
        profileImage5.image = i5
    }
    
}

