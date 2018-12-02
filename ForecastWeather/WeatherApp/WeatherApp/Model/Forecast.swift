//
//  Forecast.swift
//  WeatherForecast
//
//  Created by xinjie on 02/12/2018.
//  Copyright © 2018 xin. All rights reserved.
//

import Foundation
public struct Forecast : Codable {
    public var currentDate: Date
    public var date: TimeInterval
    public var forecaseAttributes: Weather
    public var weather: [WeatherDetailInfo]

    private enum CodingKeys: String, CodingKey {
        case currentDate = "dt_txt"
        case date = "dt"
        case forecaseAttributes = "main"
        case weather

    }
}

public struct ForecastList : Codable {
    public var list: [Forecast]
}
