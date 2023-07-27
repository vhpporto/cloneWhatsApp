import SwiftUI


struct ContentView: View {
    @State var text = ""
    @State var callTypes = ["Calls","Missed"]
    @State private var selectedOption = "Calls"
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            CallView()
            .tabItem {
                TabItemView(imageName: "phone", title: "Calls")
            }
            ContactView()
            .tabItem {
                TabItemView(imageName: "message", title: "Chats")
            }
            
        }
    }
}


struct TabItemView: View {
    var imageName: String
    var title: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(title)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
