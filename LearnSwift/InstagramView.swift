// https://developer.apple.com/sf-symbols/ 여기서 아이콘들을 받을 수 있음.

import SwiftUI

struct InstagramView: View {
    let people : [Person] = [
        Person(name : "mrglasses", image : "sm-laptop"),
        Person(name : "longhair", image : "sm-laptop-drawing"),
        Person(name : "longhair", image : "sm-laptop-drawing"),
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
                        ThumbView(people: people)
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

