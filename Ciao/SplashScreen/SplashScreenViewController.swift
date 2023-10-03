//
//  SplashScreenViewController.swift
//  Ciao
//
//  Created by Danila Belyi on 02.10.2023.
//

import UIKit

class SplashScreenViewController: UIViewController {
    let circleImageView: UIImageView = {
        let imageView = UIImageView(image: circleImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let circleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.cornerRadius = 70
        view.clipsToBounds = true
        return view
    }()
    
    static let circleImage = Images.image(for: .circle)

    let forkImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = Images.image(for: .fork)
//        imageView.backgroundColor = .blue
        imageView.contentMode = .scaleAspectFit
//        imageView.layer.cornerRadius = 8
//        imageView.clipsToBounds = true
//        imageView.isUserInteractionEnabled = true
        return imageView
    }()

    let spoonImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = Images.image(for: .spoon)
//        imageView.backgroundColor = .systemPink
        imageView.contentMode = .scaleAspectFit
//        imageView.layer.cornerRadius = 8
//        imageView.clipsToBounds = true
//        imageView.isUserInteractionEnabled = true
        return imageView
    }()

    let appNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        label.text = "Ciao!"
        label.font = Fonts.font(for: .title1)
        label.textColor = Colors.color(for: .black)
        return label

    }()
    
    var logoIsHidden: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupSubviews()
        setupConstraints()
    }

//    override func viewDidLayoutSubviews() {
//        appNameLabel.transform = CGAffineTransform(translationX: 0, y: 10)
//        UIView.animate(withDuration: 0.2) { self.appNameLabel.transform = .identity }
        
//    }

    private func setupView() {
        view.backgroundColor = Colors.color(for: .lightLimeGreen)
    }

    private func setupSubviews() {
        view.addSubviews([circleImageView, circleView, appNameLabel])
        circleView.addSubviews([forkImage, spoonImage])
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            circleView.heightAnchor.constraint(equalToConstant: 140),
            circleView.widthAnchor.constraint(equalToConstant: 140),
            circleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -36),
            
            circleImageView.heightAnchor.constraint(equalToConstant: 140),
            circleImageView.widthAnchor.constraint(equalToConstant: 140),
            circleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -36),

            forkImage.widthAnchor.constraint(equalToConstant: 28),
            spoonImage.widthAnchor.constraint(equalToConstant: 32.7),

            forkImage.leftAnchor.constraint(equalTo: circleView.leftAnchor, constant: 17),
            forkImage.centerYAnchor.constraint(equalTo: circleView.centerYAnchor, constant: 22),

            spoonImage.leftAnchor.constraint(equalTo: forkImage.rightAnchor, constant: 10),
            spoonImage.centerYAnchor.constraint(equalTo: forkImage.centerYAnchor),

            appNameLabel.topAnchor.constraint(equalTo: circleView.bottomAnchor, constant: 20),
            appNameLabel.centerXAnchor.constraint(equalTo: circleView.centerXAnchor),
        ])
    }
}
