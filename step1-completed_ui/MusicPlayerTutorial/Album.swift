//
//  Album.swift
//  MusicPlayerTutorial
//
//  Created by Keith on 4/27/20.
//  Copyright © 2020 GittieLabs. All rights reserved.
//

import Foundation

struct Album: Identifiable, Hashable, Codable{
    var id: Int
    var name: String
    var artist: String
    var albumArtString: String
    var publishDate: String
    var Description: String
}

let albumlist: [Album] = [
    .init(id: 1, name: "After Hours", artist: "The Weeknd", albumArtString: "theweeknd-after-hours", publishDate: "Feb 19, 2020",
          Description: "After Hours is the fourth studio album by Canadian singer The Weeknd. XO and Republic Records released the album on March 20, 2020. It is The Weeknd's first studio album since 2016's Starboy, following the release of the 2018 EP My Dear Melancholy. The album is dedicated to a fan, which passed away shortly before the album's release.\n\nThe standard edition has no featured artists, and the deluxe edition features remixed tracks, with guest appearances from Chromatics and Lil Uzi Vert <a href=\"http://www.last.fm/music/The+Weeknd/After+Hours\">Read more on Last.fm</a>."),
    .init(id: 2, name: "Eternal Atake", artist: "Lil Uzi", albumArtString: "eternalatake-liluzivert", publishDate: "Mar 6, 2020",
          Description: "Eternal Atake is the second studio album by American rapper Lil Uzi Vert. After being initially announced in 2018, the album was released on March 6, 2020 through Atlantic Records. The album was supported by the singles \"Futsal Shuffle 2020\" and \"That Way\". The album features a guest appearance from American singer Syd. <a href=\"http://www.last.fm/music/LIL+UZI+VERT/Eternal+Atake\">Read more on Last.fm</a>."),
    .init(id: 3, name:"bReAK mY heART", artist: "Dua Lipa", albumArtString: "dualipa-bReAK mY heART", publishDate:"Mar 25, 2020", Description: "Dua Lipa was born in London on 22 August 1995. Her first name \"Dua\" is an Albanian word which means \"love\" or \"want\". Her parents, who are ethnic Albanians from Prishtina, had left Prishtina in the 1990s. Among the schools she attended was the Sylvia Young Theatre School. She moved with her family to Kosovo in 2008, the year the country declared its independence from Serbia. At the age of 15, she moved back to London and lived with friends, because she wanted to build a career in music. She began working as a model at age 16. Lipa grew up listening to her father, the Kosovan rock singer Dukagjin Lipa, sing. At the age of 14 she began posting covers of her favourite songs by artists such as Christina Aguilera and Nelly Furtado on YouTube."),
    .init(id: 4, name: "Jesus Is King", artist: "Kanye West", albumArtString: "kaynewest-jesusisking", publishDate: "Mar 27, 2020", Description: "Jesus Is King is the ninth studio album by Kanye West, released on October 25, 2019, through GOOD Music and distributed by Def Jam Recordings. The album follows a religious theme, with West describing it as \"an expression of the gospel\". The album features an array of guest artists, including Clipse, Ty Dolla Sign, Kenny G, Fred Hammond, Ant Clemons, and his newly-formed Sunday Service group.")
]
