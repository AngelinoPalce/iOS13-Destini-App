//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceA: UIButton!
    @IBOutlet weak var choiceB: UIButton!
    @IBOutlet weak var imageGif: UIImageView!
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choiceA.titleLabel?.adjustsFontSizeToFitWidth = true
        choiceB.titleLabel?.adjustsFontSizeToFitWidth = true
        UIUpdate()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let buttonPressed = sender.currentTitle!
        story.nextStory(buttonPressed)
        
        
        UIUpdate()
    }
    
    func UIUpdate(){
        storyLabel.text = story.getStory()
        choiceA.setTitle(story.getChoiceA(), for: .normal)
        choiceB.setTitle(story.getChoiceB(), for: .normal)
    }
}

 
