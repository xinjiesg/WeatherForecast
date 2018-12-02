//
//  MockWeatherDataManager.swift
//  WeatherForecastTests
//
//  Created by Niloy Chakraborty on 16/10/2018.
//  Copyright © 2018 xin. All rights reserved.
//

@testable import WeatherApp

class MockWeatherDataManager: WeatherForecasting {
    let forecastList: ForecastList
    public func getFiveDayForecast(callback: @escaping (ForecastList?, Error?) -> ()) {

            callback(forecastList, nil)

    }

    init(with forecastData: ForecastList) {
        self.forecastList = forecastData
    }
}

