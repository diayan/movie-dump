//
//  MovieCardView.swift
//  fun app
//
//  Created by diayan siat on 04/02/2022.
//

import SwiftUI

struct MovieCardView: View {
    var body: some View {
        
        let imageClipShape = RoundedRectangle(cornerRadius: 10, style: .continuous)
        
        ZStack {
            imageClipShape
            image
        }.frame(height: 100)
            .compositingGroup()
            .clipShape(imageClipShape)
            .overlay {
                imageClipShape
                    .inset(by: 0.5)
                    .stroke(.quaternary, lineWidth: 0.5)
            }
            .contentShape(imageClipShape)
            .accessibilityElement(children: .contain)
    }
    
    var image: some View {
        GeometryReader { geo in
            Image("love-you-berry-much")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width, height: geo.size.height)
                .scaleEffect(1)
                .frame(width: geo.size.width, height: geo.size.height)
        }
        .accessibility(hidden: true)
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView().previewLayout(.sizeThatFits)
        MovieCardView().preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
