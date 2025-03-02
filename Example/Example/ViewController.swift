//
//  ViewController.swift
//  Example
//
//  Created by 王笑宇 on 2/23/25.
//

import UIKit
import XYNotesEditor

class ViewController: UIViewController {

    private lazy var editorVC: EditorViewController = EditorViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4

        addChild(editorVC)
        let editorView = editorVC.view!
        view.addSubview(editorView)

        let safeAreaLayout = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            editorView.leadingAnchor.constraint(equalTo: safeAreaLayout.leadingAnchor),
            editorView.trailingAnchor.constraint(equalTo: safeAreaLayout.trailingAnchor),
            editorView.topAnchor.constraint(equalTo: safeAreaLayout.topAnchor), 
            editorView.bottomAnchor.constraint(equalTo: safeAreaLayout.bottomAnchor)
        ])

    }


}

