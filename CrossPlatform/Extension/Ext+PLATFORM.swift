//
//  Ext+PLATFORM.swift
//  CrossPlatform
//
//  Created by Dylan caetano on 27/06/2026.
//

import SwiftUI

extension Platform {
    
    var isPhone: Bool { self == .iPhone }
    var isPad: Bool { self == .iPad }
    var isMac: Bool { self == .mac }
    var isVision: Bool { self == .vision }
    
    var isCompact: Bool { self == .iPhone }
}
