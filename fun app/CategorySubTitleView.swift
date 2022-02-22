//
//  CategorySubTitleView.swift
//  fun app
//
//  Created by diayan siat on 28/01/2022.
//

import SwiftUI

struct CategorySubTitleView: View {
    var title: String
    
    var body: some View {
        let buttonShape = RoundedRectangle(cornerRadius: 14)
        ZStack {
            buttonShape.fill().foregroundColor(.black)
                .frame(height: 40)
            Text(title)
                .font(.subheadline)
                .foregroundColor(.white)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .padding(.top, 10)
                .padding(.bottom, 10)
        }.onTapGesture {
            print("")
            NavigationLink(destination: MoviesGridView()) {
                
            }
        }
    }
}

struct CategorySubTitleView_Previews: PreviewProvider {
    static var title: String  = "title"
    static var previews: some View {
        CategorySubTitleView(title: title)
            .fixedSize()
    }
}
