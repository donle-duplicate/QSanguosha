-- translation for YitianPackage

return {
	["#AcquireSkill"] = "%from 获得了技能 【%arg】", 
	["#ChangeKingdom"] = "%from 把 %to 的国籍由原来的 %arg 改成了 %arg2", 
	["#Jilei"] = "%from 鸡肋了 %to 的 %arg", 
	["#DanlaoAvoid"] = "%from 发动了技能【啖酪】，跳过了锦囊 %arg 对他的结算", 
	["yitian"] = "倚天", 
	["yitian_sword"] = "倚天剑", 
	["jilei:basic"] = "基本牌", 
	["jilei:equip"] = "装备牌", 
	["jilei:trick"] = "锦囊牌", 
	["shencc"] = "魏武帝", 
	["caochong"] = "曹冲", 
	["caozhi"] = "曹植", 
	["zhangjunyi"] = "张儁乂", 

	["guixin2"] = "归心", 
	["chengxiang"] = "称象", 
	["conghui"] = "聪慧", 
	["zaoyao"] = "早夭", 
	["jueji"] = "绝汲", 
	["fanji"] = "反计", 
	[":guixin2"] = "回合结束阶段，你可以做以下二选一：\
      1. 永久改变一名其他角色的势力\
      2. 永久获得一项未上场或已死亡角色的主公技。(获得后即使你不是主公仍然有效)", 
	[":chengxiang"] = "每当你受到1次伤害，你可打出X张牌(X小于等于3)，它们的点数之和与造成伤害的牌的点数相等，你可令X名角色各恢复1点体力", 
	[":conghui"] = "锁定技，你将永远跳过你的弃牌阶段", 
	[":zaoyao"] = "锁定技，回合结束时，若你的手牌大于13张，则你必须弃掉所有手牌并流失1点体力", 
	[":fanji"] = "若其他角色使用的一张以你为唯一目标的非延时锦囊牌在结算完之后进入弃牌堆，你可以立即获得它", 
	["ganzhen"] = "感甄", 
	[":ganzhen"] = "你的回合外，有人使用或打出一张黑桃或草花的基本牌时，你可以让该角色立即摸一张牌", 
	[":jueji"] = "出牌阶段，你可以弃掉两张相同颜色的牌，指定你以外的1~2名角色，直到你的下回合为止：被指定的角色下个回合摸牌阶段摸牌时，必须先让你摸一张牌，然后少摸一张牌。一回合限用一次", 
	[":jilei"] = "当你受到伤害时，说出一种牌的类别（基本牌、锦囊牌、装备牌），对你造成伤害的角色不能使用、打出或弃掉该类别的手牌直到回合结束。\
◆弃牌阶段，若仅剩不可弃的手牌且超出手牌上限时，该角色需展示其手牌。例如，若指定的是装备牌，此时该角色2点体力，同时手里有两张【闪】和三张装备牌，弃牌阶段，该角色必须把两张【闪】弃掉，然后该角色展示这三张装备牌，结束他的回合", 
	[":danlao"] = "当一个锦囊指定了不止一个目标，且你也是其中之一时，你可以立即摸一张牌，则该锦囊跳过对你的结算", 
	["guixin2:yes"] = "永久改变一名其他角色的势力或永久获得一项未上场或已死亡角色的主公技", 
	["guixin2:modify"] = "永久改变一名其他角色的势力", 
	["guixin2:obtain"] = "永久获得一项未上场或已死亡角色的主公技", 
	["guixin2:hujia"] = "护驾", 
	["guixin2:jijiang"] = "激将", 
	["guixin2:jiuyuan"] = "救援", 
	["guixin2:huangtian"] = "黄天", 
	["guixin2:xueyi"] = "血裔", 
	["guixin2:baonue"] = "暴虐", 
	["guixin2:songwei"] = "颂威", 
	[":yitian_sword"] = "1. 当你在回合外得到一张明牌【杀】时，你可以立即使用此【杀】；2. 当此剑从装备区失去时，你可用此剑指定任意一名角色受到你的1点无属性伤害", 
	["yitian_sword:yes"] = "你可以使用指定任意一名角色受到你的一点无属性伤害", 
	["@chengxiang-card"] = "请打出点数之和为 %arg 的卡牌以发动【称象】技能", 
	["@yitian-sword"] = "您在回合外获得了一张【杀】，您可以此时将此【杀】打出",
	["@jueji"] = "绝汲",	
	
	-- 陆抗
	["lukang"] = "陆抗", 
	["lukang_weiyan"] = "围堰",
	[":lukang_weiyan"] = "回合开始阶段，你可执行下列两项中的一项：              1.本回合弃牌阶段在摸牌阶段之前执行；              2.本回合摸牌阶段在弃牌阶段之后执行。              （不发动则默认正常顺序执行）" ,
	["lukang_weiyan:normal"] = "正常顺序",
	["lukang_weiyan:choice1"] = "弃牌-摸牌-出牌",
	["lukang_weiyan:choice2"] = "出牌-弃牌-摸牌",
	["#WeiyanChoice1"] = "%from 选择的行动顺序是<b>弃牌-摸牌-出牌</b>",
	["#WeiyanChoice2"] = "%from 选择的行动顺序是<b>出牌-弃牌-摸牌</b>",
	
	-- 夏侯涓
	["xiahoujuan"] = "夏侯涓",
	["lianli"] = "连理",
	["tongxin"] = "同心",
	["liqian"] = "离迁",
	["qiaocai"] = "樵采",
	[":lianli"] = "回合开始阶段，你可以选择一名男性角色，你和其进入连理状态直到你的下回合开始：该角色可以帮你出闪，你可以帮其出杀。",
	[":tongxin"] = "处于连理状态的两名角色，每受到一点伤害，你可以令你们两人各摸一张牌",
	[":liqian"] = "锁定技，当你处于连理状态时，势力为蜀；当你处于未连理状态时，势力为魏。",
	[":qiaocai"] = "当你处于未连理状态时，出牌阶段，你可以获得一名角色判定区的所有牌，每回合限一次。",
	
	["$lianli"] = "连理并蒂，比翼不疑",
	["$tongxin"] = "执子之手，与子偕老",
	["$qiaocai"] = "陟彼南山，言采其樵。未见君子，忧心惙惙",
	["~xiahoujuan"] = "行与子逝兮，归于其室",
	
	["lianli-slash"] = "连理（杀）",
	["lianli-jink"] = "连理(闪)",		
	["@lianli-slash"] = "请提供一张杀给你的连理对象",
	["@lianli-jink"] = "请提供一张闪给你的连理对象",
	
	["@@lianli-card"] = "请选择一名要连理的对象",
	["#LianliConnection"] = "%from 与 %to 结为连理",
	["@tied"] = "连理",
	
	-- 晋宣帝
	["jinxuandi"] = "晋宣帝",
	["wuling"] = "五灵",
	[":wuling"] = "回合开始阶段,你可选择一种五灵效果发动，该效果对场上所有角色生效.\
	该效果直到你的下回合开始为止.你选择的五灵效果不可与上回合重复.\
	[风]场上所有角色受到的火焰伤害+1 \
	[雷]场上所有角色受到的雷电伤害+1 \
	[水]场上所有角色使用桃时额外回复1点体力 \
	[火]场上所有角色受到的伤害均视为火焰伤害 \
	[土]场上所有角色每次受到的属性伤害至多为1.",
	["#WulingWind"] = "%from 受到【五灵（风）】的影响，火焰伤害从 %arg 上升到 %arg2",
	["#WulingThunder"] = "%from 受到【五灵（雷）】的影响，雷电伤害从 %arg 上升到 %arg2",
	["#WulingFire"] = "%from 受到【五灵（火）】的影响，伤害属性变为火焰属性",
	["#WulingWater"] = "%from 受到【五灵（水）】的影响，吃桃后额外恢复一点体力",
	["#WulingEarth"] = "%from 受到【五灵（土）】的影响，属性伤害减少至 1 点",
	
	["wuling:wind"] = "[风]场上所有角色受到的火焰伤害+1",
	["wuling:thunder"] = "[雷]场上所有角色受到的雷电伤害+1",
	["wuling:water"] = "[水]场上所有角色使用桃时额外回复1点体力",
	["wuling:fire"] = "[火]场上所有角色受到的伤害均视为火焰伤害",
	["wuling:earth"] = "[土]场上所有角色每次受到的属性伤害至多为1",
	
	["$wuling1"] = "长虹贯日，火舞旋风",
	["$wuling2"] = "追云逐电，雷动九天",
	["$wuling3"] = "云销雨霁，彩彻区明",
	["$wuling4"] = "举火燎天，星沉地动",
	["$wuling5"] = "大地光华，承天载物",
	["~jinxuandi"] = "千年恩怨，一笔勾销，历史轮回，转身忘掉",
	
	["@wind"] = "五灵(风)",
	["@thunder"] = "五灵(雷)",
	["@fire"] = "五灵(火)",
	["@water"] = "五灵(水)",
	["@earth"] = "五灵(土)",	
	
	-- 蔡昭姬
	["caizhaoji"] = "蔡昭姬",
	["guihan"] = "归汉",
	["caizhaoji_hujia"] = "胡笳",
	[":guihan"] = "出牌阶段，你可以主动弃掉两张红桃手牌或两张方块手牌，和你指定的任意一名存活角色互换位置。每回合限一次。",
	[":caizhaoji_hujia"] = "回合结束阶段，你可以进行判定：若为红色，立即获得此牌，如此往复，直到出现黑色为止，连续发动3次后武将翻面。",
	["$guihan"] = "雁南征兮欲寄边心，雁北归兮为得汉音",
	["$caizhaoji_hujia"] = "北风厉兮肃泠泠。胡笳动兮边马鸣",
	["~caizhaoji"] = "人生几何时，怀忧终年岁",	
	
	-- 陆伯言	
	["luboyan"] = "陆伯言",
	["luboyanf"] = "陆伯言(女)",
	["shenjun"] = "神君",
	[":shenjun"] = "锁定技，游戏开始时，你必须选择自己的性别。回合开始阶段，你必须倒转性别，异性角色对你造成的非雷电属性伤害无效。",
	["shaoying"] = "烧营",
	[":shaoying"] = "当你对一名不处于连环状态的角色造成一次火焰伤害时，你可进行一次判定：若判定结果为红色，则你对其下家造成一点火焰伤害。",
	["zonghuo"] = "纵火",
	[":zonghuo"] = "锁定技，你的杀始终带有火焰属性",
	["shenjun:male"] = "男性",
	["shenjun:female"] = "女性",
	["male"] = "男性",
	["female"] = "女性",
	["#ShenjunChoose"] = "%from 选择了 %arg 作为初始性别",
	["#ShenjunProtect"] = "%to 的【神君】锁定技被触发，异性(%from)的非雷电属性伤害无效",
	["#ShenjunFlip"] = "%from 的【神君】锁定技被触发，性别倒置",	
	["#Zonghuo"] = "%from 的锁定技【纵火】技能被触发，【杀】变为火焰属性",
	
	-- 钟会
	["zhongshiji"] = "钟士季",
	["gongmou"] = "共谋",
	["@conspiracy"] = "共谋",
	[":gongmou"] = "回合结束阶段,可指定一名其他角色:其在摸牌阶段摸牌后,须给你X张手牌(X为你手牌数与对方手牌数的较小值),然后你须选择X张手牌交给对方",	
	["#GongmouExchange"] = "%from 发动了【共谋】技能，与 %to 交换了 %arg 张手牌",
	
	-- 姜维
	["jiangboyue"] = "姜伯约",
	["lexue"] = "乐学",
	[":lexue"] = "出牌阶段,可令一名有手牌的其他角色展示一张手牌,若为基本牌或非延时锦囊,则你可将与该牌同花色的牌当作该牌使用或打出直到回合结束;若为其他牌,则立刻被你获得。每回合限一次",
	["xunzhi"] = "殉志",
	[":xunzhi"] = "出牌阶段,可摸三张牌并变身为任意未上场或已阵亡的蜀势力角色,若如此做,回合结束时你立即死亡",
	["$lexue1"] = "勤习出奇策,乐学生妙计",
	["$lexue2"] = "此乃五虎上将之勇",
	["$lexue3"] = "此乃诸葛武侯之智",
	["$xunzhi1"] = "丞相,计若不成,维亦无悔!",
	["$xunzhi2"] = "蜀汉英烈,忠魂佑我!",
	["~jiangboyue"] = "吾计不成,乃天命也!",
	
	-- 贾文和
	["jiawenhe"] = "贾文和",
	["dongcha"] = "洞察",
	[":dongcha"] = "回合开始阶段，你可以指定其他任意一名角色：该角色的所有手牌对你处于可见状态，直到你的本回合结束。其他任何角色都不知道你对谁发动了洞察技能，包括被洞察的角色本身",	
	["dushi"] = "毒士",
	[":dushi"] = "锁定技，杀死你的角色获得崩坏技能直到游戏结束",
	["@collapse"] = "崩坏",
	
	-- 古之恶来
	["guzhielai"] = "古之恶来",
	["sizhan"] = "死战",
	[":sizhan"] = "锁定技,当你受到伤害时，防止该伤害并获得与伤害点数等量的死战标记.你的回合结束阶段,你须弃掉所有的X个 死战标记并流失X点体力.",
	["shenli"] = "神力",
	[":shenli"] = "锁定技,出牌阶段,你使用【杀】造成的<font color='red'>第一次伤害</font>+X,X为当前死战标记数且最大为3",
	["#SizhanPrevent"] = "%from 的锁定技【死战】被触发，防止了当前的 %arg 点伤害",
	["#SizhanLoseHP"] = "%from 的锁定技【死战】被触发，流失了 %arg 点体力",
	["#ShenliBuff"] = "%from 的锁定技【神力】被触发，【杀】的伤害增加了 %arg, 达到了 %arg2 点",
	["@struggle"] = "死战",
	
	-- 邓士载
	["dengshizai"] = "邓士载",
	["zhenggong"] = "争功",
	[":zhenggong"] = "任意其他角色的回合开始前，若你的武将牌正面向上，你可以将你的武将牌翻面并立即进入你的回合，你的回合结束后，进入该角色的回合。",
	["toudu"] = "偷渡",
	[":toudu"] = "当你的武将牌背面向上时,若你受到伤害,你可以弃一张手牌并将你的武将牌翻面,若如此做,视为对任 意一名其他角色使用了一张【杀】.",
	["@zhenggong"] = "争功",
	
	["yanghu"] = "羊祜",
	["jinshen"] = "谨慎",
	[":jinshen"] = "锁定技，你不能成为【乐不思蜀】与【兵粮寸断】的目标。",
	
	-- CV
	["cv:shencc"] = "",
	["cv:caochong"] = "",
	["cv:zhangjunyi"] = "",
	["cv:lukang"] = "",
	["cv:jinxuandi"] = "宇文天启",
	["cv:xiahoujuan"] = "妙妙",
	["cv:caizhaoji"] = "妙妙",
	["cv:luboyan"] = "",
	["cv:zhongshiji"] = "",
	["cv:jiangboyue"] = "Jr. Wakaran",
	["cv:jiawenhe"] = "",
	["cv:guzhielai"] = "",
	["cv:dengshizai"] = "",
	
	["designer:shencc"] = "官方内测第三版",
	["designer:caochong"] = "太阳神上",
	["designer:zhangjunyi"] = "孔孟老庄胡",
	["designer:lukang"] = "冢冢的青藤",
	["designer:jinxuandi"] = "title2009,塞克洛",
	["designer:xiahoujuan"] = "宇文天启，艾艾艾",
	["designer:caizhaoji"] = "冢冢的青藤",
	["designer:luboyan"] = "太阳神上、冢冢的青藤",
	["designer:zhongshiji"] = "Jr. Wakaran",
	["designer:jiangboyue"] = "Jr. Wakaran, 太阳神上",
	["designer:jiawenhe"] = "氢弹",
	["designer:guzhielai"] = "Jr. Wakaran, 太阳神上",
	["designer:dengshizai"] = "Bu懂",
}

