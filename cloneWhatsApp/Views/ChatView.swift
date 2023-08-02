import SwiftUI

struct ChatView: View {
    var parameter: [Chat]
    var contact: Contact
    let backgroundImage = Image("background")
    
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                ForEach(parameter, id: \.self) { chat in
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(chat.messages, id: \.self) { message in
                            Text("\(message.remetente): \(message.mensagem)")
                        }
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundImage)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("", displayMode: .inline) // Título vazio para não mostrar o título padrão
            .navigationBarItems(leading: {
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
                    VStack {
                        Text(contact.name)
                            .font(.headline)
                        
                        Text("Última vez online: ")
                            .font(.caption)
                        
                    }
                    
                }
            }())
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        // Criando uma conversa de exemplo com algumas mensagens
        let messages: [Message] = [
            Message(id: 1, remetente: "João", mensagem: "Oi, tudo bem?", data: "2023-07-31 10:00"),
            Message(id: 2, remetente: "Maria", mensagem: "Oi João! Tudo sim, e com você?", data: "2023-07-31 10:05"),
            // Adicione mais mensagens aqui...
        ]
        
        let newContact: Contact = Contact(id: "1", name: "Vitor", description: "teste descricao", hour: "10:00")
        
        let chat = Chat(messages: messages)
        
        
        NavigationView {
            ChatView(parameter: [chat], contact: newContact)
        }
        
        
    }
}
