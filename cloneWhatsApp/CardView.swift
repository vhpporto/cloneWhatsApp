import SwiftUI

struct CardView: View {
    var imageName: URL?
    var title: String
    var description: String
    
    var body: some View {
        
        HStack(alignment: .center) {
            if let imageUrl = imageName {
                AsyncImage(url: imageUrl) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50) // Define um tamanho fixo para a imagem
                        .cornerRadius(50) // Define metade da largura/altura para formar um círculo
                    
                } placeholder: {
                    // Placeholder enquanto a imagem é carregada
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color.gray.opacity(0.5))
                }
            } else {
                Circle()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                    .clipShape(Circle())
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(.headline)
                    Spacer()
                    Text("20:45").font(.subheadline).foregroundColor(.gray)
                }
                        
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(5)
        .frame(maxWidth: .infinity, alignment: .leading)
        .cornerRadius(10)
    }
        
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: nil, title: "Vitor Hugo Porto", description: "Primeiro projeto utilizando SwiftUI :)")
    }
}
