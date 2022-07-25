//
//  SpotifyViewController.swift
//  Spotify-layout-view-code
//
//  Created by Luciano Berchon on 24/07/22.
//

import UIKit

final class SpotifyViewController: UIViewController {
    
    private lazy var artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "RUSH"
        label.textColor = .red
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "image")
        
        let imageView = UIImageView()
        imageView.image = image
//        imageView.backgroundColor = UIColor(red: 24/255, green: 24/255, blue: 24/255, alpha: 1)
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        imageView.layer.borderWidth = 2
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var imageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.addArrangedSubview(artistNameLabel)
        stackView.addArrangedSubview(imageView)

        return stackView
    }()
    
    private lazy var imageViewPadding: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 24/255, green: 24/255, blue: 24/255, alpha: 1)
        view.addSubview(imageStackView)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var musicNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Tom Sawyer"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    private lazy var albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Rush - Moving Pictures (2011 Remaster)"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var playButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "play.fill"), for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 20
        button.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button.backgroundColor = .white
        button.tintColor = .black
        button.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    private lazy var initialTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "0:00"
        label.textColor = .black
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private lazy var progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.progress = 0.5
        progressView.progressTintColor = UIColor(red: 60/255, green: 184/255, blue: 89/255, alpha: 1)
        
        progressView.bounds.size.height = 3
        
        progressView.translatesAutoresizingMaskIntoConstraints = false
        
        return progressView
    }()

    private lazy var finalTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "0:30"
        label.textColor = .black
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    private lazy var playerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.addArrangedSubview(playButton)
        stackView.addArrangedSubview(initialTimeLabel)
        stackView.addArrangedSubview(progressView)
        stackView.addArrangedSubview(finalTimeLabel)

        return stackView
    }()
    
    private lazy var spotifyButton: UIButton = {
        let button = UIButton()
        button.setTitle("PLAY ON SPOTIFY", for: .normal)
        button.backgroundColor = UIColor(red: 60/255, green: 184/255, blue: 89/255, alpha: 1)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()

    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fill
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false

        stackView.addArrangedSubview(imageViewPadding)
        stackView.addArrangedSubview(musicNameLabel)
        stackView.addArrangedSubview(albumNameLabel)
        stackView.addArrangedSubview(playerStackView)
        stackView.addArrangedSubview(spotifyButton)

        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

extension SpotifyViewController {
    func setup(){
        setupSubviews()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupSubviews() {
        view.addSubview(contentStackView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            contentStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            imageViewPadding.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            imageViewPadding.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            imageStackView.topAnchor.constraint(equalTo: imageViewPadding.topAnchor, constant: 20),
            imageStackView.leadingAnchor.constraint(equalTo: imageViewPadding.leadingAnchor, constant: 40),
            imageStackView.trailingAnchor.constraint(equalTo: imageViewPadding.trailingAnchor, constant: -40),
            imageStackView.bottomAnchor.constraint(equalTo: imageViewPadding.bottomAnchor, constant: -20),
            
//            progressView.heightAnchor.constraint(equalToConstant: 3),
            
            playerStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            playerStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            
            playButton.heightAnchor.constraint(equalToConstant: 40),
            playButton.widthAnchor.constraint(equalToConstant: 40),
            
            spotifyButton.heightAnchor.constraint(equalToConstant: 40),
            spotifyButton.widthAnchor.constraint(equalToConstant: 250),
        ])
    }
    
    func setupExtraConfiguration() {
        view.layoutIfNeeded()
        view.backgroundColor = .white
        if let image = imageView.image {
            let ratio = image.size.width / image.size.height
            let newHeight = imageView.frame.width / ratio
            NSLayoutConstraint.activate([
                imageView.heightAnchor.constraint(equalToConstant: newHeight),
            ])
        }
    }
    
}
