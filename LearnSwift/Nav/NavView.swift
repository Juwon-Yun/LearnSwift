//
//  NavView.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/18.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    
    var body: some View {
        
       LazyVGrid(columns: [
        GridItem(.fixed(colWidth)),
        GridItem(.fixed(colWidth)),
        GridItem(.fixed(colWidth))
       ]) {
           Spacer()
           
           Text("Instagram")
               .font(Font.custom("NotoSansCJKkr-Bold", size: 30))
           
           Image(systemName: "plane-arrow")
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 12)
               .rotationEffect(.degrees(-28))
        
       }
        
        
//        ZStack{
//            Text("폰트 설치된 목록").font(.custom("NotoSansCJKkr-Bold", size: 40))
//        }.onAppear{
//            for family: String in UIFont.familyNames {
//                            print(family)
//                            for names : String in UIFont.fontNames(forFamilyName: family){
//                                print("=== \(names)")
//                            }
//                        }
//
//        }
        
    }
}

//struct NavView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavView()
//    }
//}
