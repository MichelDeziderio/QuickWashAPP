//
//  Extensions.swift
//  QuickWash
//
//  Created by Michel Deziderio on 06/03/25.
//

import Foundation
import SwiftUI

extension Int {
    func typeDescription() -> String {
        switch self {
        case 1:
            return "Simples"
        case 2:
            return "Com Cêra"
        default:
            return "Com Cera e Polimento"
        }
    }
}
