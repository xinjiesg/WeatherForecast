//
//  Error.swift
//  WeatherForecast
//
//  Created by xinjie on 02/12/2018.
//  Copyright © 2018 xin. All rights reserved.
//

import Foundation
public enum WeatherAppError: Error {
    //Display an alert with the following title and message
    case networkError(title: String?, message: String?)
    case generalError(title: String?, message: String?)
}
