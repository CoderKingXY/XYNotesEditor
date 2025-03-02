//
//  BaseViewController.swift
//  XYNotesEditor
//
//  Created by 王笑宇 on 3/1/25.
//

import UIKit

public class EditorViewController: UIViewController {
    // MARK: - Components
    private lazy var textContentStorage = NSTextContentStorage()
    private lazy var textLayoutManager  = NSTextLayoutManager()
    private lazy var textContainer      = NSTextContainer(size: .zero)

    private lazy var editorView: TextView = {
        let view = TextView(frame: .zero, textContainer: textContainer)
        view.backgroundColor = .systemGreen
        view.keyboardDismissMode = .interactive
        view.automaticallyAdjustsScrollIndicatorInsets = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()
        configureTextSystem()
        setupEditorView()
        setupConstraints()
    }

    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textContainer.size = editorView.frame.size
    }

    // MARK: - Configuration
    private func configureTextSystem() {
        textContentStorage.addTextLayoutManager(textLayoutManager)
        textLayoutManager.textContainer = textContainer
        textContainer.widthTracksTextView = true

        editorView.text = "kjl"
    }

    private func setupEditorView() {
        view.addSubview(editorView)
    }

    private func setupConstraints() {
        let layout = view.readableContentGuide
        NSLayoutConstraint.activate([
            editorView.leadingAnchor.constraint(equalTo: layout.leadingAnchor),
            editorView.trailingAnchor.constraint(equalTo: layout.trailingAnchor),
            editorView.topAnchor.constraint(equalTo: layout.topAnchor),
            editorView.bottomAnchor.constraint(equalTo: layout.bottomAnchor)
        ])
    }
}
