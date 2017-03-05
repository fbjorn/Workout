//
//  SwimmingWorkout.swift
//  Workout
//
//  Created by Marco Boschi on 04/03/2017.
//  Copyright © 2017 Marco Boschi. All rights reserved.
//

import Foundation
import HealthKit
import MBLibrary

class SwimmingWorkout: Workout {
	
	override init(_ raw: HKWorkout, delegate del: WorkoutDelegate?) {
		super.init(raw, delegate: del)
		
		if #available(iOS 10, *) {
			self.addDetails([.speed, .heart, .strokes])
			self.addRequest(for: .distanceSwimming, withUnit: .kilometer(), andTimeType: .ranged, searchingBy: .workout)
			self.addRequest(for: .swimmingStrokeCount, withUnit: .strokes(), andTimeType: .ranged, searchingBy: .time)
		}
	}
	
}
