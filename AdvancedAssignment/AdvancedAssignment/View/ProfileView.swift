//
//  ProfileView.swift
//  AdvancedAssignment
//
//  Created by 배은서 on 2023/09/21.
//

import UIKit
import SnapKit

class ProfileView: UIView {
    
    // MARK: - Properties
    
    private let imageView: UIImageView = {
        $0.image = UIImage(named: "Sparta")
        return $0
    }(UIImageView())
    
    private let postCountLabel: UILabel = {
        $0.text = "7"
        return $0
    }(UILabel())
    
    private let postLabel: UILabel = {
        $0.text = "post"
        return $0
    }(UILabel())
    
    private lazy var postStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .center
        $0.addArrangedSubviews([postCountLabel, postLabel])
        return $0
    }(UIStackView())
    
    private let followerCountLabel: UILabel = {
        $0.text = "0"
        return $0
    }(UILabel())
    
    private let followerLabel: UILabel = {
        $0.text = "follower"
        return $0
    }(UILabel())
    
    private lazy var followerStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .center
        $0.addArrangedSubviews([followerCountLabel, followerLabel])
        return $0
    }(UIStackView())
    
    private let followingCountLabel: UILabel = {
        $0.text = "0"
        return $0
    }(UILabel())
    
    private let followingLabel: UILabel = {
        $0.text = "following"
        return $0
    }(UILabel())
    
    private lazy var followingStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .center
        $0.addArrangedSubviews([followingCountLabel, followingLabel])
        return $0
    }(UIStackView())
    
    private lazy var profileInfoStackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.addArrangedSubviews([postStackView, followerStackView, followingStackView])
        return $0
    }(UIStackView())
    
    private let nameLabel: UILabel = {
        $0.text = "르탄이"
        return $0
    }(UILabel())
    
    private let bioLabel: UILabel = {
        $0.text = "iOS Developer 🍎"
        return $0
    }(UILabel())
    
    private let linkInBio: UILabel = {
        $0.text = "spartacodingclub.kr"
        $0.font = .systemFont(ofSize: 14)
        $0.textColor = .blue
        return $0
    }(UILabel())
    
    private lazy var descriptionStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .leading
        $0.distribution = .fillEqually
        $0.spacing = 2
        $0.addArrangedSubviews([nameLabel, bioLabel, linkInBio])
        return $0
    }(UIStackView())
    
    private let followButton: UIButton = {
        $0.backgroundColor = UIColor(red: 0.22, green: 0.596, blue: 0.953, alpha: 1)
        $0.layer.cornerRadius = 4
        $0.setTitle("Follow", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return $0
    }(UIButton())
    
    private let messageButton: UIButton = {
        $0.setTitle("Message", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return $0
    }(UIButton())
    
    private let moreButton: UIButton = {
        $0.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        $0.tintColor = .black
        $0.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return $0
    }(UIButton())
    
    private lazy var buttonStackView: UIStackView = {
        $0.axis = .horizontal
        $0.alignment = .fill
        $0.distribution = .fillEqually
        $0.spacing = 8
        $0.addArrangedSubviews([followButton, messageButton])
        return $0
    }(UIStackView())
    
    private let dividerView: UIView = {
        $0.backgroundColor = UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1)
        return $0
    }(UIView())
    
    private let gridButton: UIButton = {
        $0.setImage(UIImage(named: "Grid"), for: .normal)
        $0.tintColor = .black
        return $0
    }(UIButton())
    
    private let indicatorView: UIView = {
        $0.backgroundColor = .black
        return $0
    }(UIView())
    
    private lazy var gridStackView: UIStackView = {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .fill
        $0.spacing = 10
        $0.addArrangedSubviews([gridButton, indicatorView])
        return $0
    }(UIStackView())
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - InitUI
    
    private func configUI() {
        backgroundColor = .white
        
        [postCountLabel, followerCountLabel, followingCountLabel].forEach {
            $0.font = .boldSystemFont(ofSize: 17)
            $0.textColor = .black
        }
        
        [postLabel, followerLabel, followingLabel, nameLabel, bioLabel].forEach {
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .black
        }
        
        [messageButton, moreButton].forEach {
            $0.backgroundColor = .white
            $0.layer.cornerRadius = 4
            $0.layer.borderWidth = 1.5
            $0.layer.borderColor = UIColor(red: 0.855, green: 0.855, blue: 0.855, alpha: 1).cgColor
        }
    }
    
    private func setupLayout() {
        [imageView, profileInfoStackView, descriptionStackView,
         buttonStackView, moreButton,
         dividerView, gridStackView].forEach {
            addSubview($0)
        }
        
        imageView.snp.makeConstraints {
            $0.top.leading.equalTo(safeAreaLayoutGuide).inset(14)
        }
        
        profileInfoStackView.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide).inset(37)
            $0.leading.equalTo(imageView.snp.trailing).offset(30)
            $0.trailing.equalToSuperview().inset(28)
        }
        
        descriptionStackView.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(14)
            $0.leading.trailing.equalToSuperview().inset(15)
        }
        
        buttonStackView.snp.makeConstraints {
            $0.top.equalTo(descriptionStackView.snp.bottom).offset(11)
            $0.leading.equalToSuperview().inset(15)
            $0.height.equalTo(30)
        }
        
        moreButton.snp.makeConstraints {
            $0.top.equalTo(buttonStackView.snp.top)
            $0.leading.equalTo(buttonStackView.snp.trailing).offset(8)
            $0.trailing.equalToSuperview().inset(15)
            $0.width.height.equalTo(30)
        }
        
        dividerView.snp.makeConstraints {
            $0.top.equalTo(buttonStackView.snp.bottom).offset(10)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(0.5)
        }
        
        indicatorView.snp.makeConstraints {
            $0.height.equalTo(1)
        }
        
        gridStackView.snp.makeConstraints {
            $0.width.equalTo(UIScreen.main.bounds.size.width / 3)
            $0.top.equalTo(dividerView.snp.bottom).offset(8)
        }
    }
    
    // MARK: - Custom Method
}
