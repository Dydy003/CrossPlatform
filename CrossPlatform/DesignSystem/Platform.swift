
//  Platform.swift
//  CrossPlatform

import SwiftUI
#if canImport(UIKit)
import UIKit
#endif

enum Platform {
    case iPhone
    case iPad
    case mac
    case vision
    
    static var current: Platform {
        #if os(visionOS)
        .vision
        #elseif os(macOS)
        .mac
        #elseif os(iOS)
        UIDevice.current.userInterfaceIdiom == .pad ? .iPad : .iPhone
        #else
            .mac
        #endif
    }
}
