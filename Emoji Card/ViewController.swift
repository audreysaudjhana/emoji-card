//
//  ViewController.swift
//  Emoji Card
//
//  Created by Audrey Saudjhana on 10/08/20.
//  Copyright © 2020 Audrey Saudjhana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cardView1 = UIView()
    var cardView2 = UIView()
    var cardView3 = UIView()
    var cardView4 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        setupConstraints()
        
        setupCardDetail(parentView: cardView1, Emoji: "☝🏻", cardName: "One")
        setupCardDetail(parentView: cardView2, Emoji: "✌🏻", cardName: "Two")
        setupCardDetail(parentView: cardView3, Emoji: "🤟🏻", cardName: "Three")
        setupCardDetail(parentView: cardView4, Emoji: "🖐🏻", cardName: "Five")
        
    }
    
    private func setupSubviews() {
        addNewSubview(view: cardView1, color: .green)
        addNewSubview(view: cardView2, color: .red)
        addNewSubview(view: cardView3, color: .yellow)
        addNewSubview(view: cardView4, color: .orange)
    }
    
    private func addNewSubview(view: UIView, color: UIColor) {
        view.backgroundColor = color
        self.view.addSubview(view)
    }
    
    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        cardView1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardView1.topAnchor.constraint(equalTo: safeArea.topAnchor),
            cardView1.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            cardView1.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.5),
            cardView1.heightAnchor.constraint(equalTo: safeArea.heightAnchor, multiplier: 0.5)
        ])
        
        cardView2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardView2.topAnchor.constraint(equalTo: safeArea.topAnchor),
            cardView2.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            cardView2.widthAnchor.constraint(equalTo: cardView1.widthAnchor),
            cardView2.heightAnchor.constraint(equalTo: cardView1.heightAnchor)
        ])
        
        cardView3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardView3.topAnchor.constraint(equalTo: cardView1.bottomAnchor),
            cardView3.leadingAnchor.constraint(equalTo: cardView1.leadingAnchor),
            cardView3.widthAnchor.constraint(equalTo: cardView1.widthAnchor),
            cardView3.heightAnchor.constraint(equalTo: cardView1.heightAnchor)
        ])
        
        cardView4.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardView4.topAnchor.constraint(equalTo: cardView2.bottomAnchor),
            cardView4.trailingAnchor.constraint(equalTo: cardView2.trailingAnchor),
            cardView4.widthAnchor.constraint(equalTo: cardView1.widthAnchor),
            cardView4.heightAnchor.constraint(equalTo: cardView1.heightAnchor)
        ])
    }
    
    private func setupCardDetail(parentView: UIView, Emoji: String, cardName: String) {
        // let's add content
        let cardContent1 = UIView()
        cardContent1.backgroundColor = .white
        cardContent1.layer.cornerRadius = 15
        
        parentView.addSubview(cardContent1)
        
        // set up constraint
        cardContent1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardContent1.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 20),
            cardContent1.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
            cardContent1.widthAnchor.constraint(equalTo: parentView.widthAnchor, constant: -40),
            cardContent1.heightAnchor.constraint(equalTo: parentView.heightAnchor, constant: -70)
        ])
        
        //set emoji
        let emojiLabel = UILabel()
        emojiLabel.text = Emoji
        emojiLabel.textAlignment = .center
        emojiLabel.font = .systemFont(ofSize: 90)
        
        parentView.addSubview(emojiLabel)
        
        //setup emoji constraint
        emojiLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emojiLabel.centerYAnchor.constraint(equalTo: parentView.centerYAnchor),
            emojiLabel.centerXAnchor.constraint(equalTo: parentView.centerXAnchor)
        ])
        
        //set card name label
        let cardLabel = UILabel()
        cardLabel.text = cardName
        cardLabel.textAlignment = .center
        
        parentView.addSubview(cardLabel)
        
        //setup card name constraint
        cardLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardLabel.topAnchor.constraint(equalTo: cardContent1.bottomAnchor, constant: 10),
            cardLabel.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: -20),
            cardLabel.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: 20),
            
        ])
        
    }

}

