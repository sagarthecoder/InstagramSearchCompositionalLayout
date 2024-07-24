//
//  InstagramSearchLayoutViewController.swift
//  Compositional-Layout-Practice
//
//  Created by Sagar Chandra Das on 24/7/24.
//

import UIKit

class InstagramSearchLayoutViewController: UIViewController {

    lazy var collectionView : UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let identifier = "InstaSearchGridCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setupConstraints()
        configureCompositionalLayout()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        view.addSubview(collectionView)
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let nib = UINib(nibName: "InstaSearchGridCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: identifier)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    private func configureCompositionalLayout() {
        let layout = UICollectionViewCompositionalLayout {sectionIndex, environment in
            return InstagramSearchLayout.getInstraSearchLayoutSection()
        }
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
}

extension InstagramSearchLayoutViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3 * 10
    }
}

extension InstagramSearchLayoutViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! InstaSearchGridCollectionViewCell
        cell.label.text = String(indexPath.item)
        cell.backgroundColor = UIColor.random()
        return cell
    }
}
