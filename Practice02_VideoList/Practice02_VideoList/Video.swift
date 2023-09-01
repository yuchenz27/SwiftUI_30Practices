//
//  Video.swift
//  Practice02_VideoList
//
//  Created by Yuchen Zhang on 2023/9/1.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    static let topTen = [
        Video(imageName: "why-iam-so-good-at-coding", 
              title: "Why I'm so good at coding.",
              description: """
              "Ex-Google/ex-Facebook TechLead exposes why he's so good at programming.  Thanks to our sponsor Skillshare, an online learning community - get your FREE 2 month trial at http://skl.sh/techlead7.
              
              Join me in DeFi Pro and make passive income with crypto. http://defipro.dev/
              Join ex-Google/ex-Facebook engineers for my coding interview training: https://techinterviewpro.com/
              💻 100+ Videos of programming interview problems explained: https://coderpro.com/
              📷 Learn how to build a $1,000,000+ business on YouTube: http://youtubebackstage.com/
              💻 Sign up for my FREE daily coding interview practice: http://dailyinterviewpro.com/

              🛒 All my computer/camera gear: https://www.amazon.com/shop/techlead/...
              ⌨️ My favorite keyboards: http://iqunix.store/techlead

              🎉 Party up:
              https://instagram.com/techleadhd/
              https://twitter.com/techleadhd/

              Disclosure: Some links are affiliate links to products. I may receive a small commission for purchases made through these links.
               #techlead
              """,
              viewCount: 2020288,
              uploadDate: "14 Oct 2019",
              url: URL(string: "https://www.youtube.com/watch?v=xqgH9j3x2OE")!),
        
        Video(imageName: "pointers-in-cpp",
              title: "POINTERS in C++",
              description: """
              Twitter ► https://twitter.com/thecherno
              Instagram ► https://instagram.com/thecherno
              Patreon ► https://patreon.com/thecherno

              Series Playlist ►

               • C++

              ----------------------------------------------------------------------------------------------------------------

              BEST laptop for programming! ► http://geni.us/pakTES
              My FAVOURITE keyboard for programming! ► http://geni.us/zNhB
              My FAVOURITE monitors for programming! ► http://geni.us/Ig6KBq

              MAIN Camera ► http://geni.us/CYUQ
              MAIN Lens ► http://geni.us/ZM3CmG
              Microphone ► http://geni.us/wqO6g7K

              ----------------------------------------------------------------------------------------------------------------

              Slack ► https://slack.thecherno.com
              Stream ► http://www.twitch.tv/thecherno
              Website ► http://www.thecherno.com
              Facebook ► http://www.facebook.com/thecherno
              """,
              viewCount: 910542,
              uploadDate: "11 Jun 2017",
              url: URL(string: "https://www.youtube.com/watch?v=DTxHyVn0ODg&t=396s")!),
        
        Video(imageName: "how-to-make-a-website-in-2023",
              title: "How To Build A Website in 2023",
              description: """
              Everyone should have their own website. It's something I've always stood by and in this video I'll be going over everything you need to know about setting up a website from why create a personal website to how to pick a platform & domain and, finally, what to do with it once you have it.

              👉 Start using Ghost: http://ghost.org/ali
              AND...
              👉 You can get my website theme here: https://superthemes.co/ali-abdaal/
              AND...
              👉 Start using WordPress: https://go.aliabdaal.com/wpengine

              My housemate Sheen has been working on her personal website for a while now and her life has changed because of it. Check out her project here: https://www.sheengurrib.com/

              Sheen's New YouTube Channel -

               / @sheengurrib

              00:00 Intro
              00:51 Why you should have a website
              06:03 How to create a website
              14:27 What to do with it

              💌  Sign up to my weekly email newsletter - https://go.aliabdaal.com/subscribe-su...

              MY FREE ONLINE COURSES:
              🚀  Productivity Masterclass - Principles and Tools to Boost Your Productivity -
               https://go.aliabdaal.com/course/produ...
              🎓  How to Study for Exams - An Evidence-Based Masterclass - https://go.aliabdaal.com/course/studying
              🎬 YouTube for Beginners - Everything You Need To Know To Start  - https://go.aliabdaal.com/course/YouTu...

              MY CREATOR COURSES
              🎬 Check out my free 7 day email course on how to become a part-time YouTuber: https://aliabdaal.com/part-time-youtu...
              🏆 Creatorpreneur - My flagship course for scaling up your creative side-hustle → https://creatorpreneur.academy/course
              🗣 Camera Confidence - My self-paced course on how to improve your creativity, career, or communication skills → https://cameraconfidence.aliabdaal.com/

              MY FAVOURITE GEAR
              🎥  My YouTube Camera Gear - https://kit.co/AliAbdaal
              ⌨️  My Keyboard - Wireless Coral mechanical keyboard (Cherry Blue) -https://go.aliabdaal.com/keyboard
              📝  My favourite iPad Screen Protector - Paperlike - https://go.aliabdaal.com/paperlike
              🎒 My Desk Accessories + Todo List - Ugmonk - https://go.aliabdaal.com/ugmonk

              🎙 Check out my weekly podcast, Deep Dive -

               / deepdivewithaliabdaal   - It's also available on all podcast platforms, including Spotify, Apple Podcasts etc.

              MY FAVOURITE TOOLS
              🚀 VidIQ - How I optimise my YouTube videos - https://go.aliabdaal.com/vidiq
              ✍️ Shortform - The BEST summaries of books - https://go.aliabdaal.com/shortform
              📚  Readwise - How I remember what I read - https://go.aliabdaal.com/readwise
              🎵  Epidemic Sound - Where I get my music (amazing for YouTubers) - https://go.aliabdaal.com/epidemicsound

              MY KEY LINKS
              🌍  My website / blog - https://www.aliabdaal.com/
              🐦  Twitter - https://twitter.com/aliabdaal
              📸  Instagram - https://instagram.com/aliabdaal

              WHO AM I:
              I’m Ali, a YouTuber, podcaster, soon-to-be author and ex-Doctor working in London, UK. I make videos that explore the strategies and tools that help us live happier, healthier and more productive lives. I also have a weekly podcast called Deep Dive (https://www.youtube.com/channel/UChfo..., and I write a weekly email newsletter that contains some quick thoughts + links to interesting things (https://go.aliabdaal.com/subscribe-su....

              PS: Some of the links in this description are affiliate links that I get a kickback from 😜
              """,
              viewCount: 1758649,
              uploadDate: "12 Apr 2021",
              url: URL(string: "https://www.youtube.com/watch?v=acBJsjCqgtM&list=LL&index=27")!),
        
        Video(imageName: "the-truth-about-ai-getting-creative",
              title: "The Truth About AI Getting \"Creative\"",
              description: """
              Let's talk about AI Art, Lensa, ChatGPT, and why it's all deeper than you think.

              Save money with Karma at https://shop.karmanow.com/marques_dec22 and get double the Karma cash for a limited time!

              The sweater: http://shop.MKBHD.com

              Search LAION-5B: https://haveibeentrained.com

              Tech I'm using right now: https://www.amazon.com/shop/MKBHD

              Intro Track:

               / 20syl
              Playlist of MKBHD Intro music: https://goo.gl/B3AWV5

              0:00 AI Art vs Creators
              1:50 An Incredible AI Chat Bot
              3:00 My Take on AI Tools
              5:20 The Imperfections
              8:20 AI Stealing Art Without Consent
              14:08 Karma!

              ~
              http://twitter.com/MKBHD
              http://instagram.com/MKBHD
              http://facebook.com/MKBHD
              """,
              viewCount: 2962720,
              uploadDate: "10 Dec 2022",
              url: URL(string: "https://www.youtube.com/watch?v=0gNauGdOkro&list=LL&index=55")!),
        
        Video(imageName: "object-polling-in-unity",
              title: "OBJECT POOLING in Unity",
              description: """
              Get Skillshare: http://skl.sh/brackeys2

              Speed up your game by setting up Object Pooling in Unity!

              ● Singleton Pattern: http://wiki.unity3d.com/index.php/Sin...
              ● Generic Unity Object Pooler: https://github.com/Rfrixy/Generic-Uni...
              ● EZ Object Pools: https://assetstore.unity.com/packages...

              ♥ Support Brackeys on Patreon: http://patreon.com/brackeys/

              ····················································································

              ♥ Donate: http://brackeys.com/donate/
              ♥ Subscribe: http://bit.ly/1kMekJV

              ● Website: http://brackeys.com/
              ● Facebook: https://facebook.com/brackeys/
              ● Twitter: https://twitter.com/BrackeysTweet/

              ········································­­·······································­·­····

              Edited by the awesome Sofibab and Lebonques.

              ········································­­·······································­·­····

              ► All content by Brackeys is 100% free. We believe that education should be available for everyone. Any support is truly appreciated so we can keep on making the content free of charge.

              ········································­­·······································­·­····
              ♪ Baby Plays Electro Games
                 http://teknoaxe.com/cgi-bin/link_code...
              """,
              viewCount: 414547,
              uploadDate: "12 Feb 2018",
              url: URL(string: "https://www.youtube.com/watch?v=tdSmKaJvCoA&list=LL&index=100&t=657s")!),
        
        Video(imageName: "huhao",
              title: "盘点那些看起来就很会打球的行为！这个视频看完后会让你在球场上看起来很“强大”！！！",
              description: """
              购买篮球训练计划 +微信：HuHaoTraining
              约课 坐标LA +微信：HuHaoHangtime

              感恩！！
              """,
              viewCount: 5413,
              uploadDate: "9 Mar 2022",
              url: URL(string: "https://www.youtube.com/watch?v=Prj5LpyS-hQ&list=LL&index=200")!),
        
        Video(imageName: "tian-tian-nian-nian",
              title: "孫燕姿 天天年年 Official music video / Sun Yanzi A Day; A Year",
              description: """
              從女孩成為女人，經過一天天又一年年…
              喚醒記憶最美麗的那一刻
              和你一起回憶 時光裡的 [天天年年]

              歌曲一開始，用了六〇年代的樂器Mellotron，彷彿回到了過去的記憶。這是一首「從女孩成為女人，經過了一天天又一年年」的故事，也是寫給大家的故事。燕姿輕輕的唱起了淡淡旋律，我們彷彿被喚醒記憶中最美麗的那一刻，深刻投射出完整的畫面，每一根琴弦細膩的游走旋律之間，所感受到的不僅止於雙耳之間的溫柔，就像搭乘時光列車，一同回顧過去最初的那種單純與美好。

              你的天天年年  又是哪一幕呢?

              -
              孫燕姿 No.13 作品: 跳舞的梵谷
              首首單曲發行  皆稱霸各大數位排行榜
              再一波好評推薦  [天天年年]

              數位平台往這裡 https://lnk.to/YSWorks13

              環球音樂官方facebook：
              https://www.facebook.com/universalmus...
              環球音樂官方instagram：
              https://www.instagram.com/umgtaiwan/
              訂閱環球音樂Youtube頻道：
              https://goo.gl/8KYhDU

              -
              天天年年
              詞：易家揚
              曲：李偲菘
              製作：李偲菘

              墨色的雲下女孩生日那一天
              湛藍的清晨國中畢業前一天
              橘紅的晚霞女人失戀第一天
              那天那年 可多像一眨眼

              雷聲的瞬間總愛飛走的麻雀
              無聲的孤單老是讓我想好遠
              笑聲的背後可能會有人失眠
              聽著眼淚 碰撞世界

              當我們一邊走路一邊紀念
              但一不小心又把一天走成一年
              陪時光盪鞦韆 每受一次傷學一點
              很久以後 再去懷念

              讓我們一邊尋覓一邊虧欠
              拿起初的心再把一天走成一年
              那女孩作的夢 被微風吹的那麼遠
              快看不見 還好我記住那一天

              下雨的時候女孩聽著舊音樂
              下雪的巷口女生在等一張臉
              下一次再見女人要等好多年
              愛讓我們 真心幾遍

              那有朵白雲的一天
              """,
              viewCount: 3051644,
              uploadDate: "11 Dec 2017",
              url: URL(string: "https://www.youtube.com/watch?v=T1I2ksOZJbI&list=LL&index=380")!),
        
        Video(imageName: "you-nao-tian-tang",
              title: "【震撼】活著看到天堂的方法 ，需要反覆體會的一期 | 老高與小茉 Mr & Mrs Gao",
              description: """
              【加入會員按鈕】

               / @laogao
              【訂閱頻道按鈕】https://goo.gl/VhzZeS
              ------------------------------------------------
              相關鏈接：

              超出你想象的深海世界
                

               • 超出你想象的深海世界 | 老高與小茉 Mr & Mrs Gao

              【神作】四十分鐘講完三體
                

               • 【神作】四十分鐘講完三體 | 老高與小茉 Mr & Mrs Gao

              目前第二長的一期，多重人格分裂
                

               • 目前第二長的一期，多重人格分裂 | 老高與小茉 Mr & Mrs Gao

              人為什麼是人，人類最不可思議的六個特征
                

               • 人為什麼是人，人類最不可思議的六個特征 | 老高與小茉 Mr & Mrs Gao

              【震撼】這是一部解開所有宇宙之謎的影片
                

               • 【震撼】這是一部解開所有宇宙之謎的影片 | 老高與小茉 Mr & Mrs Gao

              【震撼】這是一部你明天還會再看一遍的影片
                

               • 【震撼】這是一部你明天還會再看一遍的影片 | 老高與小茉 Mr & Mrs...

              南極和北極，地球上最不可思議的兩個地方
                

               • 南極和北極，地球上最不可思議的兩個地方 | 老高與小茉 Mr & Mrs Gao

              千萬不要去！世界十大人類禁地
                

               • 千萬不要去！世界十大人類禁地 | 老高與小茉 Mr & Mrs Gao

              目前信息量最大的一期，重力
                

               • 目前信息量最大的一期，重力 | 老高與小茉 Mr & Mrs Gao

              人類的隱藏能力，從氣功到超能力還有另一個世界的存在
                

               • 人類的隱藏能力，從氣功到超能力還有另一個世界的存在 | 老高與小茉 Mr ...

              超出你想象的地球故事
                

               • 超出你想象的地球故事 | 老高與小茉 Mr & Mrs Gao

              目前最長的一期，只有五歲抬頭才能看懂的天能（信条）
                

               • 目前最長的一期，只有五歲抬頭才能看懂的天能（信条） | 老高與小茉 Mr ...

              【震撼】2045年，人類究竟是滅絕還是成神
                

               • 【震撼】2045年，人類究竟是滅絕還是成神 | 老高與小茉 Mr & Mr...

              【震撼】智商200也無法解答，宇宙最大的謎團，時間
                

               • 【震撼】智商200也無法解答，宇宙最大的謎團，時間 | 老高與小茉 Mr ...

              現代技術也無法再現的七個奇跡
                

               • 現代技術也無法再現的七個奇跡 | 老高與小茉 Mr & Mrs Gao

              【震撼】海奧華預言，人類起源，耶穌是誰，金字塔之謎，你想知道的答案這裡都有
                

               • 【震撼】海奧華預言，人類起源，耶穌是誰，金字塔之謎，你想知道的答案這裡都有...

              【神作】三十六分鐘完全解説這部完美閉合的漫畫
                

               • 【神作】三十六分鐘完全解説這部完美閉合的漫畫 | 老高與小茉 Mr & M...

              前往地球中心的旅行，超出你想象的地下世界
                

               • 前往地球中心的旅行，超出你想象的地下世界 | 老高與小茉 Mr & Mrs...

              人類不能再次登上月球的真正原因真是難以置信
                

               • 人類不能再次登上月球的真正原因真是難以置信 | 老高與小茉 Mr & Mr...

              “他們”究竟是誰？比金字塔還誇張的遠古文明
                

               • “他們”究竟是誰？比金字塔還誇張的遠古文明 | 老高與小茉 Mr & Mr...

              最神奇的星球，地球以及人類存在的真正原因
                

               • 最神奇的星球，地球以及人類存在的真正原因 | 老高與小茉 Mr & Mrs...

              神作！星際效應，用最簡單的方式告訴你什麽是五維時空
                

               • 神作！星際效應，用最簡單的方式告訴你什麽是五維時空 | 老高與小茉 Mr ...

              天堂的證明，一個你這輩子都看不到的世界
                

               • 天堂的證明，一個你這輩子都看不到的世界 | 老高與小茉 Mr & Mrs Gao

              人類不能知道的秘密，人族的故事
                

               • 人類不能知道的秘密，人族的故事 | 老高與小茉 Mr & Mrs Gao

              可怕的巨大史前生物，我們該慶幸它們已經滅絕了
                

               • 可怕的巨大史前生物，我們該慶幸它們已經滅絕了 | 老高與小茉 Mr & M...

              人類消失一萬年後，一切都不見了，只有“它”還在
                

               • 人類消失一萬年後，一切都不見了，只有“它”還在 | 老高與小茉 Mr & ...

              目前介紹過的最厲害的一位，此人兩歲就能抬頭
                

               • 目前介紹過的最厲害的一位，此人兩歲就能抬頭 | 老高與小茉 Mr & Mr...

              一萬年後的世界不會比現在更先進的真正原因
                

               • 一萬年後的世界不會比現在更先進的真正原因 | 老高與小茉 Mr & Mrs...

              目前最搞笑的一期，我們本來都是神但由於選擇了美貌而變成了人
                

               • 目前最搞笑的一期，我們本來都是神但由於選擇了美貌而變成了人 | 老高與小茉...

              宇宙有多大，人類最遠可以到達宇宙的什麽地方
                

               • 宇宙有多大，人類最遠可以到達宇宙的什麽地方 | 老高與小茉 Mr & Mr...

              它的下面埋藏著關於世界末日的重要信息
                

               • 它的下面埋藏著關於世界末日的重要信息 | 老高與小茉 Mr & Mrs Gao

              目前最細思極恐的一期，二十五號宇宙
                

               • 目前最細思極恐的一期，二十五號宇宙 | 老高與小茉 Mr & Mrs Gao

              【雖然被警告不要說】但是我還是決定公開這一期
                

               • 【雖然被警告不要說】但是我還是決定公開這一期 | 老高與小茉 Mr & M...

              人類的極限，壽命的極限是多少，可以多久不吃飯不睡覺
                

               • 人類的極限，壽命的極限是多少，可以多久不吃飯不睡覺 | 老高與小茉 Mr ...

              驚人證據揭示地下世界的存在，他們究竟是誰
                

               • 驚人證據揭示地下世界的存在，他們究竟是誰 | 老高與小茉 Mr & Mrs...

              突然消失的百慕大三角
                

               • 突然消失的百慕大三角 | 老高與小茉 Mr & Mrs Gao

              【震撼】看完這期你就無敵了，史上最強戰術，不戰而勝的奧義，孫子兵法
                

               • 【震撼】看完這期你就無敵了，史上最強戰術，不戰而勝的奧義，孫子兵法 | 老...

              1萬2千年前的這個裝置究竟是用來做什麼的
                

               • 1萬2千年前的這個裝置究竟是用來做什麼的 | 老高與小茉 Mr & Mrs...

              【月球第三部】人類無法再次登月的另一種可能
                

               • 【月球第三部】人類無法再次登月的另一種可能 | 老高與小茉 Mr & Mr...

              【震撼】亞特蘭蒂斯真的找到了，神，真的存在過
                

               • 【震撼】亞特蘭蒂斯真的找到了，神，真的存在過 | 老高與小茉 Mr & M...

              【摩羯座的人注意了】神就來自你們的守護星
                

               • 【摩羯座的人注意了】神就來自你們的守護星 | 老高與小茉 Mr & Mrs...

              過去可以被改變的真正原因，被討厭的勇氣
                

               • 過去可以被改變的真正原因，被討厭的勇氣 | 老高與小茉 Mr & Mrs Gao

              【目前最長影片】人類不能知道的，完全另一個版本的世界的真相
                

               • 【目前最長影片】人類不能知道的，完全另一個版本的世界的真相 | 老高與小茉...

              【震撼】進化，從1859到2020
                

               • 【震撼】進化，從1859到2020 | 老高與小茉 Mr & Mrs Gao

              地球上最常見卻最神奇的東西，水
                

               • 地球上最常見卻最神奇的東西，水 | 老高與小茉 Mr & Mrs Gao

              超越認知的印度
                

               • 超越認知的印度 | 老高與小茉 Mr & Mrs Gao

              【完美犯罪】又一個超超超高智商的男人
                

               • 【完美犯罪】又一個超超超高智商的男人 | 老高與小茉 Mr & Mrs Gao

              地球上智商最高的九種動物，第一名就快變成人了
                

               • 地球上智商最高的九種動物，第一名就快變成人了 | 老高與小茉 Mr & M...

              碰到就玩完了，世界上最可怕的十大海洋生物
                

               • 碰到就玩完了，世界上最可怕的十大海洋生物 | 老高與小茉 Mr & Mrs...

              雪山上發生的最不可思議的事
                

               • 雪山上發生的最不可思議的事 | 老高與小茉 Mr & Mrs Gao

              【射手座的人注意了】你們的守護星太危險，風速每秒三百公里，木星
                

               • 【射手座的人注意了】你們的守護星太危險，風速每秒三百公里，木星 | 老高與...

              【講到流淚】二十分鐘講完第一次世界大戰
                

               • 【講到流淚】二十分鐘講完第一次世界大戰 | 老高與小茉 Mr & Mrs Gao

              你所不了解的天空的世界
                

               • 你所不了解的天空的世界 | 老高與小茉 Mr & Mrs Gao

              【震撼】地球歷史的最大謎團，大洪水
                

               • 【震撼】地球歷史的最大謎團，大洪水 | 老高與小茉 Mr & Mrs Gao

              KFK預言，目前爲止最可信的一個未來人
                

               • KFK預言，目前爲止最可信的一個未來人 | 老高與小茉 Mr & Mrs Gao

              【震撼】諾亞方舟，不是神話而是預言，漢字中隱藏的秘密
                

               • 【震撼】諾亞方舟，不是神話而是預言，漢字中隱藏的秘密 | 老高與小茉 Mr...

              【不好意思，今天的標題可能嚇到各位，但我必須說】我們之間其實沒有任何關係
                

               • 【不好意思，今天的標題可能嚇到各位，但我必須說】我們之間其實沒有任何關係 ...

              人類瘟疫史，存活下來的唯一方法
                

               • 人類瘟疫史，存活下來的唯一方法 | 老高與小茉 Mr & Mrs Gao

              世界是虛擬的但有一個東西是真實的
                

               • 世界是虛擬的但有一個東西是真實的 | 老高與小茉 Mr & Mrs Gao

              【費米悖論】人類至今無法發現外星人的14種可能，越往後可能性越大
                

               • 【費米悖論】人類至今無法發現外星人的14種可能，越往後可能性越大 | 老高...

              【震撼】一切都不是巧合，2020真正的預言
                

               • 【震撼】一切都不是巧合，2020真正的預言 | 老高與小茉 Mr & Mr...

              【震撼】史上最深奧的話題，意識
                

               • 【震撼】史上最深奧的話題，意識 | 老高與小茉 Mr & Mrs Gao

              不可思议的前世記憶，可能你也有
                

               • 不可思议的前世記憶，可能你也有 | 老高與小茉 Mr & Mrs Gao

              病毒，進化
                

               • 病毒，進化 | 老高與小茉 Mr & Mrs Gao

              目前最快的影片，速度的世界
                

               • 目前最快的影片，速度的世界 | 老高與小茉 Mr & Mrs Gao

              怕海的人不要看，真實的美人魚
                

               • 怕海的人不要看，真實的美人魚 | 老高與小茉 Mr & Mrs Gao

              七個可能毀滅世界的科學實驗，其中三個還在進行中
                

               • 七個可能毀滅世界的科學實驗，其中三個還在進行中 | 老高與小茉 Mr & ...

              你的生日數字相加等於幾？如果等於369，那你註定不平凡啊
                

               • 你的生日數字相加等於幾？如果等於369，那你註定不平凡啊 | 老高與小茉 ...

              看得見摸得著卻無法解釋，世界上最大的謎團，第一集
                

               • 看得見摸得著卻無法解釋，世界上最大的謎團，第一集 | 老高與小茉 Mr &...

              十年內將會消失的職業，你如果正在做這些工作最好盡快轉行
                

               • 十年內將會消失的職業，你如果正在做這些工作最好盡快轉行 | 老高與小茉 M...

              世界上最貴的東西
                

               • 世界上最貴的東西 | 老高與小茉 Mr & Mrs Gao

              ------------------------------------------------
              推薦播放列表：

              【未來】https://goo.gl/Bq54h5

              【傳說】https://goo.gl/CpmK2Y

              【心理測試】https://goo.gl/wf5dp5

              【奇趣】https://goo.gl/Tbpiuj
              """,
              viewCount: 3066365,
              uploadDate: "Premiered on 26 Jul 2023",
              url: URL(string: "https://www.youtube.com/watch?v=Y7QGIBQZ3Rk")!),
        
        Video(imageName: "a-frame-tutorial",
              title: "Aframe Webvr - VR Development Part 2 - Transformations, Primitives & Textures",
              description: """
              Watch this tutorial series if you want to become an expert at VR development. In this series you'll learn to integrate VR into your web applications with A-frame (aframe).

              This is part 2 of my A-frame (aframe) Webvr development series. In this tutorial we will go over the basic boilerplate code and learn how to do basic transformations as well as how to apply texture.

              A-Frame is a popular html based open source development framework that is perfect for beginners wanting to get their hands into VR development.

              To introduce myself, I'm Clarentia, a software developer from New Zealand, now based in Melbourne. As the world evolves, the illusion of the gap between technology and creativity is becoming more discernible. Being a visual/digital artist at heart with a knack for engineering, my goal is to pave the way for young creative coders.

              If you enjoy this video, please like, subscribe and ring the bell :)

              Instagram:
              https://www.instagram.com/clarecreate...

              Aframe Docs:
              https://aframe.io/

              Aframe School:
              https://aframe.io/aframe-school/
              """,
              viewCount: 6122,
              uploadDate: "27 May 2020",
              url: URL(string: "https://www.youtube.com/watch?v=mETucqeOmXA&list=LL&index=11")!),
        
        Video(imageName: "lost-soul-aside",
              title: "Lost Soul Aside - TrailerHD",
              description: """
              Lost Soul Aside - TrailerHD",
                                  description: "An indie game I created using UE4.
              More information on:
              https://forums.unrealengine.com/showt...

              Music : Tybercore - Empire,Raise The Dead,Vision,Discovery
              https://tybercore.bandcamp.com/music

              Follow the game development on :
              Facebook : https://www.facebook.com/yagnbing
              Facebook Offical page:https://www.facebook.com/lostsoulaside/
              Twitter : https://twitter.com/yagnbing
              Voice Actor:Joe Millonzi http://www.joemillonzi.com/
              """,
              viewCount: 4029947,
              uploadDate: "30 Jul 2016",
              url: URL(string: "https://www.youtube.com/watch?v=z5El-yYNUwU&t=188s")!)
    ]
}
