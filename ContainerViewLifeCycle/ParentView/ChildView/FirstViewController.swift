//
//  FirstViewController.swift
//  ContainerViewLifeCycle
//
//  Created by Kazunori Takaishi on 2018/04/28.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {

    // MARK - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Logger.write(className: self.className)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Logger.write(className: self.className)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        Logger.write(className: self.className)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Logger.write(className: self.className)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Logger.write(className: self.className)
    }
}
