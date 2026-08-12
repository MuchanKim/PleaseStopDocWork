//
//  DocumentWorkspaceView.swift
//  PleaseStopDocWork
//
//  Created by Muchan Kim on 8/12/26.
//

import SwiftUI

struct DocumentWorkspaceView: View {
    @State private var presenter: DocumentWorkspacePresenter

    init(presenter: DocumentWorkspacePresenter) {
        _presenter = State(initialValue: presenter)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: Layout.contentSpacing) {
            Text(presenter.state.title)
                .font(.largeTitle.bold())

            Text(presenter.state.description)
                .foregroundStyle(.secondary)

            Divider()

            Text(.documentWorkspaceSupportedDocuments)
                .font(.headline)

            Text(presenter.state.supportedFormats)
                .foregroundStyle(.secondary)
        }
        .frame(
            minWidth: Layout.minimumWidth,
            minHeight: Layout.minimumHeight,
            alignment: .leading
        )
        .padding(Layout.contentPadding)
    }

    // MARK: - Layout

    private enum Layout {
        static let contentPadding = 32.0
        static let contentSpacing = 16.0
        static let minimumHeight = 360.0
        static let minimumWidth = 560.0
    }
}

// #Preview {
//     DocumentWorkspaceModule.makeView()
// }
