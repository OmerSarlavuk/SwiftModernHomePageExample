//
//  tabBarViewComponent.swift
//  challangeProjectTutorial
//
//  Created by Ö.Ş on 18.04.2024.
//

import UIKit

public class selectImages{
    
    func selectImage(image: Images) -> UIImage {
        
        var value = ""
        
        switch image {
        case .profilImage:
            value = "profilImage"
        case .calendar:
            value = "calendar"
        case .contact:
            value = "contact"
        case .home:
            value = "home"
        case .notifications:
            value = "notifications"
        case .plus:
            value = "plus"
        case .right:
            value = "right"
        case .menu:
            value = "menu"
        case .i1:
            value = "i1"
        case .i2:
            value = "i2"
        case .i3:
            value = "i3"
        case .i4:
            value = "i4"
        case .i5:
            value = "i5"
        case .i6:
            value = "i6"
        case .i7:
            value = "i7"
        case .i8:
            value = "i8"
        }
        
        let image = value != "" ? UIImage(named: value) : UIImage(named: "defaultImage")
        if let img = image {
            return img
        }
        return UIImage()
    }

}

