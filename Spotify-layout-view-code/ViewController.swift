//
//  ViewController.swift
//  Spotify-layout-view-code
//
//  Created by Luciano Berchon on 22/07/22.
//

import UIKit

class ViewController: UIViewController {
    
//    private lazy var musicNameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Tom Sawyer"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 16, weight: .bold)
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        return label
//    }()
//
//    private lazy var albumNameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Rush - Moving Pictures (2011 Remaster)"
//        label.textColor = .gray
//        label.font = .systemFont(ofSize: 14, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()

//    private lazy var initialTimeLabel: UILabel = {
//        let label = UILabel()
//        label.text = "0:00"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 10, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        return label
//    }()
//
//    private lazy var finalTimeLabel: UILabel = {
//        let label = UILabel()
//        label.text = "0:30"
//        label.textColor = .black
//        label.font = .systemFont(ofSize: 10, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        return label
//    }()
//
//    private lazy var playButton: UIButton = {
//        let button = UIButton()
//        button.heightAnchor.constraint(equalToConstant: 32)
//        button.widthAnchor.constraint(equalToConstant: 32)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
//        button.backgroundColor = .white
//        button.imageView?.image = UIImage(named: "play.fill")
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        return button
//    }()

    private lazy var spotifyButton: UIButton = {
        let button = UIButton()
        button.setTitle("PLAY ON SPOTIFY", for: .normal)
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

//    private lazy var playerStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.distribution = .fill
//        stackView.axis = .horizontal
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
////        stackView.addArrangedSubview(playButton)
////        stackView.addArrangedSubview(initialTimeLabel)
//////        stackView.addArrangedSubview(<#T##view: UIView##UIView#>)
////        stackView.addArrangedSubview(finalTimeLabel)
//
//        return stackView
//    }()

    
    
//    private lazy var artistNameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "RUSH"
//        label.textColor = .red
//        label.font = .systemFont(ofSize: 20, weight: .bold)
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        return label
//    }()
    
//    private lazy var image: UIImageView = {
//        let image = UIImage(named: "image")
////        let imageHeiht: Float = image?.size.height
////        let imageWidth = image?.size.width
////        let aspectRatio = imageWidth / imageHeiht
//
//        let imageView = UIImageView()
//        print(imageView.frame.size)
//        print(imageView.image?.size)
////        let aspectRatio =
//        let frame = imageView.frame
//        imageView.image = UIImage(named: "image")
//        imageView.autoresizingMask = .flexibleHeight
//        imageView.contentMode = .scaleAspectFit
////        imageView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
////        imageView.layer.borderWidth = 2
////        imageView.layer.masksToBounds = true
//        imageView.clipsToBounds = true
//        imageView.backgroundColor = .yellow
//
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.sizeToFit()
//        print()
////        imageView.frame.size.height = imageView.frame.size.height * aspectRatio
//
//        return imageView
//    }()
    
//    private lazy var imageStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.distribution = .fill
//        stackView.alignment = .center
//        stackView.axis = .vertical
//        stackView.spacing = 20
//        stackView.
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        stackView.addArrangedSubview(artistNameLabel)
//        stackView.addArrangedSubview(image)
//
//        stackView.backgroundColor = .green
//
//        return stackView
//    }()

//    private lazy var imageView: UIView = {
//        let view = UIView()
//        view.backgroundColor = UIColor(red: 24/255, green: 24/255, blue: 24/255, alpha: 1)
////        view.addSubview(imageStackView)
//        view.translatesAutoresizingMaskIntoConstraints = false
//
//        return view
//    }()
    
//    private lazy var contentStackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.distribution = .fill
//        stackView.axis = .horizontal
////        stackView.alignment = .center
//        stackView.spacing = 12
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//
//        stackView.addArrangedSubview(initialTimeLabel)
////        stackView.addArrangedSubview(image)
//        stackView.addArrangedSubview(finalTimeLabel)
//
//        return stackView
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setup()
    }


}

//extension ViewController {
//    func setup(){
//        setupSubviews()
//        setupConstraints()
//        setupExtraConfiguration()
//    }
//
//    func setupSubviews() {
//        view.addSubview(image)
//    }
//
//    func setupConstraints() {
//        NSLayoutConstraint.activate([
////            contentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
////            contentStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
////            contentStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//
//
////            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
////            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//////            imageView.heightAnchor.constraint(equalToConstant: 100),
////
////            imageStackView.topAnchor.constraint(equalTo: imageView.topAnchor),
////            imageStackView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 20),
////            imageStackView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -20),
////            imageStackView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
//
//            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            image.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            image.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//
//        ])
//    }
//
//    func setupExtraConfiguration() {
//
//    }
//
//}

