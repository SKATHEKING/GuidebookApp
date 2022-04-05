//
//  Place+CoreDataProperties.swift
//  GuidebookApp
//
//  Created by Mateus Goncalves De Ouro on 21/03/2022.
//
//

import Foundation
import CoreData


extension Place {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Place> {
        return NSFetchRequest<Place>(entityName: "Place")
    }

    @NSManaged public var name: String?
    @NSManaged public var imageName: String?
    @NSManaged public var lat: Double
    @NSManaged public var summary: String?
    @NSManaged public var address: String?
    @NSManaged public var long: Double

}

extension Place : Identifiable {

}
