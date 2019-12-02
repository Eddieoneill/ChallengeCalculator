//
//  ChallengeCalculatorTests.swift
//  ChallengeCalculatorTests
//
//  Created by Edward O'Neill on 12/2/19.
//  Copyright © 2019 Edward O'Neill. All rights reserved.
//

import XCTest

// @testable is a compiler directive, enables this test suit to have access to the ChallengeCalculator modules
@testable import ChallengeCalculator

class ChallengeCalculatorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUp - called before each test is run")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("tearDown - called after each test is completed")
    }
    
    // test function does not take any parameters
    // test function does not return any values
    func testAddTwoNumbers() {
        
        // arrange your test in the following format
        
        // three A's - arrange, act and assets
        
        // arrange - setup constants, variable and the (system under test)
        let sut = Challenge()
        let num1 = 10
        let num2 = 5
        let expectedResult = 15
        // act - (when) perform workload
        let result = sut.addTwoNumbers(num1: num1, num2: num2)
        
        // assert - (then) test for given condition
        XCTAssertEqual(expectedResult, result, "\(result) should be \(expectedResult)")
    }
    
    func testCalculateWeeklyTraining() {
        // arrange
        let sut = Challenge() // creating a instance of Challenge
        let sutWeeklyTraining = 2320 // feet elevation pre week
        let metric: Double = 11_602 // overall elevation challenge
        let numberOfWeeksForChallenge = 5 // weeks
        
        //act
        let weeklyTraining = sut.calculateWeeklyTraining(for: metric, and: numberOfWeeksForChallenge)
        
        //asserts
        XCTAssertEqual(sutWeeklyTraining, weeklyTraining, "\(weeklyTraining) should be \(sutWeeklyTraining)")
    }
    
    func testCalculateWeeklyTrainingZero() {
        let sut = Challenge()
        let metric: Double = 11_602
        let numberOfForChallenge = 0
        let sutWeeklyTraining = { () -> Int in
            if metric <= 0 || numberOfForChallenge <= 0 {
                return -1
            } else {
                return Int(metric) / numberOfForChallenge
            }
        }()
        
        let weeklyTraining = sut.calculateWeeklyTraining(for: metric, and: numberOfForChallenge)
        
        XCTAssertEqual(weeklyTraining, sutWeeklyTraining, "\(weeklyTraining) should be \(sutWeeklyTraining)")
    }
    
    func testAverageDailyMetric() {
        let sut = Challenge()
        let sutWeeklyTotalMetric = 2320
        let expectedDailyAverage = 773
        let numberOfWorkoutDays = 3
        
        let averageDailyTraining = sut.averageTrainingPerWeek(challengeMetric: sutWeeklyTotalMetric, numberOfWorkoutDays: numberOfWorkoutDays)
        
        XCTAssertEqual(averageDailyTraining, expectedDailyAverage, "\(averageDailyTraining) should be equal to \(expectedDailyAverage)")
    }
    
}
