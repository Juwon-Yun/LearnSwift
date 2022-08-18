// https://developer.apple.com/sf-symbols/ 여기서 아이콘들을 받을 수 있음.

import SwiftUI

struct InstagramView: View {
    var body: some View {
        GeometryReader{ geometry in
            let colWidth = geometry.size.width / 3
            
        TabView{
            NavigationView{
                VStack {
                    // nav
                    NavView(colWidth: colWidth)
                    
                    ScrollView{
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

