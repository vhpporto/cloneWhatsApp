import SwiftUI

struct CallView: View {
    @ObservedObject var callData = CallData()
    @State private var selectedOption = "Calls"
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List {
                    Section {
                        HStack {
                            Image(systemName: "link")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.blue)
                                .padding(10)
                                .background(.gray.opacity(0.1))
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Create Call Link").foregroundColor(.blue)
                                Text("Share a link for your WhatsApp call").font(.subheadline).foregroundColor(.gray)
                            }
                            
                        }
                    }
                    ForEach(callData.calls) { call in
                        HStack {
                            if let avatarURL = call.avatar {
                                AsyncImage(url: avatarURL) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())
                                } placeholder: {
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.gray)
                                }
                            } else {
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray)
                            }
                            
                            VStack(alignment: .leading) {
                                Text(call.title).font(.headline).fontWeight(.light)
                                Text(call.description).font(.subheadline).foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Text(call.day).foregroundColor(.gray)
                        }
                    }
                }
                .listStyle(.insetGrouped)
                .searchable(text: $text)
                .navigationTitle("Calls")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            // Ação do botão à direita
                            print("Botão esquerdo pressionado!")
                        }) {
                            Text("Edit")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Picker("Select", selection: $selectedOption) {
                            Text("Calls").tag("Calls")
                            Text("Missed").tag("Missed")
                        }
                        .frame(width: 170)
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Ação do botão à direita
                            print("Botão esquerdo pressionado!")
                        }) {
                            Image(systemName: "phone")
                        }
                    }
                }
                
            }
        }
    }
}

struct Call_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}

