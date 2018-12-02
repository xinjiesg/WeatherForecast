//
//  WeatherForecastTableViewCell.swift
//  WeatherForecast
//
//  Created by xinjie on 02/12/2018.
//  Copyright © 2018 xin. All rights reserved.
//

import UIKit

class WeatherForecastTableViewCell: UITableViewCell {
    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var forecastTime: UILabel!
    @IBOutlet weak var maxTemp: UILabel!
    @IBOutlet weak var minTemp: UILabel!
    @IBOutlet weak var weatherDesc: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func configure(with weatherDisplayItem: ForecastItemsDisplay) {
        currentTemp.text = weatherDisplayItem.temp.currentTemp
        maxTemp.text = weatherDisplayItem.temp.maxTemp
        minTemp.text = weatherDisplayItem.temp.minTemp
        weatherDesc.text = weatherDisplayItem.weatherDesc
        forecastTime.text = weatherDisplayItem.forecastTimeDisplayString
    }
}
