//
//  TabbarController.swift
//  RSSExample
//
//  Created by TABS on 08.02.18.
//  Copyright © 2018 TABS. All rights reserved.
//

import Foundation
import UIKit

class TabbarController: UITabBarController, UITabBarControllerDelegate {
    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
//        self.label.text = "test text"
//        self.label.textColor = UIColor.white
//        self.label.textAlignment = .center
//        self.label.translatesAutoresizingMaskIntoConstraints = false
//        self.view.addSubview(label)
//
//        var constraints = [NSLayoutConstraint]()
//
//        constraints.append(NSLayoutConstraint(item: self.label, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0.0))
//        constraints.append(NSLayoutConstraint(item: self.label, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerY, multiplier: 1.0, constant: 0.0))
//        NSLayoutConstraint.activate(constraints)
//        Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = RSSFeedTableViewController()
        let tabOneBarItem = UITabBarItem(title: "Home/RSS Feed", image: UIImage(named: "rss-symbol.png"), selectedImage: UIImage(named: "rss-symbol.png"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        // Create Tab two
        let tabTwo = SavedFeedViewController()
        let tabTwoBarItem = UITabBarItem(title: "Favoriten", image: UIImage(named: "star.png"), selectedImage: UIImage(named: "star.png"))
        
        tabTwo.tabBarItem = tabTwoBarItem
        
        // Create Tab three
        let tabThree = SettingsViewController()
        let tabThreeBarItem = UITabBarItem(title: "Einstellungen", image: UIImage(named: "settings.png"), selectedImage: UIImage(named: "settings.png"))
        
        tabThree.tabBarItem = tabThreeBarItem
        
        
        self.viewControllers = [tabOne, tabTwo, tabThree]
    }
    
//    // UITabBarControllerDelegate method
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        print("Selected \(viewController.title!)")
//
//    }
}
