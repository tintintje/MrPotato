//
//  ViewController.swift
//  MrPotato
//
//  Created by Christine Vinck on 05/11/15.
//  Copyright © 2015 Christine Vinck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MrPotatoView: UIView!
    
    
    
    @IBOutlet weak var Body: UIImageView!
    @IBOutlet weak var Ears: UIImageView!
    @IBOutlet weak var Eyes: UIImageView!
    @IBOutlet weak var Hat: UIImageView!
    @IBOutlet weak var Eyebrows: UIImageView!
    @IBOutlet weak var Glasses: UIImageView!
    @IBOutlet weak var Mouth: UIImageView!
    @IBOutlet weak var Mustache: UIImageView!
    @IBOutlet weak var Nose: UIImageView!
    @IBOutlet weak var Shoes: UIImageView!
    @IBOutlet weak var Arms: UIImageView!
    
    let checkedImage = UIImage(named:"checked")
    let uncheckedImage = UIImage(named: "unchecked")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
            // is there maybe a way to link the checkbox to the image parts?
            case "Eyes": updatePart(Eyes)
            case "Eyebrows": updatePart(Eyebrows)
            case "Ears": updatePart(Ears)
            case "Nose": updatePart(Nose)
            case "Mouth": updatePart(Mouth)
            
            case "Arms": updatePart(Arms)
            case "Glasses": updatePart(Glasses)
            case "Hat": updatePart(Hat)
            case "Shoes": updatePart(Shoes)
            case "Mustache": updatePart(Mustache)
            default: break
        }
    }
    
    func updatePart(part: UIImageView){
        if(part.hidden){
            part.hidden = false
        }else{
            part.hidden = true
        }
    }
}

