//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import UIKit

class cardViewComponentViewModel {
    let image: UIImage
    let text1Color: UIColor
    let text1String: String
    let text2String: String
    let text3String: String
    let text2Color: UIColor
    let text3Color: UIColor
    let buttonBackGroundColor: UIColor
    let buttonTitle: String
    let buttonTitleColor: UIColor
    
    init(image: UIImage, text1Color: UIColor, text1String: String, text2String: String, text3String: String, text2Color: UIColor, text3Color: UIColor, buttonBackGroundColor: UIColor, buttonTitle: String, buttonTitleColor: UIColor) {
        self.image = image
        self.text1Color = text1Color
        self.text1String = text1String
        self.text2String = text2String
        self.text3String = text3String
        self.text2Color = text2Color
        self.text3Color = text3Color
        self.buttonBackGroundColor = buttonBackGroundColor
        self.buttonTitle = buttonTitle
        self.buttonTitleColor = buttonTitleColor
    }
}

