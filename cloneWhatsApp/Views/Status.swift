import SwiftUI

struct Status: View {
    @ObservedObject var statusData = StatusData()
    @State var text = ""
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    VStack {
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
                                Text("My Status")
                                Text("Add to my status").foregroundColor(.gray).font(.subheadline)
                                
                            }
                            
                            Spacer()
                            Image(systemName: "camera.fill")
                                .resizable()
                                .frame(width: 20, height: 15)
                                .foregroundColor(.blue)
                                .padding(10)
                                .background(.gray.opacity(0.1))
                                .clipShape(Circle())
                            Image(systemName: "pencil")
                                .resizable()
                                .frame(width: 20, height: 15)
                                .foregroundColor(.blue)
                                .padding(10)
                                .background(.gray.opacity(0.1))
                                .clipShape(Circle())
                        }
                        
                        
                        
                    }
                    
                    
                    
                }
                
                ForEach(statusData.statuses) { status in
                    StatusCard(url: status.url, name: status.name, time: status.time)
                    
                }
                
            }.navigationBarTitle("Status")
            
        }
    }
}

struct Status_Previews: PreviewProvider {
    static var previews: some View {
        Status()
    }
}

