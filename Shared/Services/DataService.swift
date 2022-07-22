//
//  DataService.swift
//  Book-App
//
//  Created by Shamsuddin Refaei on 22/07/2022.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
        
        //get url path to json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        //check if pathString isn't nil, otherwise...
        guard pathString != nil else {
            
            return [Book]()
        }
        
        //create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            //create data object
            let data = try Data(contentsOf: url)
            
            //decode data with json decoder
            let decoder = JSONDecoder()
            
            do {
                
                let bookData = try decoder.decode([Book].self, from: data)
                
                return bookData
            }
            catch {
                
                print(error)
            }
        }
        catch {
            
            print(error)
        }
        return [Book]()
    }
}
