//
//  HomeViewController.swift
//  AdvancedAssignment
//
//  Created by 배은서 on 2023/09/19.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    private let profileButton: UIButton = {
        $0.setImage(UIImage(systemName: "person.crop.circle"), for: .normal)
        $0.setTitle("프로필 보러가기", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.tintColor = .black
        $0.addTarget(self, action: #selector(touchUpProfileButton), for: .touchUpInside)
        return $0
    }(UIButton())
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setupLayout()
    }
    
    // MARK: - InitUI
    
    private func configUI() {
        view.backgroundColor = .white
    }
    
    private func setupLayout() {
        view.addSubview(profileButton)
        
        profileButton.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    //MARK: - @objc
    
    @objc func touchUpProfileButton() {
        let profileViewController = ProfileViewController()
        navigationController?.pushViewController(profileViewController, animated: true)
    }
    
    // MARK: - Custom Method


}

