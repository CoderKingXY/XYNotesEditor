//
//  BaseViewController.swift
//  XYNotesEditor
//
//  Created by 王笑宇 on 3/1/25.
//

import UIKit

public class BaseViewController: UIViewController {
    private var textContentStorage: NSTextContentStorage
    private var textLayoutManager: NSTextLayoutManager
    private var editorView: TextView

    required init?(coder: NSCoder) {
        let textContainer = NSTextContainer(size: .zero)
        textContainer.widthTracksTextView = true

        textLayoutManager = NSTextLayoutManager()
        textLayoutManager.textContainer = textContainer

        textContentStorage = NSTextContentStorage()
        textContentStorage.addTextLayoutManager(textLayoutManager)

        editorView = TextView(frame: .zero, textContainer: textContainer)
        editorView.backgroundColor = .systemGreen
        editorView.keyboardDismissMode = .interactive
        editorView.automaticallyAdjustsScrollIndicatorInsets = true
        editorView.translatesAutoresizingMaskIntoConstraints = false

        super.init(coder: coder)
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(editorView)
        let layout = view.readableContentGuide
        NSLayoutConstraint.activate([
            editorView.leadingAnchor.constraint(equalTo: layout.leadingAnchor, constant: 0),
            editorView.trailingAnchor.constraint(equalTo: layout.trailingAnchor, constant: 0),
            editorView.topAnchor.constraint(equalTo: layout.topAnchor, constant: 0),
            editorView.bottomAnchor.constraint(equalTo: layout.bottomAnchor,constant: 0)
        ])
        
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
