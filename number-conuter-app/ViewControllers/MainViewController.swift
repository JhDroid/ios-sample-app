//
//  ViewController.swift
//  number-conuter-app
//
//  Created by jhkim on 2022/06/28.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    // title
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = .black
        
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "110955-rocket-launch-animation-space-exploration")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400) // 크기 설정
        animView.contentMode = .scaleAspectFill
        
        return animView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        // 애니메이션 실행
        animationView.play { (finish) in
            print("애니메이션 종료")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview() // 애니메이션 뷰의 상위 뷰에서 애니메이션 제거
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

