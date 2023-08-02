//
//  StatusCard.swift
//  cloneWhatsApp
//
//  Created by Vitor Porto on 31/07/23.
//

import SwiftUI

struct StatusCard: View {
    var url: URL?
    var name: String
    var time: String
    
    var body: some View {
        HStack {
            AsyncImage(url:  url) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle()) // Corta a imagem em formato circular
            } placeholder: {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 50, height: 50)
            }
            .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(name)
                Text(time).foregroundColor(.gray).font(.subheadline)
                
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        
    }
}


struct StatusCard_Previews: PreviewProvider {
    static var previews: some View {
        StatusCard(url:  URL(string: "https://pps.whatsapp.net/v/t61.24694-24/315360841_879040456464092_35233706669956644_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AdSWZ_hTexdK4NueE9ojUu6rvMx7Emn-8005Rq5LHc3Iug&oe=64D4E6A4"), name: "Bruna Alves", time: "3h ago")
    }
}

