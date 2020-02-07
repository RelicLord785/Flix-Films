//
//  MovieDetailsViewController.swift
//  Flix Films
//
//  Created by CHRISTOPHER EUBANK on 2/6/20.
//  Copyright © 2020 CHRISTOPHER EUBANK. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {

    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var synopsisView: UILabel!
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TitleLabel.text = movie["title"] as? String
        synopsisView.text = movie["overview"] as? String
        synopsisView.sizeToFit()
        synopsisView.text = movie["overview"] as? String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
