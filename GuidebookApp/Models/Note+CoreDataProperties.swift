//
//  Note+CoreDataProperties.swift
//  GuidebookApp
//
//  Created by Mateus Goncalves De Ouro on 21/03/2022.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var date: Date?
    @NSManaged public var text: String?

}

extension Note : Identifiable {

}
