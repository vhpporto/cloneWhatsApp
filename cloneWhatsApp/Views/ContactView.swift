import SwiftUI

struct ContactView: View {
    @ObservedObject var contactData = ContactData()
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                List {
                    HStack {
                        Text("Broadcast Lists").foregroundColor(.blue)
                        Spacer()
                        Text("New Group").foregroundColor(.blue)
                    }
                    .padding(.horizontal, 5)
                    .listRowSeparator(.hidden)
                    ForEach(contactData.contacts) { contact in
                        CardView(imageName: contact.avatar, title: contact.name, description: contact.description)
                    }
                }
                .listStyle(PlainListStyle())
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            // Ação do botão à esquerda
                            print("Botão esquerdo pressionado!")
                        }) {
                            Text("Edit")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Ação do botão à direita
                            print("Botão esquerdo pressionado!")
                        }) {
                            Image(systemName: "camera")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Ação do botão à direita
                            print("Botão esquerdo pressionado!")
                        }) {
                            Image(systemName: "square.and.pencil")
                        }
                    }
                }
                .searchable(text: $text)
                .listStyle(GroupedListStyle())
                .navigationBarTitle("Chats")
            }
        }
        .tabItem {
            TabItemView(imageName: "message", title: "Chats")
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
