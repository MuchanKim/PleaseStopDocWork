//
//  DocumentWorkspaceInteractor.swift
//  PleaseStopDocWork
//
//  Created by Muchan Kim on 8/12/26.
//

protocol DocumentWorkspaceInteracting {
    func loadSupportedDocumentFormats() -> [SupportedDocumentFormat]
}

struct DocumentWorkspaceInteractor: DocumentWorkspaceInteracting {
    func loadSupportedDocumentFormats() -> [SupportedDocumentFormat] {
        SupportedDocumentFormat.allCases
    }
}
