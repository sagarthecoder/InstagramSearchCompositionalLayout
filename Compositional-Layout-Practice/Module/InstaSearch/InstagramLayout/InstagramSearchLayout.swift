//
//  InstagramSearchLayout.swift
//  Compositional-Layout-Practice
//
//  Created by Sagar Chandra Das on 24/7/24.
//

import UIKit

final class InstagramSearchLayout {
    
    private init() {}
    
    static func getInstraSearchLayoutSection()-> NSCollectionLayoutSection {
        let spacing = 2.0
        let bigItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        bigItem.contentInsets = .init(top: spacing, leading: spacing, bottom: spacing, trailing: spacing)
        let smallItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5)))
        smallItem.contentInsets = .init(top: spacing, leading: spacing, bottom: spacing, trailing: spacing)
        let bigGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.75), heightDimension: .fractionalHeight(1)), subitems: [bigItem])
        let smallGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .fractionalHeight(1)), subitems: [smallItem])
        let oddItemGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5)), subitems: [bigGroup, smallGroup])
        let evenItemGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5)), subitems: [smallGroup, bigGroup])
        let group = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(600)), subitems: [oddItemGroup, evenItemGroup])
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
}
