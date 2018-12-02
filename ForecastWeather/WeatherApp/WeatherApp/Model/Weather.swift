//
//  Weather.swift
//  WeatherForecast
//
//  Created by xinjie on 02/12/2018.
//  Copyright © 2018 xin. All rights reserved.
//

import Foundation
public struct Weather : Codable {

    let kKelvinToCelsiusRef = 273.15
    //Temperature values in Kelvin
    public var kelvin: (currentTemp: Double, maxTemp: Double, minTemp: Double) {
        get {
            return (temp, maxTemp, minTemp)
        }
    }

    ///Temperature values in Celsius
    public var celsius: (currentTemp: Double, maxTemp: Double, minTemp: Double) {
        get {
            return (toCelsius(kelvin: temp), toCelsius(kelvin: maxTemp), toCelsius(kelvin: minTemp))
        }
    }

    public var pressure: Double

    var temp: Double
    var minTemp: Double
    var maxTemp: Double

    init(currentTemp: Double, maxTemp: Double, minTemp: Double) {
        self.temp = currentTemp
        self.maxTemp = maxTemp
        self.minTemp = minTemp

        self.pressure = 0.0
    }

    enum CodingKeys : String, CodingKey {
        case temp = "temp"
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
        case pressure = "pressure"
    }

    func toCelsius(kelvin: Double) -> Double {
        return kelvin - kKelvinToCelsiusRef
    }
}
