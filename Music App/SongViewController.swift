//
//  SongViewController.swift
//  Music App
//
//  Created by Pansit Wattana on 3/22/17.
//  Copyright © 2017 Pansit Wattana. All rights reserved.
//

import UIKit

class SongViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var musics = NSMutableArray()
    
    var index = 0

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadMusics()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.musics.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "storeCell")
        
        //cell.textLabel?.text = stores[indexPath.row]
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! SongTableViewCell
        
        if let music = musics[indexPath.row] as? Music {
            cell.songLabel.text = music.name
            cell.queueLabel.text = String(indexPath.row + 1)
        }
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        index = indexPath.row
        
        self.performSegue(withIdentifier: "segueSong", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let music = self.musics[self.index] as? Music {
            if segue.identifier == "segueSong" {
                if let destination = segue.destination as? PlayerViewController{
                    destination.SetSong(music: music)
                }
            }
        }
    }
    
    func LoadMusics() {
        musics.add(Music(name: "BlowYourMind"))
        musics.add(Music(name: "ColdWater"))
        musics.add(Music(name: "ComeToMe"))
        musics.add(Music(name: "Hello"))
        musics.add(Music(name: "KeepitMello"))
        musics.add(Music(name: "LoveonMe"))
        musics.add(Music(name: "OneNightOnly"))
        musics.add(Music(name: "ThinkingAboutYou"))
        musics.add(Music(name: "Wants"))
        musics.add(Music(name: "WhereThemGirlsAt"))
    }
    
}
