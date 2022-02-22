//
//  MoviesGridView.swift
//  fun app
//
//  Created by diayan siat on 08/02/2022.
//

import SwiftUI

struct MoviesGridView: View {
    
    let movies = ["movie1", "movie1", "movie1", "movie1", "movie1", "movie1", "movie1", "movie1", "movie1", "movie1"]
    @State var movieCount = 10
    let data = (1...10).map { "Item \($0)" }

    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160, maximum: 180))], spacing: 16) {
                    ForEach(data, id: \.self) { movie in
                        //MovieCardView()
                        MovieCardView()
                    }
                }
            }
            .padding()
            .navigationTitle("Movies")
    }
}

struct MoviesGridView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesGridView()
    }
}
