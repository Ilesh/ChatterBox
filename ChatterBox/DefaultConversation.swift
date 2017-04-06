//
//  DefaultConversation.swift
//  ChatterBox
//
//  Created by Maneesh Madan on 05/04/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import JSQMessagesViewController


public enum Setting: String{
//    case removeBubbleTails = "Remove message bubble tails"
    case removeSenderDisplayName = "Remove sender Display Name"
    case removeAvatar = "Remove Avatars"
}

// User Enum to make it easyier to work with.

let persons = ["Aditya", "Nitin", "Woza", "Tim", "Varun"]
let profileImages: [UIImage] = [#imageLiteral(resourceName: "profileImage"), #imageLiteral(resourceName: "alex"), #imageLiteral(resourceName: "demo_avatar_woz"), #imageLiteral(resourceName: "keyboard"), #imageLiteral(resourceName: "ball")]
enum User: String {
    case Aditya    = "053496-4509-288"
    case Nitin    = "053496-4509-290"
    case Varun       = "707-8956784-57"
    case Tim       = "468-768355-23123"
    case Woza    = "309-41802-93823"
}

// Helper Function to get usernames for a secific User.
func getName(_ user: User) -> String{
    switch user {
    case .Aditya:
        return "Aditya Sharma"
    case .Nitin:
        return "Nitin Bhatt"
    case .Woza:
        return "Woza Wozniak"
    case .Tim:
        return "Tim Leonard"
    case .Varun:
        return "Varun Wadhwa"
    }
}

func getUser(_ user: String) -> User {
    switch user {
    case "Aditya":
        return .Aditya
    case "Nitin":
        return .Nitin
    case "Woza":
        return .Woza
    case "Tim":
        return .Tim
    case "Varun":
        return .Varun
    default:
        return .Aditya
    }
}

// Create Unique IDs for avatars
//let AvatarIDAditya = "053496-4509-288"
//let AvatarIDNitin = "053496-4509-289"
//let AvatarIdTim = "468-768355-23123"
//let AvatarIdVarun = "707-8956784-57"
//let AvatarIdWoza = "309-41802-93823"

func getUserId(_ user: User) -> String {
    switch user {
    case .Aditya:
        return "053496-4509-288"
    case .Nitin:
        return "053496-4509-290"
    case .Woza:
        return "309-41802-93823"
    case .Tim:
        return "468-768355-23123"
    case .Varun:
        return "707-8956784-57"
    }
}

// Create an avatar with Image

let AvatarAditya = JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: #imageLiteral(resourceName: "profileImage"), diameter: 20)!//   (withUserInitials: "AS", backgroundColor: UIColor.jsq_messageBubbleGreen(), textColor: UIColor.white, font: UIFont.systemFont(ofSize: 12), diameter: 20)!

let AvatarNitin = JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: #imageLiteral(resourceName: "alex"), diameter: 20)!//(withUserInitials: "NB", backgroundColor: UIColor.gray, textColor: UIColor.white, font: UIFont.systemFont(ofSize: 12), diameter: 20)!

// Create avatar with Placeholder Image
let AvatarWoza = JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: #imageLiteral(resourceName: "demo_avatar_woz"), diameter: 20)!

let AvatarTim = JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: #imageLiteral(resourceName: "keyboard"), diameter: 20)!//(withUserInitials: "TL", backgroundColor: UIColor.jsq_messageBubbleGreen(), textColor: UIColor.white, font: UIFont.systemFont(ofSize: 12), diameter: 20)!

let AvatarVarun = JSQMessagesAvatarImageFactory.avatarImage(withPlaceholder: #imageLiteral(resourceName: "ball"), diameter: 20)!//(withUserInitials: "VW", backgroundColor: UIColor.gray, textColor: UIColor.white, font: UIFont.systemFont(ofSize: 12), diameter: 20)!

// Helper Method for getting an avatar for a specific User.
func getAvatar(_ id: String) -> JSQMessagesAvatarImage{
    let user = User(rawValue: id)!
    
    switch user {
    case .Aditya:
        return AvatarAditya
    case .Nitin:
        return AvatarNitin
    case .Woza:
        return AvatarWoza
    case .Tim:
        return AvatarTim
    case .Varun:
        return AvatarVarun
    }
}

