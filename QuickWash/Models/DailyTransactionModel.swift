//
//  dailyTransactions.swift
//  QuickWash
//
//  Created by Michel Deziderio on 03/03/25.
//

import SwiftUI

class DailyTransactionsSelected: ObservableObject {
   
}

struct DailyTransction: Identifiable, Equatable {
    var id: String;
    var serviceType: Int;
    var valueTotalService: Double;
    var finished: Bool;
}

var DailyTransactions: [DailyTransction] = [
    DailyTransction(id: "b829aa1a-9a10-4251-8b6f-409165d8bb3e", serviceType: 1, valueTotalService: 35, finished: false),
    DailyTransction(id: "28339fbd-ec60-4ace-a5db-ae4976dc661b", serviceType: 2, valueTotalService: 55, finished: false),
    DailyTransction(id: "bf69378b-28c2-465f-8a2c-a2395b360a73", serviceType: 2, valueTotalService: 55, finished: true),
    DailyTransction(id: "a0f0a576-6c55-4325-ae5b-64dd16f475e4", serviceType: 3, valueTotalService: 70, finished: false),
    DailyTransction(id: "a0f0a576-6c55-4325-ae5b-64dd16f47523", serviceType: 1, valueTotalService: 35, finished: true),
    DailyTransction(id: "b829aa1a-9a10-4251-8b6f-409165d8bb42", serviceType: 1, valueTotalService: 35, finished: true),
    DailyTransction(id: "28339fbd-ec60-4ace-a5db-ae4976dc6555", serviceType: 2, valueTotalService: 55, finished: false),
    DailyTransction(id: "bf69378b-28c2-465f-8a2c-a2395b360a33", serviceType: 2, valueTotalService: 55, finished: true),
    DailyTransction(id: "a0f0a576-6c55-4325-ae5b-64dd16f47434", serviceType: 3, valueTotalService: 70, finished: false),
    DailyTransction(id: "a0f0a576-6c55-4325-ae5b-64dd16f475f4", serviceType: 1, valueTotalService: 35, finished: false),
]


