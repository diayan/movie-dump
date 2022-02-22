//
//  ContentView.swift
//  fun app
//
//  Created by diayan siat on 28/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    let buttonShape = RoundedRectangle(cornerRadius: 14)
    
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    HStack {
                        Text("Trending")
                            .foregroundColor(.primary)
                            .bold()
                            .font(.title3)
                            .padding(.top)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .fill().foregroundColor(.purple)
                            .frame(height: 100)
                        
                        HStack {
                            NavigationLink(destination: MoviesGridView()) {
                                ZStack {
                                    buttonShape.fill().foregroundColor(.black)
                                        .frame(height: 40)
                                    Text("Movies")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.leading, 16)
                                        .padding(.trailing, 16)
                                        .padding(.top, 10)
                                        .padding(.bottom, 10)
                                }
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: MoviesGridView()) {
                                ZStack {
                                    buttonShape.fill().foregroundColor(.black)
                                        .frame(height: 40)
                                    Text("TV shows")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.leading, 16)
                                        .padding(.trailing, 16)
                                        .padding(.top, 10)
                                        .padding(.bottom, 10)
                                }
                            }
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Movies")
                            .foregroundColor(.primary)
                            .bold()
                            .font(.title3)
                            .padding(.top)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .fill().foregroundColor(.red)
                            .frame(height: 146)
                        VStack {
                            HStack {
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Now Playing")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                                
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Upcoming")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                            
                            HStack {
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Top Rated")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                                
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Popular")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                        }.padding(.leading, 20)
                            .padding(.trailing, 20)
                    }
                    
                    HStack {
                        Text("TV Shows")
                            .foregroundColor(.primary)
                            .bold()
                            .font(.title3)
                            .padding(.top)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .fill().foregroundColor(.mint)
                            .frame(height: 146)
                        
                        VStack {
                            HStack {
                                
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Top Rated")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                                
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Popular")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                            
                            HStack {
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Airing Today")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                                
                                NavigationLink(destination: MoviesGridView()) {
                                    ZStack {
                                        buttonShape.fill().foregroundColor(.black)
                                            .frame(height: 40)
                                        Text("Airing Now")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding(.leading, 16)
                                            .padding(.trailing, 16)
                                            .padding(.top, 10)
                                            .padding(.bottom, 10)
                                    }
                                }
                            }
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    }
                }.padding(.leading)
                    .padding(.trailing)
            }
            .navigationBarTitle(
                Text("Discover & Watch"), displayMode: .automatic)
            .searchable(text: $searchText)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.light)
    }
}
