//
//  ViewController.swift
//  Example
//
//  Created by 王笑宇 on 2/23/25.
//

import UIKit
import XYNotesEditor

class ViewController: UIViewController {

    lazy var editorView: TextView = {

        let view = TextView()
        view.backgroundColor = .systemGreen
        view.automaticallyAdjustsScrollIndicatorInsets = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        
        view.addSubview(editorView)
        let layout = view.readableContentGuide
        NSLayoutConstraint.activate([
            editorView.leadingAnchor.constraint(equalTo: layout.leadingAnchor, constant: 0),
            editorView.trailingAnchor.constraint(equalTo: layout.trailingAnchor, constant: 0),
            editorView.topAnchor.constraint(equalTo: layout.topAnchor, constant: 0),
            editorView.bottomAnchor.constraint(equalTo: layout.bottomAnchor,constant: 0)
        ])
        
    }


}

