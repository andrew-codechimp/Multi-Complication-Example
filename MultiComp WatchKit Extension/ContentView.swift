//
//  ContentView.swift
//  MultiComp WatchKit Extension
//
//  Created by Andrew Jackson on 17/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var instance: Int
    
    var body: some View {
        Text("Hello, World \(instance)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(instance: 0)
    }
}
