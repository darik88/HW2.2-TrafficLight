//
//  ViewController.swift
//  HW2.2-TrafficLight
//
//  Created by Айдар Рахматуллин on 27.10.2020.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var actionButton: UIButton!
    
    enum TrafficLight {
        case red, yellow, green
    }
    
    var currentLight = TrafficLight.red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        setLightness(0.3, for: redLightView)
        setLightness(0.3, for: yellowLightView)
        setLightness(0.3, for: greenLightView)

        actionButton.setTitle("START", for: .normal)
        
        setCornerRadius(for: redLightView)
        setCornerRadius(for: yellowLightView)
        setCornerRadius(for: greenLightView)
    }
    
    func setLightness(_ alpha: CGFloat, for view: UIView) {
        view.alpha = alpha
    }
    
    func setCornerRadius(for view: UIView) {
        
        view.layer.cornerRadius = view.frame.width / 2
    }

    @IBAction func actionButtonPressed() {
        actionButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            setLightness(0.3, for: greenLightView)
            setLightness(1, for: redLightView)
            currentLight = .yellow
        case .yellow:
            setLightness(0.3, for: redLightView)
            setLightness(1, for: yellowLightView)
            currentLight = .green
        case .green:
            setLightness(0.3, for: yellowLightView)
            setLightness(1, for: greenLightView)
            currentLight = .red
        }
    }
    
}
