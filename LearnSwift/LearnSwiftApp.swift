//
//  LearnSwiftApp.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/03.
//

import SwiftUI
import UIKit


struct LearnSwiftApp: View {
    init() {
        
    }
    
//    @State var text : String
    
    var body: some View {
//        WindowGroup {
            VStack{
//                testLabel(text: $text)
                UseUIViewController()
            }
//        }
    }
}

struct LearnSwiftApp_Previews : PreviewProvider {
    static var previews: some View{
        LearnSwiftApp()
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

struct UseUIViewController : UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
       CombineViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

struct testLabel : UIViewRepresentable{
    @Binding var text : String
    
    func makeUIView(context: Context) -> some UIView {
        let label = UILabel()
        label.textColor = .blue
        return label
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
//        uiView.text = text
    }
}
