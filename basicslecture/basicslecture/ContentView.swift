//
//  ContentView.swift
//  basicslecture
//
//  Created by Lithika Damnod on 30/9/26.
//

import SwiftUI

enum MuscleGroup: String, CaseIterable {
    case chest = "Chest"
    case legs = "Legs"
    case back = "Back"
    case shoulders = "Shoulders"
    case arms = "Arms"
}

extension MuscleGroup {
    var displayName: String {
        switch self {
            case .chest:
                "Chest Group" // equivalent to `return "Chest Group"`
            case .legs:
                "Legs Group"
            case .back:
                "Back Group"
            case .shoulders:
                "Shoulders Group"
            case .arms:
                "Arms Group"
        }
    }
}

struct Workout {
    let name: String
    let muscleGroup: MuscleGroup
    let duration: Int
}

func isWorkoutLong(workout: Workout) -> Bool {
    return workout.duration >= 50
}

struct ContentView: View {
   let workouts = [
        Workout(name: "Bench Press", muscleGroup: .chest, duration: 45),
        Workout(name: "Squats", muscleGroup: .legs, duration: 60),
        Workout(name: "Pull Ups", muscleGroup: .back, duration: 30),
   ]
    
    var body: some View {
       
        ForEach(MuscleGroup.allCases, id: \.self) { group in
            Text("\(group.rawValue)")
        }
        
        
        List {
            Section {
                ForEach(workouts, id: \.name) { workout in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(workout.name)
                                .font(.title2)
                            Text(workout.muscleGroup.rawValue)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Text("\(workout.duration) Mins")
                            .font(.title2)
                            .foregroundStyle(.orange)
                    }
                }
            }
            
            Section {
                let filteredItems = workouts.filter {
                    workout in workout.duration >= 50
                }
                
                ForEach(filteredItems, id: \.name) { workout in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(workout.name)
                                .font(.title2)
                            Text(workout.muscleGroup.rawValue)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Text("\(workout.duration) Mins")
                            .font(.title2)
                            .foregroundStyle(.orange)
                    }
                }
            }
        }
    }
}


// Generics
func returnFirstValue<T>(array: [T]) -> T {
   return array[0]
}

#Preview {
    ContentView()
}
