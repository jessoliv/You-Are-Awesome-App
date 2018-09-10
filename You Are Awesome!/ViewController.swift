//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jessica Olivieri on 8/28/18.
//  Copyright © 2018 Jessica Olivieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var awesomeImageView: UIImageView!
	@IBOutlet weak var messageLabel: UILabel!
	var index = -1
	var imageIndex = -1
	let numberOfImages = 10
	// Code below executes when the app's view first loads

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
	}
	
	@IBAction func showMessagePressed(_ sender: UIButton) {
		let messages = ["You Are Awesome!",
						"You Are Great!",
						"You Are Fantastic!",
						"When the Genius bar needs help, they call you",
						"You Brighten My Day!",
						"You make me smile!",
						"You are da bomb!",
						"Hey, Fabulous",
						"You Are Tremendous!",
						"I can't wait to download your app"]
		
		//var newIndex = -1
		var newIndex: Int // declares but does not initalize newIndex
		
		repeat {
			newIndex = Int.random(in: 0..<messages.count)
		} while index == newIndex
		
		index = newIndex
		messageLabel.text = messages[index]
		
		repeat {
			newIndex = Int.random(in: 0..<numberOfImages)
		} while imageIndex == newIndex
		
		imageIndex = newIndex
		awesomeImageView.image = UIImage(named: "image\(imageIndex)")
		
//		messageLabel.text = messages.randomElement()!
		
//		messageLabel.text = messages[index]
//		if index == messages.count - 1 {
//			index = 0
//		} else {
//			index = index + 1
//		}
		
//		let message1 = "You Are Awesome!"
//		let message2 = "You Are Great!"
//		let message3 = "You Are Amazing!"
//
//
//		if messageLabel.text == message1 {
//			messageLabel.text = message2
//		} else if messageLabel.text == message2 {
//			messageLabel.text = message3
//		} else {
//			messageLabel.text = message1
//		}

		
		
	}
	
	
}

