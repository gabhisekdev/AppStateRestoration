//
//  PhotosViewController.swift
//  AppRestorationExperiments
//
//  Created by G Abhisek on 28/08/18.
//  Copyright © 2018 G Abhisek. All rights reserved.
//

import UIKit

enum SuperHeroType: Int {
    case batman = 0
    case ironman
}

class PhotosViewController: UIViewController {
    
    @IBOutlet weak var superHeroImageView: UIImageView!
    
    var selectedSuperheroId: SuperHeroType = .ironman
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func switchItems(_ sender: Any) {
        selectedSuperheroId = selectedSuperheroId == .ironman ? .batman : .ironman
        setImage()
    }
    
    private func setImage() {
        superHeroImageView.image = selectedSuperheroId == .ironman ? #imageLiteral(resourceName: "ironman") : #imageLiteral(resourceName: "batman")
    }
   
}

extension PhotosViewController {
    override func encodeRestorableState(with coder: NSCoder) {
        coder.encode(selectedSuperheroId.rawValue, forKey: "imageId")
        super.encodeRestorableState(with: coder)
    }

    override func decodeRestorableState(with coder: NSCoder) {
        guard let id = SuperHeroType(rawValue: coder.decodeInteger(forKey: "imageId")) else { return }
        selectedSuperheroId =  id
        setImage()
    }
}
