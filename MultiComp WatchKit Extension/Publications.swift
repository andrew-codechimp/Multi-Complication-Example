//
//  MyPublications.swift
//  MultiComp WatchKit Extension
//
//  Created by Andrew Jackson on 30/11/2020.
//

import Foundation

final class MyPublications {
    var publications: [Publication] = []

    private init() {
        self.publications.append(Publication(id: 0, publicationName: "Fruit News", latestHeadline: "Johnny Appleseed made CEO"))
        self.publications.append(Publication(id: 1, publicationName: "Bird Chat", latestHeadline: "Outrage about something new"))
        self.publications.append(Publication(id: 2, publicationName: "Book of people", latestHeadline: "New scam for you to fall for"))
    }

    static let shared = MyPublications()
}

struct Publication: Identifiable {
    var id: Int
    var publicationName: String
    var latestHeadline: String
}
