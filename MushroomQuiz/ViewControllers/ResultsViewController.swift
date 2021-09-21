//
//  ResultViewController.swift
//  MushroomQuiz
//
//  Created by Николай Никитин on 16.09.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var mushroomLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var resultMushroomImageView: UIImageView!
    
    let answers: [Answer]
    init?(coder: NSCoder,_ answers: [Answer]){
        self.answers = answers
        super.init (coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func calculatePersonalityResult(){
        let frequencyOfAnswers = answers.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.value > $1.value }.first!.key

        updateUI(with: mostCommonAnswer)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "mushroomBack.png")!)
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
    
    func updateUI(with mushroom: MushroomType){
        mushroomLabel.text = "Поздравляем, Вы - \(mushroom.rawValue)"
        descriptionLabel.text = mushroom.definition
        let image = "\(mushroom)"
        resultMushroomImageView.image = UIImage( named: "\(image)" )
    }

}
