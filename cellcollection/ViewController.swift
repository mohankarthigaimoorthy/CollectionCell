//
//  ViewController.swift
//  cellcollection
//
//  Created by Mohan K on 23/11/22.
//

import UIKit


class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private var labels = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"]

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int {
        return labels.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! customcellcollection
        cell.cellimage.image = UIImage(named: "image11")
        cell.setLabel(label: labels[indexPath.row])
        cell.backgroundColor = .systemBlue
       
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: 100, height: 100)
    }

}
