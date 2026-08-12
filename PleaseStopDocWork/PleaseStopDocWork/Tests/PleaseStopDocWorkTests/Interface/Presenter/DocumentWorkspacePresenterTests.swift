//
//  DocumentWorkspacePresenterTests.swift
//  PleaseStopDocWorkTests
//
//  Created by Muchan Kim on 8/12/26.
//

@testable import PleaseStopDocWork
import Testing

struct DocumentWorkspacePresenterTests {
    @MainActor
    @Test func mapsSupportedFormatsToViewState() {
        let interactor = DocumentWorkspaceInteractorStub(formats: [.pdf, .word])

        let sut = DocumentWorkspacePresenter(interactor: interactor)

        #expect(sut.state.supportedFormats == "PDF · Word")
    }
}

private struct DocumentWorkspaceInteractorStub: DocumentWorkspaceInteracting {
    let formats: [SupportedDocumentFormat]

    func loadSupportedDocumentFormats() -> [SupportedDocumentFormat] {
        formats
    }
}
