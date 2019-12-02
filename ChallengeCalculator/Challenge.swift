//
//  Challenge.swift
//  ChallengeCalculator
//
//  Created by Edward O'Neill on 12/2/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import Foundation

struct Challenge {
    func addTwoNumbers(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    // user inputs 11.000 feet elevatio
    // user inputs 5 weeks
    func calculateWeeklyTraining(for metric: Double, and weeks: Int) -> Int {
        
        guard weeks > 0 else { return -1 }
        return Int(metric) / weeks // average metric (ekevatio, distance) pre week
    }
    
    func averageTrainingPerWeek(challengeMetric: Int, numberOfWorkoutDays: Int) -> Int {
        guard (1...7).contains(numberOfWorkoutDays) else { return -1 }
        return challengeMetric / numberOfWorkoutDays
    }
}
