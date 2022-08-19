//
//  NewsView.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/19.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack{
            Image(systemName: "paperplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .rotationEffect(.degrees(-28))
                
            
            Text("Lorem ipsum dolor sit amet, conectetur adipiscing elt, sed do eiusmod tempor incididuntut labore et dolore magna aliqua.")
                .font(.system(size: 12))
            
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .foregroundColor(.gray)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
