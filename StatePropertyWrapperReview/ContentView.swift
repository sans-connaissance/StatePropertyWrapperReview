//
//  ContentView.swift
//  StatePropertyWrapperReview
//
//  Created by David Malicke on 9/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = "Adam"
    
    var body: some View {
        VStack {
            Text("Hello")
                .padding()
            NameView(name: name)

        
        Button(action: {
            name = "Sam"
            
        }, label: {
            Text("Button")
            .background(Color.blue)
                .foregroundColor(.white)
        })
        }
    }
}

struct NameView: View {
    
    let name: String
    
    var body: some View {
        Text(name)
            .padding()

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
