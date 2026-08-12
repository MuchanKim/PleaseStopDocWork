//
//  DocumentWorkspaceInteractorTests.swift
//  PleaseStopDocWorkTests
//
//  Created by Muchan Kim on 8/12/26.
//

@testable import PleaseStopDocWork
import Testing

struct DocumentWorkspaceInteractorTests {
    @MainActor
    @Test func loadsProductSupportedDocumentFormats() {
        let sut = DocumentWorkspaceInteractor()

        let formats = sut.loadSupportedDocumentFormats()

        #expect(formats == [.pdf, .hwp, .word])
    }
}
