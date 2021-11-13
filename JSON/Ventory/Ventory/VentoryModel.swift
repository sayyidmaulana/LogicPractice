//
//  VentoryModel.swift
//  Ventory
//
//  Created by Sayyid Maulana Khakul Yakin on 10/11/21.
//

import Foundation

// MARK: - VentoryElement
struct VentoryElement: Codable {
    let inventoryID: Int?
    let name, type: String?
    let tags: [String]?
    let purchasedAt: Int?
    let placement: Placement?

    enum CodingKeys: String, CodingKey {
        case inventoryID = "inventory_id"
        case name, type, tags
        case purchasedAt = "purchased_at"
        case placement
    }
}

// MARK: - Placement
struct Placement: Codable {
    let roomID: Int?
    let name: String?

    enum CodingKeys: String, CodingKey {
        case roomID = "room_id"
        case name
    }
}

typealias Ventory = [VentoryElement]

func loadJson(Ventory: String) -> VentoryElement? {
   let decoder = JSONDecoder()
   guard
        let url = Bundle.main.url(forResource: Ventory, withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let person = try? decoder.decode(VentoryElement.self, from: data)
   else {
        return nil
   }

   return person
}
