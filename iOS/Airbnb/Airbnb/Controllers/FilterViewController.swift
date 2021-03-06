//
//  FilterViewController.swift
//  Airbnb
//
//  Created by Chaewan Park on 2020/05/26.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

enum FilterType {
    case date, guests, price
    
    var title: String {
        switch self {
        case .date: return "체크인 — 체크아웃"
        case .guests: return "인원"
        case .price: return "가격"
        }
    }
}

final class FilterViewController: UIViewController {
    
    @IBOutlet weak var filterTitle: UILabel!
    
    var filterType: FilterType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundDim()
        configureTitle()
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    private func configureBackgroundDim() {
        view.backgroundColor = UIColor(white: 0, alpha: 0.4)
    }
    
    private func configureTitle() {
        filterTitle.text = filterType?.title
    }
}

extension FilterViewController: Identifiable { }

extension FilterViewController {
    static func instantiate(from storyboard: Storyboard,
                            presentationStyle: UIModalPresentationStyle = .overCurrentContext,
                            transitionStyle: UIModalTransitionStyle = .crossDissolve,
                            filterType: FilterType) -> Self? {
        guard let viewController = storyboard.load(viewControllerType: self) else { return nil }
        viewController.modalPresentationStyle = presentationStyle
        viewController.modalTransitionStyle = transitionStyle
        viewController.filterType = filterType
        return viewController
    }
}
