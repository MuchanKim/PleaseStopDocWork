//
//  DocumentWorkspaceModule.swift
//  PleaseStopDocWork
//
//  Created by Muchan Kim on 8/12/26.
//

enum DocumentWorkspaceModule {
    static func makeView() -> DocumentWorkspaceView {
        let interactor = DocumentWorkspaceInteractor()
        let presenter = DocumentWorkspacePresenter(interactor: interactor)

        return DocumentWorkspaceView(presenter: presenter)
    }
}
