//
//  ShowCollectionView.swift
//  MovieBase
//
//  Created by HS User 4 on 2016/09/27.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ShowCollectionView: UICollectionViewController {
var data: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.backgroundColor = UIColor.lightGray
        
        
        
        NowPlayingMoviesRequest.NowPlaying { (movies) in
            self.data = movies
            self.collectionView?.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.data.count
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ShowCollectionCell
        
        
        let movie = self.data[indexPath.row]
        
        if let url = NSURL(string: "https://image.tmdb.org/t/p/w300_and_h450_bestv2" + String(movie.posterPath)) {
            if let data = NSData(contentsOf: url as URL) {
                
                let View = UIImageView()
                View.image =  UIImage(data: data as Data)
                cell.backgroundView = View
               
                //cell.poster.image = UIImage(data: data as Data)
            }        
        }
        
        return cell
    }
    var index: Int!
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        index = indexPath.row
        print(index)
        let inforCont = self.storyboard?.instantiateViewController(withIdentifier: "NowPlayingMovieInfor") as! NowPlayingMovieInfor
        
        let movie = self.data[1]
        inforCont.Mtitle = "hello"
        
        //self.navigationController?.pushViewController(inforCont, animated: true)
        
        self.performSegue(withIdentifier: "moreinfor", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //let inforCont: NowPlayingMovieInfor = segue.destination as! NowPlayingMovieInfor
        
       // let movie = self.data[index]
        //inforCont.movieTitle.text = String(movie.title)
        
    }
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
