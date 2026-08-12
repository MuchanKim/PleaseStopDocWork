//
//  DocumentWorkspacePresenter.swift
//  PleaseStopDocWork
//
//  Created by Muchan Kim on 8/12/26.
//

import Foundation
import Observation

struct DocumentWorkspaceViewState: Equatable {
    let title: LocalizedStringResource
    let description: LocalizedStringResource
    let supportedFormats: String
}

@Observable
final class DocumentWorkspacePresenter {
    private(set) var state: DocumentWorkspaceViewState

    init(interactor: any DocumentWorkspaceInteracting) {
        let supportedFormats = interactor
            .loadSupportedDocumentFormats()
            .map(Self.displayName)
            .joined(separator: " · ")

        self.state = DocumentWorkspaceViewState(
            title: .documentWorkspaceTitle,
            description: .documentWorkspaceDescription,
            supportedFormats: supportedFormats
        )
    }

    // MARK: - Private Methods

    private static func displayName(for format: SupportedDocumentFormat) -> String {
        switch format {
        case .pdf:
            String(localized: .documentFormatPdf)
        case .hwp:
            String(localized: .documentFormatHwp)
        case .word:
            String(localized: .documentFormatWord)
        }
    }
}
