//
//  ViewController.swift
//  UIScrollViewFrameAndBounds
//
//  Created by Vasnev Anton Mikhaylovich on 23.04.2022.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - Private Properties

	private lazy var scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.delegate = self
		scrollView.backgroundColor = .systemGray
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		scrollView.alwaysBounceVertical = true
		scrollView.showsVerticalScrollIndicator = true
		return scrollView
	}()

	private lazy var contentView: UIView = {
		let contentView = UIView()
		contentView.backgroundColor = .systemGreen
		contentView.translatesAutoresizingMaskIntoConstraints = false
		return contentView
	}()

	// MARK: - Lifecycle

	override func viewDidLoad() {
		layout()
	}

	// MARK: - Private Methods

	private func layout() {
		view.addSubview(scrollView)
		scrollView.addSubview(contentView)
		scrollView.frame = view.frame
		contentView.frame = CGRect(x: 0, y: 0, width: 100, height: 500)
	}
}

// MARK: - UIScrollViewDelegate

extension ViewController: UIScrollViewDelegate {
	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		print("scrollViewDidScroll:")
		print("scrollView.frame: \(scrollView.frame)")
		print("scrollView.bounds: \(scrollView.bounds)")
		print("scrollView.contentOffset: \(scrollView.contentOffset)")
	}
}
