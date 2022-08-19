//
//  File.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/19.
//

import Foundation
import UIKit

class Person {
    var id : UUID
    var name: String
    var image: String
    
    init(name:String, image:String){
        self.name = name
        self.image = image
        self.id = UIDevice.current.identifierForVendor!
    }
}
