//
//  ViewController.swift
//  collectioneViewExample
//
//  Created by Mac on 10/02/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let arr = [
        ["Image":"img_1.png","Name":"bhadresh"], ["Image":"img_2.png","Name":"ramesh"], ["Image":"img_3.png","Name":"harsh"], ["Image":"img_4.png","Name":"harsha"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! infoCell
        
        let item = arr[indexPath.item]
        
        cell.imgForCell.image = UIImage(named: item["Image"]!)
        cell.titleForCell.text = item["Name"]!
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

class infoCell: UICollectionViewCell {
    
    @IBOutlet weak var imgForCell: UIImageView!
    
    @IBOutlet weak var titleForCell: UILabel!
    
    
}
