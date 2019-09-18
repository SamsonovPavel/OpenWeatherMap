//
//  TabBarController.swift
//  OpenWeatherMap
//
//  Created by psamsonov on 18/09/2019.
//  Copyright © 2019 MegaLabs. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        for (i, _) in (viewControllers?.enumerated())! {
            let item = tabBar.items![i]
            item.image = item.image?.withRenderingMode(.alwaysOriginal)
            item.image = UIImage(named: "weather")
        }
    }
}
