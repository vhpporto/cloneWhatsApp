import SwiftUI

struct SettingsCardView: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: imageName)
                .font(.system(size: 24))
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .background(Color.red)
                .cornerRadius(10)
            
            VStack() {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct SettingsCardView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCardView(imageName: "gear", title: "Account", description: "Privacy, security, change number")
    }
}
