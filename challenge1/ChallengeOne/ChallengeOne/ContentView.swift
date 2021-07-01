//
//  ContentView.swift
//  ChallengeOne
//
//  Created by Marcelo Pecin on 30/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var valueConvert = ""
    @State private var convertUnit = 0
    @State private var convertFrom = 0
    @State private var convertTo = 1
    
    let convertOptions = ["Temperature", "Length", "Time", "Volume"]
    
    var convertUnits: [Dimension] {
        let convertOption = self.convertOptions[convertUnit]
        
        switch convertOption {
            case "Length":
                return [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles]
            case "Time":
                return [UnitDuration.seconds, UnitDuration.minutes, UnitDuration.hours]
            case "Volume":
                return [UnitVolume.milliliters, UnitVolume.liters, UnitVolume.cups, UnitVolume.pints, UnitVolume.gallons]
            default:
                return [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin]
        }
    }
    
    var convertedUnit: Double {
        let valueToConvert = Double(valueConvert) ?? 0
        
        let unit = Measurement(value: valueToConvert, unit: self.convertUnits[convertFrom])
        return unit.converted(to: self.convertUnits[convertTo]).value
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("What do you want to convert?")) {
                    Picker("Conversion", selection: $convertUnit) {
                        ForEach (0 ..< convertOptions.count) {
                            Text("\(self.convertOptions[$0])").tag(self.convertOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("From")) {
                    TextField("Unit", text: $valueConvert)
                        .keyboardType(.decimalPad)
                    
                    Picker("Conversion", selection: $convertFrom) {
                        ForEach (0 ..< convertUnits.count) {
                            Text("\(self.convertUnits[$0].symbol)").tag(self.convertUnits[$0].symbol)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("To")) {
                    Text("\(convertedUnit, specifier: "%.2f")")

                    Picker("Conversion", selection: $convertTo) {
                        ForEach (0 ..< convertUnits.count) {
                            Text("\(self.convertUnits[$0].symbol)").tag(self.convertUnits[$0].symbol)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationBarTitle("iConvert")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
