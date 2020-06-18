//
//  Wage.swift
//  Window Shooper
//
//  Created by Алексей Шумейко on 18.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
