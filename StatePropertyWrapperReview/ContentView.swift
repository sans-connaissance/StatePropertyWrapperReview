//
//  ContentView.swift
//  StatePropertyWrapperReview
//
//  Created by David Malicke on 9/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Text("Hello")
                .padding()
            NameView(viewModel: viewModel)
            
            
            Button(action: {
                viewModel.changeName()
                isPresented.toggle()
                
            }, label: {
                Text("Button")
                    .background(Color.blue)
                    .foregroundColor(.white)
            })
        }
        .sheet(isPresented: $isPresented, content: {
            MainView()
        })
    }
}

struct NameView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    
    var body: some View {
        Text(viewModel.name)
            .padding()
        
    }
}

struct MainView: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            Button(action: {
                mode.wrappedValue.dismiss()
 
            }, label: {
                Text("Cancel")
            })
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 100, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
