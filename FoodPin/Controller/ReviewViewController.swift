//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by 陳仲堯 on 2018/9/13.
//  Copyright © 2018年 AppCoda. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var backgrounView: UIImageView!
    @IBOutlet var rateButtons : [UIButton]!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backgrounView.image = UIImage(named: restaurant.image)
        
        //應用模糊效果
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgrounView.addSubview(blurEffectView)
        
        //使表情圖預設在右邊的位置
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        //初始縮放值
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        //使按鈕隱藏
        rateButtons.forEach {
            $0.transform = moveScaleTransform
            $0.alpha = 0
        }
//        for rateButton in rateButtons {
//
//            rateButton.alpha = 0
//        }
    }

    //引入動畫效果: Icons漸出
    override func viewWillAppear(_ animated: Bool) {
        
        // animate 實作方法一
//        UIView.animate(withDuration: 2.0) {
//            self.rateButtons.forEach{
//                $0.alpha = 1.0
//            }
//        }
        
        // animate 實作方法二 : 一般顯示
//        UIView.animate(withDuration: 0.4, delay: 0.1, options:[], animations: {
//            self.rateButtons[0].alpha = 1.0
//            self.rateButtons[0].transform = .identity //回到原來的位置
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.15, options:[], animations: {
//            self.rateButtons[1].alpha = 1.0
//            self.rateButtons[1].transform = .identity
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.2, options:[], animations: {
//            self.rateButtons[2].alpha = 1.0
//            self.rateButtons[2].transform = .identity
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.25, options:[], animations: {
//            self.rateButtons[3].alpha = 1.0
//            self.rateButtons[3].transform = .identity
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.4, delay: 0.3, options:[], animations: {
//            self.rateButtons[4].alpha = 1.0
//            self.rateButtons[4].transform = .identity
//        }, completion: nil)
        
        // animate 實作方法三 : 彈簧動畫
        var delay = 0
        
        rateButtons.forEach{ item in
            UIView.animate(withDuration: 0.8, delay: 0.1 + 0.05 * Double(delay), usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options:[], animations: {
                item.alpha = 1.0
                item.transform = .identity //回到原來的位置
            }, completion: nil)
            
            delay += 1
        }
//        UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options:[], animations: {
//            self.rateButtons[0].alpha = 1.0
//            self.rateButtons[0].transform = .identity //回到原來的位置
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.8, delay: 0.15, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options:[], animations: {
//            self.rateButtons[1].alpha = 1.0
//            self.rateButtons[1].transform = .identity
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.8, delay: 0.2, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options:[], animations: {
//            self.rateButtons[2].alpha = 1.0
//            self.rateButtons[2].transform = .identity
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.8, delay: 0.25, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options:[], animations: {
//            self.rateButtons[3].alpha = 1.0
//            self.rateButtons[3].transform = .identity
//        }, completion: nil)
//
//        UIView.animate(withDuration: 0.8, delay: 0.3, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options:[], animations: {
//            self.rateButtons[4].alpha = 1.0
//            self.rateButtons[4].transform = .identity
//        }, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
