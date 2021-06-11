//
//  UI_232App.swift
//  UI-232
//
//  Created by にゃんにゃん丸 on 2021/06/11.
//

import SwiftUI
@main
struct UI_232App: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
class AppDelegate : NSObject,NSApplicationDelegate{
    
    var statasItem : NSStatusItem?
    var popover = NSPopover()
    
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        
        
         let mainView = Home()
        
        
        popover.behavior = .transient
        popover.animates = true
        popover.contentViewController = NSViewController()
        
        popover.contentViewController?.view = NSHostingView(rootView: mainView)
        popover.contentViewController?.view.window?.makeKey()
        
        
        statasItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        
        if let menuButton = statasItem?.button{
            
            menuButton.image = NSImage(systemSymbolName: "house.fill", accessibilityDescription: nil)
            
            menuButton.action = #selector(MenuButtonToggle)
            
        
            
            
        }
        
        
    }
    
    
    
    @objc func MenuButtonToggle(sender : AnyObject){
        
        if popover.isShown{
            
            popover.performClose(sender)
            
            
        }
        else
        if let menuButton = statasItem?.button{
            
            self.popover.show(relativeTo: menuButton.bounds, of: menuButton, preferredEdge: NSRectEdge.minY)
            
            
        }
        
        
        
        
    }
}
