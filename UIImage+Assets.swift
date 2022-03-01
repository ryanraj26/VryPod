//
//  UIImage+Assets.swift
//  Veryable
//
//  Created by Isaac Sheets on 8/2/21.
//  Copyright © 2021 Veryable, Inc. All rights reserved.
//

import UIKit

//i18n ignore-all
public extension UIImage {
    static func named(_ name: ImageAssetName) -> UIImage {
        return UIImage(named: name.rawValue) ?? UIImage()
    }
    
    static func aspectFitImage(inSize size: CGSize, fillColor: VColor? = nil) -> UIImage? {
        let width = self.size.width
        let height = self.size.height
        let aspectWidth = size.width / width
        let aspectHeight = size.height / height
        let scaleFactor = aspectWidth > aspectHeight ? size.height / height : size.width / width

        UIGraphicsBeginImageContextWithOptions(CGSize(width: width * scaleFactor, height: height * scaleFactor), false, 0.0)
        if let color = fillColor {
            UIGraphicsGetCurrentContext()?.setFillColor(color.color.cgColor)
        }
        self.draw(in: CGRect(x: 0.0, y: 0.0, width: width * scaleFactor, height: height * scaleFactor))

        defer {
            UIGraphicsEndImageContext()
        }

        return UIGraphicsGetImageFromCurrentImageContext()
    }
}

public enum ImageAssetName: String, CaseIterable {
    case onboardingPaused = "onboarding-paused",
         onboardingFailed = "onboarding-failed",
         preReqAlert = "pre-req-alert",
         preReqPending = "pre-req-pending",
         preReqPaused = "pre-req-paused",
         preReqFailed = "pre-req-fail",
         preReqClear = "pre-req-clear",
         preReqStep1 = "pre-req-step-1",
         preReqStep2Disabled = "pre-req-step-2-disabled",
         preReqStep2 = "pre-req-step-2",
         preReqStep3Disabled = "pre-req-step-3-disabled",
         preReqStep3 = "pre-req-step-3",
         chevron,
         doc,
         img,
         pdf,
         confetti,
         performanceArrow = "performance-arrow",
         phoneHand = "phone-hand",
         referBackground = "refer-background",
         referConfetti = "refer-confetti",
         rewardRibbon = "reward-ribbon",
         welcomeCalendar = "welcome-calendar",
         welcomeCard = "welcome-card",
         welcomeMarket = "welcome-market",
         welcomeShield = "welcome-shield",
         withdrawArrow = "withdraw-arrow",
         bank,
         bgCheck = "bg-check",
         calendar,
         card,
         certification,
         check,
         close,
         company,
         copy,
         dateRange = "date-range",
         dollarSign = "dollar-sign",
         download,
         edit,
         emptyCalendar = "empty-calendar",
         error, //TODO make sure this is used
         filter,
         gift,
         heart,
         help,
         home,
         hourglass,
         industry,
         info,
         invisible,
         locationOff = "location-off",
         location,
         marketplace,
         menu,
         minus,
         moreDots = "more-dots",
         ops,
         password,
         pending,
         person,
         phone,
         plus,
         readAll = "read-all",
         removeChip = "remove-chip",
         search,
         dashboard,
         email,
         journey,
         logout,
         notifications,
         operatorsClub = "operators-club",
         preReqs = "pre-reqs",
         settings,
         share,
         skills,
         star,
         suggested,
         time,
         trash,
         trophy,
         visible,
         warning,
         veryableicon,
         whiteLogo = "white-logo",
         apple,
         facebookSmall = "facebook-small",
         facebook,
         google,
         addToCalendar = "add-to-calendar",
         atm,
         fee,
         refresh,
         transfers,
         sendMoney = "send-money",
         manageAccountOutline = "manage-account-outline",
         manageAccountFilled = "manage-account-filled",
         cheque,
         phoneFilled = "phone-filled",
         moreHoriz = "more-horiz",
         disclosures,
         statement,
         chat,
         faqs,
         statementList = "statement-list",
         checkCircle = "check-circle",
         transferReturned = "transfer-returned",
         transferClearing = "transfer-clearing",
         greenCheck = "green-check",
         vaultLogoWhite = "vault-logo-white",
         emptyTransactions = "empty-transactions",
         vaultLogo = "vault-logo",
         veryableBlue = "veryable-blue",
         postApproved = "post-approved",
         vaultLogoBlue = "vault-logo-blue",
         lightMode = "light_mode",
         lightToggle = "light_toggle",
         darkMode = "dark_mode",
         darkToggle = "dark_toggle",
         lightModeSVG = "light_mode_svg",
         darkModeSVG = "dark_mode_svg",
         checkCircleSVG = "check_circle_svg"
}
