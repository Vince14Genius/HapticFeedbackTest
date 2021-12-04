//
//  ContentView.swift
//  HapticFeedbackTest
//
//  Created by Vincent C. on 10/22/21.
//

import SwiftUI
import AudioToolbox

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Input Click")
                .onTapGesture {
                    UISelectionFeedbackGenerator().selectionChanged()
                    AudioServicesPlaySystemSound(1104)
                }
            
            Button("Selection Changed") {
                UISelectionFeedbackGenerator().selectionChanged()
            }
            
            Button("Impact") {
                UIImpactFeedbackGenerator().impactOccurred()
            }
            
            Button("Notification: Success") {
                UINotificationFeedbackGenerator().notificationOccurred(.success)
            }
            
            Button("Notification: Warning") {
                UINotificationFeedbackGenerator().notificationOccurred(.warning)
            }
            
            Button("Notification: Error") {
                UINotificationFeedbackGenerator().notificationOccurred(.error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
