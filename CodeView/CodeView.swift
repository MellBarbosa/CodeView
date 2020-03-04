//
//  codeView.swift
//  CodeView
//
//  Created by Mell Barbosa on 03/03/20.
//  Copyright © 2020 Mell Barbosa. All rights reserved.
//

import Foundation
import UIKit
import TinyConstraints

final class CodeView: UIView {
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.image = UIImage(named: "GreenBackground")?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [topView, midView, bottomView])
        view.axis = .vertical
        view.spacing = 1
        view.alignment = .fill
        view.distribution = .fillEqually
        return view
    }()
    
    private lazy var topView: UIView = {
        let view = UIView()
        view.contentMode = .scaleToFill
        return view
    }()
    
    private lazy var diceeLogoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "DiceeLogo")?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    private lazy var midView: UIView = {
        let view = UIView()
        view.contentMode = .scaleToFill
        return view
    }()
    
    private lazy var midStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [diceOneImageView, diceTwoImageView])
        view.axis = .horizontal
        view.spacing = 71
        view.alignment = .fill
        view.distribution = .fill
        view.contentMode = .scaleToFill
        return view
    }()
    
    private lazy var diceOneImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "DiceOne")?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    private lazy var diceTwoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: "DiceTwo")?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.contentMode = .scaleToFill
        return view
    }()
    
    private lazy var rollButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 144.0/255.0,
                                       green: 43.0/255.0,
                                       blue: 43.0/255.0,
                                       alpha: 1.0)
        view.titleLabel?.font = .systemFont(ofSize: 37)
        view.layer.cornerRadius = 4
        view.setTitle("Roll", for: .normal)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(imageView)
        addSubview(mainStackView)
        topView.addSubview(diceeLogoImageView)
        midView.addSubview(midStackView)
        bottomView.addSubview(rollButton)
    }
    
    private func setupConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.edgesToSuperview()
        mainStackView.edgesToSuperview()
        diceeLogoImageView.center(in: topView)
        midStackView.center(in: midView)
        
        rollButton.width(100)
        rollButton.height(100)
        rollButton.center(in: bottomView)
    }
}
