//
//  ViewController.swift
//  NSTableView
//
//  Created by me on 27.10.16.
//  Copyright © 2016 ovmx. All rights reserved.
//

import Foundation

struct Quest {
    var name: String
    var level: String
    var imageName: String
}

struct TIBApps {
    static func getAllQuests() -> [Quest] {
        return [
            Quest(name: "Квест 1", level: "beginner", imageName: "1"),
            Quest(name: "Квест 2", level: "beginner", imageName: "2"),
            Quest(name: "Квест 3", level: "beginner", imageName: "3"),
            Quest(name: "Квест 4", level: "beginner", imageName: "4"),
            Quest(name: "Квест 5", level: "intermediate", imageName: "5"),
            Quest(name: "Квест 6", level: "intermediate", imageName: "6"),
            Quest(name: "Квест 7", level: "intermediate", imageName: "7"),
            Quest(name: "Квест 8", level: "intermediate", imageName: "8")
        ]
    }
}


