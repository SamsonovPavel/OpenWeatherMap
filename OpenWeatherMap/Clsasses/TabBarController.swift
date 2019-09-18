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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupTabBar()
    }
}

extension TabBarController {
    
    private func setupTabBar() {
        
        let images = ["weather", "history", "map"]
        let selectedImages = ["weather_selected", "history_selected", "map_selected"]
        
        for (i, _) in (viewControllers?.enumerated())! {
            
            let item = tabBar.items![i]
            
            item.image = UIImage(named: images[i])
            item.image = item.image?.withRenderingMode(.alwaysOriginal)
            item.selectedImage = UIImage(named: selectedImages[i])
            item.selectedImage = item.selectedImage?.withRenderingMode(.alwaysOriginal)
            
            item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.3)], for: .normal)
            item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 1)], for: .selected)
        }
    }
}
