//
//  String+Paths.swift
//  Web Console
//
//  Created by Roben Kleene on 9/22/15.
//  Copyright © 2015 Roben Kleene. All rights reserved.
//

import Foundation

public extension String {
    func appendingPathComponent(_ path: String) -> String {
        // Writing this as `(self as NSString).appendingPathComponent(path)` causes a memory leak
        let string = self as NSString
        let result = string.appendingPathComponent(path)
        return result
    }

    func appendingPathExtension(_ ext: String) -> String? {
        // Writing this as `(self as NSString).appendingPathExtension(ext)` causes a memory leak
        let string = self as NSString
        let result = string.appendingPathExtension(ext)
        return result
    }

    var deletingLastPathComponent: String {
        return (self as NSString).deletingLastPathComponent
    }

    var lastPathComponent: String {
        return (self as NSString).lastPathComponent
    }

    var standardizingPath: String {
        return (self as NSString).standardizingPath
    }

    var pathComponents: [String] {
        return (self as NSString).pathComponents
    }

    var pathExtension: String {
        return (self as NSString).pathExtension
    }

    var deletingPathExtension: String {
        return (self as NSString).deletingPathExtension
    }
}
