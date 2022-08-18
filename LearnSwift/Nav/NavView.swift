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
               .font(.custom("OleoScript-Regular", size: 30))
           
           Image(systemName: "plane-arrow")
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 12)
               .rotationEffect(.degrees(-28))
        
       }
    }
}

//struct NavView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavView()
//    }
//}
