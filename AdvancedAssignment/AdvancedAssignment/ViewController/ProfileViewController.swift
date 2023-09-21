//
//  ProfileViewController.swift
//  AdvancedAssignment
//
//  Created by 배은서 on 2023/09/19.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {

    // MARK: - Properties
    
    private let profileView = ProfileView()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setupLayout()
    }
    
    // MARK: - InitUI
    
    private func configUI() {
        view.backgroundColor = .white
        setupNavigation()
    }
    
    private func setupNavigation() {
        navigationItem.title = "nabaecamp"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Menu"), style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .black
        navigationItem.hidesBackButton = true
    }
    
    private func setupLayout() {
        view.addSubview(profileView)
        
        profileView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
        }
    }
    
    // MARK: - Custom Method

}
