//
//  CityCell.swift
//  WeatherApp
//
//  Created by Deepak Gaire  on 5/20/16.
//  Copyright © 2016 Deepak Gaire. All rights reserved.
//

import UIKit

class CityCell: UICollectionViewCell {
    
    @IBOutlet weak var cityLbl : UILabel!
    
    
    var weather : Weather!
    
    
    
    
    
    func configureCell(weather : Weather) {
        
        self.weather = weather
        self.cityLbl.text  = self.weather.cityName.capitalizedString
        
        
    }
    
    
}
