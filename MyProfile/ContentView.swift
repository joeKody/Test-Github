

import SwiftUI

struct ContentView: View {
    @State var helloName:String = "Chokdee"
    @State var showSheet:Bool = false
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea(.all)
                .opacity(0.3)
            VStack {
                Image("MyProfile")
                    .resizable()
                    .aspectRatio(contentMode: .fit )
                .frame(maxWidth: 150)
                Text("Hello, \(helloName)!")
                    .font(.title)
                    .fontWeight(.bold)
                Button("Edit your Name",action: {
                    showSheet.toggle()
                })
            }.sheet(isPresented: $showSheet, content: {
                SheetView(helloName: $helloName)
            })
        }
    }
}

#Preview {
    ContentView()
}
