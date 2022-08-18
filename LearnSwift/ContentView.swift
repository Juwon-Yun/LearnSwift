import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack(alignment: .leading) {
            Text("V Stack")
                .font(.title)
            HStack {
                Text("H Stack")
                    .font(.subheadline)
                .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)

                Text("Joshua Tree National Park")
                    .font(.subheadline)
            }


        }
        .padding()
        Image("cat_image01")
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 1))
            .shadow(radius: 6)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

