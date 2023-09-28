//
//  VehicleMake_API_Helper.swift
//  API_Assignment
//

import Foundation
class vehicleMakeAPIHelper {
    private static let urlString = "https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json"
    
    public static func fetch() async -> Any {
        let meowFactsUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: meowFactsUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
