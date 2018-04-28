//
//  NSObject.swift
//  ContainerViewLifeCycle
//
//  Created by Kazunori Takaishi on 2018/04/28.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import Foundation

extension NSObject {
    
    /// get the class name
    var className: String {
        get {
            return String(describing: type(of: self))
        }
    }
}
