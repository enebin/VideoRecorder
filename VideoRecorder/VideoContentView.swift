//
//  VideoContentView.swift
//  VideoRecorder
//
//  Created by Young Bin on 2023/06/11.
//

import SwiftUI

struct VideoContentView: View {
    @StateObject var viewModel = VideoContentViewModel()
    @State var isRecording = false
    
    var body: some View {
        ZStack {
            viewModel.preview?
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Button(action: {
                    isRecording ? viewModel.stopRecording() : viewModel.startRecording()
                    isRecording.toggle()
                }) {
                    isRecording ? Text("Stop") : Text("Start")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
    }
}

struct VideoContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoContentView()
    }
}
