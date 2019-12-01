//
//  ContentView.swift
//  SpeechSampler
//
//  Created by Fumiya Yamanaka on 2019/12/02.
//  Copyright © 2019 mtfum. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @State var displayingText: String = ""

  @ObservedObject var capManager = CaptionManager()

  var body: some View {
    VStack(spacing: 24) {
      Text(capManager.caption)
      Spacer()
      Button(capManager.recordButtonText) {
        self.capManager.switchRecording()
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
