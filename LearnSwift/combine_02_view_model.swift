//
//  combine_02_view_model.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/09/07.
//

import Foundation

class CombineViewModel{
    // published 어노테이션을 통해 구독이 가능하도록 설정
    @Published var passwordInput : String = ""
    @Published var passwordConfrimInput : String = ""
}
