//
//  ContentView.swift
//  FirstProject
//
//  Created by user239477 on 4/29/23.
//

import SwiftUI

struct ContentView: View {
    @State var isTextShowing = true
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack {
                if isTextShowing {
                    Text("Endrina, I love you!").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.blue)
                } else {
                    Text("Endrina, I DON'T love you!").font(.largeTitle).foregroundColor(Color.red)
                }
                Button("Love or not") {
                    isTextShowing.toggle()
                }
                Menu("Mode") {
                    Text("Good")
                    Text("Meh")
                    Text("Bad")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
