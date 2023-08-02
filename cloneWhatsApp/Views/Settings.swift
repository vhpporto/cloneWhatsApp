import SwiftUI

struct Settings: View {
    @State var text = ""
    
    var body: some View {
        NavigationView {
            List {
                Section {

                        
                        VStack(alignment: .leading) {
                            
                            HStack {
                                AsyncImage(url: URL(string: "https://pps.whatsapp.net/v/t61.24694-24/162783823_1066505627545709_2685309822234289237_n.jpg?ccb=11-4&oh=01_AdQ8b9Z_d24MYoKzncE6KX15HK4MmNXDOyATikz583HSbg&oe=64D1492A")) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(Circle()) // Corta a imagem em formato circular
                                } placeholder: {
                                    Circle()
                                        .fill(Color.gray)
                                        .frame(width: 100, height: 100)
                                }
                                .frame(width: 50, height: 50)
                                VStack(alignment: .leading) {
                                    Text("Vitor Hugo Porto").font(.title2)
                                    Text("Tudo posso naquele que me").foregroundColor(.gray).font(.subheadline)
                                }
                                
                        
                                
                            }
                            
                            Divider().padding(.vertical)
                            
                            NavigationLink(destination: Text("Tela de Detalhes para Help")) {
   
                            
                            HStack {
                                Image(systemName: "star.fill")
                                    .frame(width: 30, height: 30)
                                    .background(.cyan)
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                                Text("Starred Messages")
                            }
                            
                        }
                    }
                    
                }
                NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                    Section {
                        
                        HStack {
                            Image(systemName: "star.fill")
                                .frame(width: 30, height: 30)
                                .background(.yellow)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Avatar")
                        }
                    }
                }
                
                NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                    Section {
                        
                        HStack {
                            Image(systemName: "laptopcomputer")
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Starred Messages")
                        }
                    }
                }
                
                
                Section {
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "key.fill")
                                .frame(width: 30, height: 30)
                                .background(.blue)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Account")
                        }
                    }
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "lock.fill")
                                .frame(width: 30, height: 30)
                                .background(.orange)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Privacy")
                        }
                    }
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "message")
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Chats")
                        }
                    }
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "app.badge")
                                .frame(width: 30, height: 30)
                                .background(.pink)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Notifications")
                        }
                    }
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "dollarsign.circle")
                                .frame(width: 30, height: 30)
                                .background(.indigo)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Payments")
                        }
                    }
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "arrow.up.arrow.down")
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Storage and Data")
                        }
                    }
                }
                
                
                
                Section {
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "info")
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Help")
                        }
                    }
                    NavigationLink(destination: Text("Tela de Detalhes para Help")) {
                        HStack {
                            Image(systemName: "heart.fill")
                                .frame(width: 30, height: 30)
                                .background(.pink)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            Text("Tell a Friend")
                        }
                    }
                }
                
            }
            .navigationBarTitle("Settings")
            .searchable(text: $text)
        }
        .listStyle(.insetGrouped)
        
    }
    
}


struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

