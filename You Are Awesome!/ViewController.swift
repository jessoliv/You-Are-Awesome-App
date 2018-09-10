//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jessica Olivieri on 8/28/18.
//  Copyright © 2018 Jessica Olivieri. All rights reserved.
//

import UIKit

// Add import function
import AVFoundation

class ViewController: UIViewController {
	
	@IBOutlet weak var awesomeImageView: UIImageView!
	@IBOutlet weak var messageLabel: UILabel!
	var awesomePlayer = AVAudioPlayer()
	var index = -1
	var imageIndex = -1
	var soundIndex = -1
	let numberOfImages = 10
	let numberOfSounds = 6
	// Code below executes when the app's view first loads

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	
	func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
		var newIndex: Int
		repeat {
			newIndex = Int.random(in: 0..<maxValue)
		} while lastNumber == newIndex
		return newIndex
	}
	
	func playSound(soundName: String) {
		// Play a Sound
		//var soundName = "sound\(soundIndex)"
		// Can we load in the file soundName?
		if let sound = NSDataAsset(name: soundName){
			// check if sound.data is a sound file
			
			do {
				try awesomePlayer = AVAudioPlayer(data: sound.data)
				awesomePlayer.play()
			} catch {
				// if sound.data is not a valid auto file
				print("ERROR: Data in \(soundName) couldn't be played as a sound.")
			}
			
		} else {
			// if reading in the NSDataAsset didn't work, tell the developer / report the error.
			print("ERROR: file\(soundName) didn't load")
			
		}
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
		// var newIndex: Int // declares but does not initalize newIndex
		
		// Show a Message
		index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
		messageLabel.text = messages[index]
		
		// Show an Image
		imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
		awesomeImageView.image = UIImage(named: "image\(imageIndex)")
		
		// Get a random number to use in our soundName file
		soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
		
		
		// Play a sound
		let soundName = "sound\(soundIndex)"
		playSound(soundName: soundName)
		
		
	}
}
