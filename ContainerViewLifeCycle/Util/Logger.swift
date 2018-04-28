//
//  Logger.swift
//  ContainerViewLifeCycle
//
//  Created by Kazunori Takaishi on 2018/04/28.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class Logger: NSObject {
    
    static func write(className: String, function: String = #function, line: Int = #line) {
        print("\(Date()) \(className).\(function) Line:\(line)")
    }
}
