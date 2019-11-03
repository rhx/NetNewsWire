//
//  AppAssets.swift
//  NetNewsWire
//
//  Created by Maurice Parker on 4/8/19.
//  Copyright © 2019 Ranchero Software. All rights reserved.
//
import UIKit
import RSCore
import Account

struct AppAssets {
	
	static let layerSpeed: Float = 1.0

	static var accountLocalPadImage: UIImage = {
		return UIImage(named: "accountLocalPad")!
	}()

	static var accountLocalPhoneImage: UIImage = {
		return UIImage(named: "accountLocalPhone")!
	}()

	static var accountFeedbinImage: UIImage = {
		return UIImage(named: "accountFeedbin")!
	}()

	static var accountFreshRSSImage: UIImage = {
		return UIImage(named: "accountFreshRSS")!
	}()

	static var articleExtractorError: UIImage = {
		return UIImage(named: "articleExtractorError")!
	}()

	static var articleExtractorOff: UIImage = {
		return UIImage(named: "articleExtractorOff")!
	}()

	static var articleExtractorOffTinted: UIImage = {
		let image = UIImage(named: "articleExtractorOff")!
		return image.maskWithColor(color: AppAssets.primaryAccentColor.cgColor)!
	}()

	static var articleExtractorOn: UIImage = {
		return UIImage(named: "articleExtractorOn")!
	}()

	static var articleExtractorOnTinted: UIImage = {
		let image = UIImage(named: "articleExtractorOn")!
		return image.maskWithColor(color: AppAssets.primaryAccentColor.cgColor)!
	}()

	static var avatarBackgroundColor: UIColor = {
		return UIColor(named: "avatarBackgroundColor")!
	}()

	static var barBackgroundColor: UIColor = {
		return UIColor(named: "barBackgroundColor")!
	}()

	static var circleClosedImage: UIImage = {
		return UIImage(systemName: "largecircle.fill.circle")!
	}()
	
	static var circleOpenImage: UIImage = {
		return UIImage(systemName: "circle")!
	}()
	
	static var disclosureImage: UIImage = {
		return UIImage(named: "disclosure")!
	}()
	
	static var copyImage: UIImage = {
		return UIImage(systemName: "doc.on.doc")!
	}()
	
	static var deactivateImage: UIImage = {
		UIImage(systemName: "minus.circle")!
	}()
	
	static var editImage: UIImage = {
		UIImage(systemName: "square.and.pencil")!
	}()
	
	static var faviconTemplateImage: RSImage = {
		return RSImage(named: "faviconTemplateImage")!
	}()
	
	static var fullScreenBackgroundColor: UIColor = {
		return UIColor(named: "fullScreenBackgroundColor")!
	}()

	static var infoImage: UIImage = {
		UIImage(systemName: "info.circle")!
	}()
	
	static var markAllInFeedAsReadImage: UIImage = {
		return UIImage(systemName: "asterisk.circle")!
	}()
	
	static var markOlderAsReadDownImage: UIImage = {
		return UIImage(systemName: "arrowtriangle.down.circle")!
	}()
	
	static var markOlderAsReadUpImage: UIImage = {
		return UIImage(systemName: "arrowtriangle.up.circle")!
	}()
	
	static var masterFolderImage: UIImage = {
		return UIImage(systemName: "folder.fill")!
	}()
	
	static var moreImage: UIImage = {
		return UIImage(systemName: "ellipsis.circle")!
	}()
	
	static var openInSidebarImage: UIImage = {
		return UIImage(systemName: "arrow.turn.down.left")!
	}()
	
	static var primaryAccentColor: UIColor = {
		return UIColor(named: "primaryAccentColor")!
	}()
	
	static var safariImage: UIImage = {
		return UIImage(systemName: "safari")!
	}()
	
	static var searchFeedImage: UIImage = {
		return UIImage(systemName: "magnifyingglass")!
	}()
	
	static var secondaryAccentColor: UIColor = {
		return UIColor(named: "secondaryAccentColor")!
	}()
	
	static var sectionHeaderColor: UIColor = {
		return UIColor(named: "sectionHeaderColor")!
	}()
	
	static var shareImage: UIImage = {
		return UIImage(systemName: "square.and.arrow.up")!
	}()
	
	static var smartFeedImage: UIImage = {
		return UIImage(systemName: "gear")!
	}()
	
	static var starColor: UIColor = {
		return UIColor(named: "starColor")!
	}()
	
	static var starClosedImage: UIImage = {
		return UIImage(systemName: "star.fill")!
	}()
	
	static var starOpenImage: UIImage = {
		return UIImage(systemName: "star")!
	}()
	
	static var starredFeedImage: UIImage = {
		return UIImage(systemName: "star.fill")!
	}()

	static var timelineStarImage: UIImage = {
		let image = UIImage(systemName: "star.fill")!
		return image.withTintColor(AppAssets.starColor, renderingMode: .alwaysOriginal)
	}()
	
	static var todayFeedImage: UIImage = {
		return UIImage(systemName: "sun.max.fill")!
	}()

	static var trashImage: UIImage = {
		return UIImage(systemName: "trash")!
	}()
	
	static var unreadFeedImage: UIImage = {
		return UIImage(systemName: "largecircle.fill.circle")!
	}()
	
	static var vibrantTextColor: UIColor = {
		return UIColor(named: "vibrantTextColor")!
	}()

	static var controlBackgroundColor: UIColor = {
		return UIColor(named: "controlBackgroundColor")!
	}()

	static func image(for accountType: AccountType) -> UIImage? {
		switch accountType {
		case .onMyMac:
			if UIDevice.current.userInterfaceIdiom == .pad {
				return AppAssets.accountLocalPadImage
			} else {
				return AppAssets.accountLocalPhoneImage
			}
		case .feedbin:
			return AppAssets.accountFeedbinImage
		case .freshRSS:
			return AppAssets.accountFreshRSSImage
		default:
			return nil
		}
	}
	
}
