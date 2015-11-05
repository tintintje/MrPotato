//
//  ViewController.swift
//  MrPotato
//
//  Created by Christine Vinck on 05/11/15.
//  Copyright © 2015 Christine Vinck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MrPotatoView: UIImageView!
    
    let checkedImage = UIImage(named:"checked")
    let uncheckedImage = UIImage(named: "unchecked")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MrPotatoView.image = UIImage(named: "body")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func check(sender: UIButton) {
        if(sender.currentImage == uncheckedImage){
            sender.setImage(checkedImage, forState: .Normal)
        }else{
            sender.setImage(uncheckedImage, forState: .Normal)
        }
        
        updateMrPotato(sender)
    }
    
    func updateMrPotato(sender: UIButton){
        
        let part = sender.currentTitle!
        
        switch part {
            case "Eyes": updatePart("eyes")
            case "Eyebrows": updatePart("eyebrows")
            case "Ears": updatePart("ears")
            case "Nose": updatePart("nose")
            case "Mouth": updatePart("mouth")
            
            case "Arms": updatePart("arms")
            case "Glasses": updatePart("glasses")
            case "Hat": updatePart("hat")
            case "Shoes": updatePart("shoes")
            case "Mustache": updatePart("mustache")
            default: break
        }
    }
    
    func updatePart(part: String){
        
//        var maskImageSize = CGSizeMake(MrPotatoView.frame.width, MrPotatoView.frame.height)
        
        let maskLayer = CALayer()
        maskLayer.contents = UIImage(named: part)
        
        MrPotatoView.layer.mask = maskLayer
    }
}

