//
//  ContentView.swift
//  MovieverseApp
//
//  Created by M Riza Levandy on 29/04/25.
//
import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    @State private var searchText = ""

    var body: some View {
        VStack {
            // Bar atas dengan tulisan "Movieverse" dan tombol "+"
            HStack {
                Text("Movieverse")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)

                Spacer()

                Button(action: {
                    showModal.toggle()
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                }
                .padding(.trailing)
            }
            .padding()

            Spacer()
        }
        .sheet(isPresented: $showModal) {
            VStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
