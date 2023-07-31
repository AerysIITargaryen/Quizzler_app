//
//  ViewController.swift
//  Quizzler_app
//
//  Created by Иван Станкин on 31.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var bgImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Background-Bubbles")
        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var progressView: UIProgressView = {
        let progress = UIProgressView()
        progress.progress = 0.5
        progress.progressTintColor = .systemPink
        progress.trackTintColor = .systemGray
        
        progress.translatesAutoresizingMaskIntoConstraints = false
        return progress
    }()
    
    lazy var upperButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "Rectangle"), for: .normal)
        button.backgroundColor = .clear
        button.setTitle("First", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var lowerButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "Rectangle"), for: .normal)
        button.backgroundColor = .clear
        button.setTitle("Second", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonStack: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.spacing = 10
        view.axis = .vertical
        view.addArrangedSubview(upperButton)
        view.addArrangedSubview(lowerButton)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Text here"
        label.font = .boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = .white
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score: 0"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15)
        label.textColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .deepPurple
        
        setViews()
        setConstraints()
        
    }
    
    func setViews() {
        view.addSubview(bgImage)
        view.addSubview(progressView)
        view.addSubview(buttonStack)
        view.addSubview(textLabel)
        view.addSubview(scoreLabel)
        
        
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            bgImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bgImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bgImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bgImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            buttonStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            buttonStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            buttonStack.heightAnchor.constraint(equalToConstant: 180),
            
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabel.bottomAnchor.constraint(equalTo: buttonStack.topAnchor, constant: -20),
            textLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 10),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            scoreLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scoreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            scoreLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            scoreLabel.heightAnchor.constraint(equalToConstant: 20),
            scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            progressView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            progressView.heightAnchor.constraint(equalToConstant: 8),
            progressView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }


}

