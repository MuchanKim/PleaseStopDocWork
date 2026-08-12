//
//  DocumentWorkspaceRouter.swift
//  PleaseStopDocWork
//
//  Created by Muchan Kim on 8/12/26.
//

enum DocumentWorkspaceRouter {
    static func makeRootView() -> DocumentWorkspaceView {
        DocumentWorkspaceModule.makeView()
    }
}
