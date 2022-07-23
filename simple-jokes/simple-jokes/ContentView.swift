//
//  ContentView.swift
//  simple-jokes
//
//  Created by Rakha Fatih Athallah on 23/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel : JokesManager
    
    @State var jokesText : String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25){
                Text(viewModel.jokesData)
                    .fontWeight(.bold)
                    .frame(width: 250, height: 200)
                    
                    
                
                Button {
                    viewModel.getJokes()
                } label: {
                    Text("Generate Jokes")
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            LinearGradient(colors: [.pink, .purple], startPoint: .topLeading, endPoint: .topTrailing)
                        )
                        .cornerRadius(10)
                }
                
            }
            .navigationTitle("Jokes")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
