import SwiftUI

struct Calls: View {
    var imageName: URL?
    var title: String
    var description: String
    var day: String
    var titleColor: Color?
    
    var body: some View {
        
        HStack(alignment: .center) {
            if let imageUrl = imageName {
                AsyncImage(url: imageUrl) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40) // Define um tamanho fixo para a imagem
                        .cornerRadius(40) // Define metade da largura/altura para formar um círculo
                        .clipShape(Circle())
                } placeholder: {
                    // Placeholder enquanto a imagem é carregada
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.gray.opacity(0.5))
                }
            } else {
                Circle()
                    .frame(width: 40, height: 40)
                    .cornerRadius(40)
                    .clipShape(Circle())
            }
            
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(title).foregroundColor(titleColor ?? .black).font(.callout).fontWeight(.light)
                        HStack(alignment: .firstTextBaseline) {
                            Image(systemName: "phone.fill").foregroundColor(.gray)
                            Text(description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                    Text(day).font(.subheadline).foregroundColor(.gray)
                    Image(systemName: "info.circle").foregroundColor(.blue)
                }

                Divider().padding(.bottom, 0.5)
            }

        }
        
        .padding(5)
        .frame(maxWidth: .infinity, alignment: .leading)
        .cornerRadius(10)
    }
        
}

struct Calls_Previews: PreviewProvider {
    static var previews: some View {
        Calls(imageName: nil, title: "Vitor Hugo Porto", description: "Outgoing", day: "Yesterday", titleColor: .red)
    }
}
