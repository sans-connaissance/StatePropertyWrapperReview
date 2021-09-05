//
//  ViewModel.swift
//  StatePropertyWrapperReview
//
//  Created by David Malicke on 9/5/21.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var name = "Sam"
    
    func changeName(){
        name = "Adam"
    }
    
}
