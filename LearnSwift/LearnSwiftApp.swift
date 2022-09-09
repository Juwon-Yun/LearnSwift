//
//  LearnSwiftApp.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/03.
//

import SwiftUI


@main
struct LearnSwiftApp: App {
    var body: some Scene {
        
        WindowGroup {
            UseUIKitInSwiftUI()
        }
    }
}


struct UseUIKitInSwiftUI: UIViewRepresentable{
    
    func makeUIView(context: Context) -> some UIView {
        let view =  UIView()
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
