//
//  TabBarController.swift
//  DemoUI
//
//  Created by NeoSOFT on 10/07/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    @IBOutlet weak var tabbar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.a
        tabbar.selectionIndicatorImage = UIImage().createSelectionIndicator(color: UIColor.blue, size: CGSize(width: tabBar.frame.width/CGFloat(tabBar.items!.count)*0.6, height: tabBar.frame.height*0.95), lineHeight: 5.0)
    }
}
extension UIImage {
    func createSelectionIndicator(color: UIColor, size: CGSize, lineHeight: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: size.width, height: lineHeight)))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
      }
}
   
