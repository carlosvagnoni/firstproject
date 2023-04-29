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
                    Text("Endrina, I love you!").font(.largeTitle).foregroundColor(Color.blue)
                } else {
                    Text("Endrina, I DON'T love you!").font(.largeTitle).foregroundColor(Color.red)
                }
                Button("Love or not") {
                    isTextShowing.toggle()
                }
                Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
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
