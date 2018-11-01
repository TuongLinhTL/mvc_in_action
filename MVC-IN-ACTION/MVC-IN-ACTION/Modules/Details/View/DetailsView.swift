//  
//  DetailsView.swift
//  MVC-IN-ACTION
//
//  Created by Maksim Vialykh on 25/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

protocol DetailsViewInput: class, FeedItemViewType {
    var closeAction: (() -> Void)? { get set }
}

final class DetailsView: UIView {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var text: UILabel!
    
    var closeAction: (() -> Void)?
    
    @IBAction func rightNavigationItemDidTap(_ sender: Any) {
        closeAction?()
    }
    
}

// MARK: - DetailsViewInput
extension DetailsView: DetailsViewInput {
    
    func display(_ item: FeedItem) {
        image.load(item.image)
        title.text = item.title
        text.text = item.text
    }
    
}
