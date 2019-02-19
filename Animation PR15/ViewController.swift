//
//  ViewController.swift
//  Animation PR15
//
//  Created by Nikita Seliverstov  on 17/02/2019.
//  Copyright © 2019 Nikita Seliverstov . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tap: UIButton!
    @IBAction func tapped(_ sender: Any) {
//        currentAnimation += 1
//
//        if currentAnimation > 7 {
//            currentAnimation = 0
//        }
        tap.isHidden = true // скрывает кнопку на момент анимации
//        UIView.animate(withDuration: 1, delay: 0, options: [],
//        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5,initialSpringVelocity: 5, options: [], animations: {
//            <#code#>
//        }) { (finished: Bool) in
//            <#code#>
//        }
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [],
                        animations: { [unowned self] in
                        switch self.currentAnimation {
                        case 0:
                            self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2) // увеличивает
                        case 1:
                            self.imageView.transform = CGAffineTransform.identity // возвращает в исходную позицию
                            
                        case 2:
                            self.imageView.transform = CGAffineTransform(translationX: -256, y: -256) // перемещеяет в угол
                            
                        case 3:
                            self.imageView.transform = CGAffineTransform.identity // возвращает в исходную позицию
                        case 4:
                            self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi) // поворачивает на 180 градусов
                        case 5:
                            self.imageView.transform = CGAffineTransform.identity // возвращает в исходную позицию
                        case 6:
                            self.imageView.alpha = 0.1 // делает прозрачность на 0.1
                            self.imageView.backgroundColor = UIColor.green // делает фон зеленым
                        case 7:
                            self.imageView.alpha = 1 // делает прозрачность 1 (отсутствие прозрачности)
                            self.imageView.backgroundColor = UIColor.clear // очищает фон делая изображение без фона
                            
                        default:
                            break
                        }
        }) { [unowned self] (finished: Bool) in
            self.tap.isHidden = false // показывает кнопку
        }
        
        currentAnimation += 1
        
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }


}

