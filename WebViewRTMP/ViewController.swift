//
//  ViewController.swift
//  WebViewRTMP
//
//  Created by thanawat.s on 10/24/2557 BE.
//  Copyright (c) 2557 thanawat.s. All rights reserved.
//

import UIKit
import MediaPlayer


class ViewController: UIViewController {
    
    //@IBOutlet weak var _video: UIWebView!
    @IBOutlet weak var _view: UIView!
    
    var moviePlayer:MPMoviePlayerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let strURL = "http://122.155.180.125/live/_definst_/workpoint_480p/playlist.m3u8"
        let url = NSURL(string: strURL)
        //let urlRequest = NSURLRequest(URL: url)
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer.view.frame = CGRectMake(0, 0, 340, 250)
        
        self._view.addSubview(moviePlayer.view)
        
        moviePlayer.fullscreen = true
        
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
        
        //_video.loadRequest(urlRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

