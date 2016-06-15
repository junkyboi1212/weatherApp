//
//  weather.swift
//  WeatherApp
//
//  Created by Deepak Gaire  on 5/20/16.
//  Copyright © 2016 Deepak Gaire. All rights reserved.
//

import Foundation

class Weather {
    
    
    private var _cityId : Int!
    
    private var _cityName : String!
    
    private var _cityCountryName : String!
    
    
    
    private var _cityDat : Double!
    
    private var _weatherLongDesc : String!
    
    private var _weatherIcon : String!
    
    private var _windSpeed : Int!
    
    private var _temperature : Int!
    
    private var _pressure : Int!
    
    private var _humidity : Int!
    
    private var _highTemp : Int!
    
    private var _lowTemp : Int!
    
    private var _clouds : Int!
    
    
    
    
    var cityName : String {
       
        return _cityName
    }
    
    var cityID : Int {
        return _cityId
    }
    
    init(cityName : String ,cityId : Int  ) {
        
        self._cityName = cityName
        self._cityId = cityId
                
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
