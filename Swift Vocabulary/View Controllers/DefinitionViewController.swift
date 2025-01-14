//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Chris Gooley on 7/24/19.
//  Copyright © 2019 Chris Gooley. All rights reserved.
//


import UIKit


class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?

    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var wordDefinition: UITextView!
    
    func updateViews() {
        
        guard let vocabWord = vocabWord, isViewLoaded else { return }
        wordLabel.text = vocabWord.word
        wordDefinition.text = vocabWord.definition
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        updateViews()

    }

}
