//
//  String+Paths.swift
//  Web Console
//
//  Created by Roben Kleene on 9/22/15.
//  Copyright © 2015 Roben Kleene. All rights reserved.
//

import Foundation

public extension String {
    public func appendingPathComponent(_ path: String) -> String {
        // Writing this as `(self as NSString).appendingPathComponent(path)` causes a memory leak
        let string = self as NSString
        return string.appendingPathComponent(path)
    }

    public func appendingPathExtension(_ ext: String) -> String? {
        // Writing this as `(self as NSString).appendingPathExtension(ext)` causes a memory leak
        let string = self as NSString
        return string.appendingPathExtension(ext)
    }

    public var deletingLastPathComponent: String {
        return (self as NSString).deletingLastPathComponent
    }

    public var lastPathComponent: String {
        return (self as NSString).lastPathComponent
    }

    public var standardizingPath: String {
        return (self as NSString).standardizingPath
    }

    public var pathComponents: [String] {
        return (self as NSString).pathComponents
    }

    public var pathExtension: String {
        return (self as NSString).pathExtension
    }

    public var deletingPathExtension: String {
        return (self as NSString).deletingPathExtension
    }
}
