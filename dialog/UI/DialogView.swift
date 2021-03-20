//
//  DialogView.swift
//  dialog
//
//  Created by Bart Reardon on 9/3/21.
//
// Center portion of the dialog window consisting of icon/image if optioned and message content

import Foundation
import SwiftUI
import AppKit

struct DialogView: View {
    
    var body: some View {
        HStack(alignment: .top, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
            let iconFrameWidth: CGFloat = appvars.imageWidth
            let iconFrameHeight: CGFloat = appvars.imageHeight
            HStack {
                if (!CLOptionPresent(OptionName: CLOptions.hideIcon)) {
                    VStack {
                            IconView()
                    }.frame(width: iconFrameWidth, height: iconFrameHeight, alignment: .top)
                }
                
                VStack(alignment: .center) {
                    //TitleView()
                    MessageContent()
                        .padding(30)
                        
                }.frame(width:(appvars.windowWidth - iconFrameWidth),
                        height: appvars.windowHeight,
                        alignment: .center)
            }
            
        }
    }
}
