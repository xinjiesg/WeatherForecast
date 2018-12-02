//
//  DateFormatter+CustomDate.swift
//  WeatherForecast
//
//  Created by xinjie on 02/12/2018.
//  Copyright © 2018 xin. All rights reserved.
//

import Foundation

extension DateFormatter {
    static let iso8601Custom: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }()
}
