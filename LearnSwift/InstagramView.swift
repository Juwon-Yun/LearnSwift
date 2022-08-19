// https://developer.apple.com/sf-symbols/ 여기서 아이콘들을 받을 수 있음.

import SwiftUI

struct InstagramView: View {
    let people : [Person] = [
        Person(name : "mrglasses", image : "sm-laptop"),
        Person(name : "longhair", image : "sm-laptop-drawing"),
        Person(name : "ladygaga", image : "sm-puzzle")
    ]
    
    var body: some View {
        GeometryReader{ geometry in
            let colWidth = geometry.size.width / 3
            
        TabView{
            NavigationView{
                VStack {
                    // nav
                    NavView(colWidth: colWidth)
                    
                    ScrollView{
                        VStack{
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
                .navigationBarHidden(true)
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
            
            NavigationView{
                VStack {
                    
                }
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
            }
            
            NavigationView{
                VStack {
                    
                }
            }
            .tabItem {
                Image(systemName: "camera")
            }
            
            NavigationView{
                VStack {
                    
                }
            }
            .tabItem {
                Image(systemName: "heart")
            }

            NavigationView{
                VStack {
                    
                }
            }
            .tabItem {
                Image(systemName: "person")
            }
        }
        }
    }
}

struct InstagramView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramView()
    }
}

