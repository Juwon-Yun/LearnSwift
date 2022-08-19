//
//  ThumbView.swift
//  LearnSwift
//
//  Created by 윤주원 on 2022/08/19.
//

import SwiftUI

struct ThumbView: View {
    var people : [Person]
    
    var body: some View {
        VStack(alignment: .leading){
            NewsView()
            
            LazyHStack{
                VStack{
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65)
                        .rotation3DEffect(.degrees(180), axis: (x : 0, y : 1, z: 0))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .colorInvert()
                    
                    Text("Your Story")
                        .font(.system(size: 12))
                }
                .padding(.trailing, 20)
                
                ForEach(people, id : \.id){ person in
                    VStack{
                        Image(person.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55)
                            .clipShape(Circle())
                            .overlay(Circle())
//                                            .stroke(Color.black, lineWidth: 2)
                        
                        Text(person.name)
                            .font(.system(size: 12))
                    }
                    
                }
            }
        }
    }
}

