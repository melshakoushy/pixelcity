//
//  Constants.swift
//  pixel-city
//
//  Created by Mahmoud Elshakoushy on 4/19/19.
//  Copyright © 2019 Mahmoud Elshakoushy. All rights reserved.
//

import Foundation

let apiKey = "9f5b11203d08cb57a3513164cf33591f"

func flickerUrl(key: String, annotation: DroppablePin, number: Int) -> String {
  return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

