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
    
    @State var username = "Sam"
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: ProfileView(username: $username),
                    label: {
                        Text(username)
                    })
            }
        }
    }
}

struct ProfileView: View {
    
    @Binding var username: String
    
    var body: some View {
        
        TextField(username, text: $username)
        
        Text(username)
        
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



struct Human: Identifiable, Decodable {
    
    var id: String
    var name: String
    var age: Int
    var birthplace: String
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
