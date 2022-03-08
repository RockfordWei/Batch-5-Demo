//
//  UISearchListViewRouter.swift
//  Batch 5 Demo
//
//  Created by Rockford Wei on 2022-03-08.
//

import UIKit

protocol UISearchListViewRouter {
    func loadDetailViewController(id: Int) -> UIViewController
}
