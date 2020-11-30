//
//  ContentView.swift
//  MultiComp WatchKit Extension
//
//  Created by Andrew Jackson on 17/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var publication: Publication
    
    var body: some View {
        VStack {
            Text("\(publication.publicationName)").padding()
            Text("\(publication.latestHeadline)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(publication: Publication(id: 0, publicationName: "My Publication", latestHeadline: "Breaking News"))
    }
}
