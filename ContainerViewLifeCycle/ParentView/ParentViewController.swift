//
//  ViewController.swift
//  ContainerViewLifeCycle
//
//  Created by Kazunori Takaishi on 2018/04/28.
//  Copyright © 2018 Kazunori Takaishi. All rights reserved.
//

import UIKit

final class ParentViewController: UIViewController {

    /// ChildViewType
    ///
    /// - first: FirstView
    /// - second: SecondView
    enum ChildViewType: Int {
        case first = 0
        case second = 1
        
        func showChildView(from viewController: ParentViewController) {
            switch self {
            case .first:
                viewController.firstView.isHidden = false
                viewController.secondView.isHidden = true
            case .second:
                viewController.firstView.isHidden = true
                viewController.secondView.isHidden = false
            }
        }
    }
    
    /// first view
    @IBOutlet weak var firstView: UIView!
    /// second view
    @IBOutlet weak var secondView: UIView!
    
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
    
    // MARK - Action
    @IBAction func switchSegment(_ sender: UISegmentedControl) {
        // initializing from a raw value
        if let childViewType = ChildViewType(rawValue: sender.selectedSegmentIndex) {
            childViewType.showChildView(from: self)
        }
    }
}

