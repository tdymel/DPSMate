﻿--[[
Name: Babble-Boss-2.2
Revision: $Rev: 17545 $
Author(s): ckknight (ckknight@gmail.com)
Website: http://ckknight.wowinterface.com/
Documentation: http://wiki.wowace.com/index.php/Babble-Boss-2.2
SVN: http://svn.wowace.com/root/trunk/Babble-2.2/Babble-Boss-2.2
Description: A library to provide localizations for bosses.
Dependencies: AceLibrary, AceLocale-2.2
]]

if (GetLocale()=="koKR") then

local MAJOR_VERSION = "DPSBabble-Boss-2.3"
local MINOR_VERSION = tonumber(string.sub("$Revision: 17546 $", 12, -3))

if not AceLibrary then error(MAJOR_VERSION .. " requires AceLibrary") end

if not AceLibrary:HasInstance("AceLocale-2.3") then error(MAJOR_VERSION .. " requires AceLocale-2.3") end

local _, x = AceLibrary("AceLocale-2.3"):GetLibraryVersion()
MINOR_VERSION = MINOR_VERSION * 100000 + x

if not AceLibrary:IsNewVersion(MAJOR_VERSION, MINOR_VERSION) then return end

local BabbleBoss = AceLibrary("AceLocale-2.3"):new(MAJOR_VERSION)

-- uncomment below for debug information
-- BabbleBoss:EnableDebugging()

local bosses = {
	-- Costum bosses
	["Firesworn"] = true,

	["Avalanchion"] = true,
	["The Windreaver"] = true,
	["Baron Charr"] = true,
	["Princess Tempestria"] = true,
	["Grethok the Controller"] = true,
	["Patchwerk"] = true,
	["Grobbulus"] = true,
	["Gluth"] = true,
	["Feugen"] = true,
	["Stalagg"] = true,
	["Thaddius"] = true,
	["Anub'Rekhan"] = true,
	["Grand Widow Faerlina"] = true,
	["Maexxna"] = true,
	["Instructor Razuvious"] = true,
	--["Deathknight Understudy"] = true,
	["Gothik the Harvester"] = true,
	["Highlord Mograine"] = true,
	["Thane Korth'azz"] = true,
	["Lady Blaumeux"] = true,
	["Sir Zeliek"] = true,
	["The Four Horsemen"] = true,
	["Noth the Plaguebringer"] = true,
	["Heigan the Unclean"] = true,
	["Loatheb"] = true,
	["Sapphiron"] = true,
	["Kel'Thuzad"] = true,
	["Lord Victor Nefarius"] = true,
	["Nefarian"] = true,
	["Vaelastrasz the Corrupt"] = true,
	["Razorgore the Untamed"] = true,
	["Broodlord Lashlayer"] = true,
	["Chromaggus"] = true,
	["Ebonroc"] = true,
	["Firemaw"] = true,
	["Flamegor"] = true,
	["Majordomo Executus"] = true,
	["Ragnaros"] = true,
	["Baron Geddon"] = true,
	["Golemagg the Incinerator"] = true,
	["Garr"] = true,
	["Sulfuron Harbinger"] = true,
	["Shazzrah"] = true,
	["Lucifron"] = true,
	["Gehennas"] = true,
	["Magmadar"] = true,
	["Onyxia"] = true,
	["Azuregos"] = true,
	["Lord Kazzak"] = true,
	["Ysondre"] = true,
	["Emeriss"] = true,
	["Taerar"] = true,
	["Lethon"] = true,
	["High Priestess Jeklik"] = true,
	["High Priest Venoxis"] = true,
	["High Priest Thekal"] = true,
	["High Priestess Arlokk"] = true,
	["High Priestess Mar'li"] = true,
	["Jin'do the Hexxer"] = true,
	["Bloodlord Mandokir"] = true,
	["Gahz'ranka"] = true,
	["Gri'lek"] = true,
	["Hazza'rah"] = true,
	["Renataki"] = true,
	["Wushoolay"] = true,
	["Hakkar"] = true,
	["Ayamiss the Hunter"] = true,
	["Buru the Gorger"] = true,
	["General Rajaxx"] = true,
	["Lieutenant General Andorov"] = true,
	["Moam"] = true,
	["Ossirian the Unscarred"] = true,
	["Lord Kri"] = true,
	["Princess Yauj"] = true,
	["Vem"] = true,
	["The Bug Family"] = true,
	["Eye of C'Thun"] = true,
	["C'Thun"] = true,
	["Fankriss the Unyielding"] = true,
	["Princess Huhuran"] = true,
	["Ouro"] = true,
	["Battleguard Sartura"] = true,
	["The Prophet Skeram"] = true,
	["Emperor Vek'lor"] = true,
	["Emperor Vek'nilash"] = true,
	["The Twin Emperors"] = true,
	["Viscidus"] = true,
	["Alzzin the Wildshaper"] = true,
	["Ambassador Flamelash"] = true,
	["Anger'rel"] = true,
	["Archivist Galford"] = true,
	["Atal'alarion"] = true,
	["Avatar of Hakkar"] = true,
	["Bael'Gar"] = true,
	["Balnazzar"] = true,
	["Baroness Anastari"] = true,
	["Baron Rivendare"] = true,
	["Cannon Master Willey"] = true,
	["Captain Kromcrush"] = true,
	["Celebras the Cursed"] = true,
	["Crystal Fang"] = true,
	["Darkmaster Gandling"] = true,
	["Doctor Theolen Krastinov"] = true,
	["Doom'rel"] = true,
	["Dope'rel"] = true,
	["Dreamscythe"] = true,
	["Emperor Dagran Thaurissan"] = true,
	["Fineous Darkvire"] = true,
	["Gasher"] = true,
	["General Angerforge"] = true,
	["General Drakkisath"] = true,
	["Gloom'rel"] = true,
	["Golem Lord Argelmach"] = true,
	["Goraluk Anvilcrack"] = true,
	["Guard Fengus"] = true,
	["Guard Mol'dar"] = true,
	["Guard Slip'kik"] = true,
	["Gyth"] = true,
	["Halycon"] = true,
	["Hate'rel"] = true,
	["Hazzas"] = true,
	["Hearthsinger Forresten"] = true,
	["High Interrogator Gerstahn"] = true,
	["Highlord Omokk"] = true,
	["Hukku"] = true,
	["Hurley Blackbreath"] = true,
	["Hydrospawn"] = true,
	["Illyanna Ravenoak"] = true,
	["Immol'thar"] = true,
	["Instructor Malicia"] = true,
	["Jammal'an the Prophet"] = true,
	["Jandice Barov"] = true,
	["King Gordok"] = true,
	["Kirtonos the Herald"] = true,
	["Lady Illucia Barov"] = true,
	["Landslide"] = true,
	["Lethtendris"] = true,
	["Lord Alexei Barov"] = true,
	["Lord Incendius"] = true,
	["Lord Vyletongue"] = true,
	["Lorekeeper Polkelt"] = true,
	["Loro"] = true,
	["Magister Kalendris"] = true,
	["Magistrate Barthilas"] = true,
	["Magmus"] = true,
	["Maleki the Pallid"] = true,
	["Marduk Blackpool"] = true,
	["Meshlok the Harvester"] = true,
	["Mijan"] = true,
	["Morphaz"] = true,
	["Mother Smolderweb"] = true,
	["Nerub'enkan"] = true,
	["Noxxion"] = true,
	["Ogom the Wretched"] = true,
	["Overlord Wyrmthalak"] = true,
	["Phalanx"] = true,
	["Plugger Spazzring"] = true,
	["Postmaster Malown"] = true,
	["Princess Moira Bronzebeard"] = true,
	["Princess Theradras"] = true,
	["Prince Tortheldrin"] = true,
	["Pusillin"] = true,
	["Pyroguard Emberseer"] = true,
	["Ramstein the Gorger"] = true,
	["Ras Frostwhisper"] = true,
	["Rattlegore"] = true,
	["Razorlash"] = true,
	["Warchief Rend Blackhand"] = true,
	["Ribbly Screwspigot"] = true,
	["Rotgrip"] = true,
	["Seeth'rel"] = true,
	["Shade of Eranikus"] = true,
	["Shadow Hunter Vosh'gajin"] = true,
	["Solakar Flamewreath"] = true,
	["Stomper Kreeg"] = true,
	["Tendris Warpwood"] = true,
	["The Beast"] = true,
	["The Ravenian"] = true,
	["Timmy the Cruel"] = true,
	["Tinkerer Gizlock"] = true,
	["Tsu'zee"] = true,
	["Vectus"] = true,
	["Vile'rel"] = true,
	["War Master Voone"] = true,
	["Weaver"] = true,
	["Zevrim Thornhoof"] = true,
	["Zolo"] = true,
	["Zul'Lor"] = true,
	
	-- From Mendeleev
	["Cho'Rush the Observer"] = true,
	["Lord Hel'nurath"] = true,
	["Pimgib"] = true,
	["Knot Thimblejack's Cache"] = true,
	["Cannonmaster Willey"] = true,
	["Emperor Dagran Thaurissian"] = true,
	["Archmage Arugal"] = true,
	["Archmage Arugal's Voidwalker"] = true,
	["Baron Silverlaine"] = true,
	["Commander Springvale"] = true,
	["Deathsworn Captain"] = true,
	["Fenrus the Devourer"] = true,
	["Odo the Blindwatcher"] = true,
	["Razorclaw the Butcher"] = true,
	["Wolf Master Nandos"] = true,
	["Rend Blackhand"] = true,
	["Kurinnaxx"] = true,

	-- OUTLANDS
	-- XXX: These are subject to change and may not be correct.
	-- Karazhan
	["Prince Malchazzar"] = true,
	["Attumen the Huntsman"] = true,
	["Dorathee"] = true,
	["Toto"] = true,
	["Tinhead"] = true,
	["Strawman"] = true,
	["Roar"] = true,
	["Crone"] = true,
	["Romulo"] = true,
	["Julianne"] = true,
	-- Caverns of Time
	["Lieutenant Drake"] = true,
	["Captain Skarloc"] = true,
	["The Epoch Hunter"] = true,
	["Archimonde"] = true,
	-- Hellfire Ramparts
	["Watchkeeper Gargolmar"] = true,
	["Vazruden"] = true,
	["Omor the Unscarred"] = true,
	-- The Blood Furnace
	["The Maker"] = true,
	["Broggok"] = true,
	["Keli'dan the Breaker"] = true,
	-- The Shattered Halls
	["Kargath Bladefist"] = true,
	["Grand Warlock Nethekurse"] = true,
	["Warbringer O'omrogg"] = true,
	-- Magtheridon's Lair
	["Magtheridon"] = true,
	-- The Slave Pens
	["Mennu the Betrayer"] = true,
	["Rokmar the Crackler"] = true,
	["Quagmirran"] = true,
	-- The Underbog
	["Hungarfen"] = true,
	["Ghaz'an"] = true,
	["Overseer Tidewrath"] = true,
	["Claw"] = true,
	["Swamplord Musel'ek"] = true,
	["The Black Stalker"] = true,
	-- The Steamvault
	-- Serpentshrine Cavern
	["Lady Vashj"] = true,
	-- Mana Tombs
	["Pandemonius"] = true,
	["Tavarok"] = true,
	["Nexus-Prince Shaffar"] = true,
	-- Auchenai Crypts
	["Shirrak the Dead Watcher"] = true,
	["Exarch Maladaar"] = true,
	-- Sethekk Halls
	["Talon King Ikiss"] = true,
	["Darkweaver Syth"] = true,
	-- Shadow Labyrinth
	-- The Mechanar
	-- The Botanica
	-- The Arcatraz
	-- Eye of the Storm
	["Prince Kael'thas Sunstrider"] = true,
	-- Gruul's Lair
	["Gruul"] = true,
	-- Black Temple
	["Illidan Stormrage"] = true,
	-- Ring of Blood
	["Brokentoe"] = true,
	["Murkblood Twin"] = true,
	["Murkblood Twins"] = true,
	["The Blue Brothers"] = true,
	["Rokdar the Sundered Lord"] = true,
	["Skra'gath"] = true,
	["Warmaul Champion"] = true,
	["Mogor"] = true,
}

BabbleBoss:RegisterTranslations("koKR", function()
	return {
		["Avalanchion"] = "아발란치온",
		["The Windreaver"] = "칼날바람",
		["Baron Charr"] = "남작 차르",
		["Princess Tempestria"] = "공주 템페스트리아",
		["Grethok the Controller"] = "감시자 그레토크",
		["Patchwerk"] = "패치워크",
		["Grobbulus"] = "그라불루스",
		["Gluth"] = "글루스",
		["Feugen"] = "퓨진",
		["Stalagg"] = "스탈라그",
		["Thaddius"] = "타디우스",
		["Anub'Rekhan"] = "아눕레칸",
		["Grand Widow Faerlina"] = "귀부인 팰리나",
		["Maexxna"] = "맥스나",
		["Instructor Razuvious"] = "훈련교관 라주비어스",
		["Deathknight Understudy"] = "죽음의 기사 수습생",
		["Gothik the Harvester"] = "영혼의 착취자 고딕",
		["Highlord Mograine"] = "대영주 모그레인",
		["Thane Korth'azz"] = "영주 코스아즈",
		["Lady Blaumeux"] = "여군주 블라미우스",
		["Sir Zeliek"] = "젤리에크 경",
		["The Four Horsemen"] = "4인의 기병대",
		["Noth the Plaguebringer"] ="역병술사 노스",
		["Heigan the Unclean"] = "부정의 헤이건",
		["Loatheb"] = "로데브",
		["Sapphiron"] = "사피론",
		["Kel'Thuzad"] = "켈투자드",
		["Lord Victor Nefarius"] = "군주 빅터 네파리우스",
		["Nefarian"] = "네파리안",
		["Vaelastrasz the Corrupt"] = "타락한 밸라스트라즈",
		["Razorgore the Untamed"] = "폭군 서슬송곳니",
		["Broodlord Lashlayer"] = "용기대장 래쉬레이어",
		["Chromaggus"] = "크로마구스",
		["Ebonroc"] = "에본로크",
		["Firemaw"] = "화염아귀",
		["Flamegor"] = "플레임고르",
		["Majordomo Executus"] = "청지기 이그젝큐투스",
		["Ragnaros"] = "라그나로스",
		["Baron Geddon"] = "남작 게돈",
		["Golemagg the Incinerator"] = "초열의 골레마그",
		["Garr"] = "가르",
		["Sulfuron Harbinger"] = "설퍼론 사자",
		["Shazzrah"] = "샤즈라",
		["Lucifron"] = "루시프론",
		["Gehennas"] = "게헨나스",
		["Magmadar"] = "마그마다르",
		["Onyxia"] = "오닉시아",
		["Azuregos"] = "아주어고스",
		["Lord Kazzak"] = "군주 카자크",
		["Ysondre"] = "이손드레",
		["Emeriss"] = "에메리스",
		["Taerar"] = "타에라",
		["Lethon"] = "레손",
		["High Priestess Jeklik"] = "대여사제 제클릭",
		["High Priest Venoxis"] = "대사제 베녹시스",
		["High Priest Thekal"] = "대사제 데칼",
		["High Priestess Arlokk"] = "대여사제 알로크",
		["High Priestess Mar'li"] = "대여사제 말리",
		["Jin'do the Hexxer"] = "주술사 진도",
		["Bloodlord Mandokir"] = "혈군주 만도키르",
		["Gahz'ranka"] = "가즈란카",
		["Gri'lek"] = "그리렉",
		["Hazza'rah"] = "하자라",
		["Renataki"] = "레나타키",
		["Wushoolay"] = "우슬레이",
		["Hakkar"] = "학카르",
		["Ayamiss the Hunter"] = "사냥꾼 아야미스",
		["Buru the Gorger"] = "먹보 부루",
		["General Rajaxx"] = "장군 라작스",
		["Lieutenant General Andorov"] = "사령관 안도로브",
		["Moam"] = "모암",
		["Anubisath Guardian"] = "아누비사스 감시자",
		["Ossirian the Unscarred"] = "무적의 오시리안",
		["Lord Kri"] = "군주 크리",
		["Princess Yauj"] = "공주 야우즈",
		["Vem"] = "벰",
		["The Bug Family"] = "벌레 무리",
		["Eye of C'Thun"] = "쑨의 눈",
		["C'Thun"] = "쑨",
		["Anubisath Defender"] = "아누비사스 문지기",
		["Fankriss the Unyielding"] = "불굴의 판크리스",
		["Princess Huhuran"] = "공주 후후란",
		["Ouro"] = "아우로",
		["Battleguard Sartura"] = "전투감시병 살투라",
		["The Prophet Skeram"] = "예언자 스케람",
		["Emperor Vek'lor"] = "제왕 베클로어",
		["Emperor Vek'nilash"] = "제왕 베크닐라쉬",
		["The Twin Emperors"] = "쌍둥이 제왕",
		["Viscidus"] = "비시디우스",
		["Alzzin the Wildshaper"] = "칼날바람 알진",
		["Ambassador Flamelash"] = "사자 화염채찍",
		["Anger'rel"] = "Anger'rel",
		["Archivist Galford"] = "기록관 갈포드",
		["Atal'alarion"] = "아탈알라리온",
		["Avatar of Hakkar"] = "학카르의 화신",
		["Bael'Gar"] = "벨가르",
		["Balnazzar"] = "발나자르",
		["Baroness Anastari"] = "남작부인 아나스타리",
		["Baron Rivendare"] = "남작 리븐데어",
		["Cannon Master Willey"] = "포병대장 윌리",
		["Captain Kromcrush"] = "대장 크롬크러쉬",
		["Celebras the Cursed"] = "저주받은 셀레브라스",
		["Crystal Fang"] = "수정 맹독 거미",
		["Darkmaster Gandling"] = "암흑스승 간틀링",
		["Doctor Theolen Krastinov"] = "학자 테올린 크라스티노브",
		["Doom'rel"] = "운명의 문지기",
		["Dope'rel"] = "최면의 문지기",
		["Dreamscythe"] = "드림사이드",
		["Emperor Dagran Thaurissan"] = "제왕 다그란 타우릿산",
		["Fineous Darkvire"] = "파이너스 다크바이어",
		["Gasher"] = "게이셔",
		["General Angerforge"] = "사령관 앵거포지",
		["General Drakkisath"] = "사령관 드라키사스",
		["Gloom'rel"] = "그늘의 문지기",
		["Golem Lord Argelmach"] = "골렘군주 아젤마크",
		["Goraluk Anvilcrack"] = "고랄루크 앤빌크랙",
		["Guard Fengus"] = "경비병 펜구스",
		["Guard Mol'dar"] = "경비병 몰다르",
		["Guard Slip'kik"] = "경기병 슬립킥",
		["Gyth"] = "기스",
		["Halycon"] = "할리콘",
		["Hate'rel"] = "증오의 문지기",
		["Hazzas"] = "하자스",
		["Hearthsinger Forresten"] = "하스싱어 포레스턴",
		["High Interrogator Gerstahn"] = "대심문관 게르스탄",
		["Highlord Omokk"] = "대군주 오모크",
		["Hukku"] = "후쿠",
		["Hurley Blackbreath"] = "헐레이 블랙브레스",
		["Hydrospawn"] = "히드로스폰",
		["Illyanna Ravenoak"] = "일샨나 레이븐호크",
		["Immol'thar"] = "이몰타르",
		["Instructor Malicia"] = "조교 말리시아",
		["Jammal'an the Prophet"] = "예언자 잠말란",
		["Jandice Barov"] = "잔다이스 바로브",
		["King Gordok"] = "왕 고르독",
		["Kirtonos the Herald"] = "사자 키르토노스",
		["Lady Illucia Barov"] = "여군주 일루시아 바로브",
		["Landslide"] = "산사태",
		["Lethtendris"] = "레스텐드리스",
		["Lord Alexei Barov"] = "군주 알렉세이 바로브",
		["Lord Incendius"] = "군주 인센디우스",
		["Lord Vyletongue"] = "군주 바일텅",
		["Lorekeeper Polkelt"] = "현자 폴켈트",
		["Loro"] = "로로",
		["Magister Kalendris"] = "마법사 칼렌드리스",
		["Magistrate Barthilas"] = "집정관 바실라스",
		["Magmus"] = "마그무스",
		["Maleki the Pallid"] = "냉혈한 말레키",
		["Marduk Blackpool"] = "마르두크 블랙풀",
		["Meshlok the Harvester"] = "정원사 메슬로크",
		["Mijan"] = "마이잔",
		["Morphaz"] = "몰파즈",
		["Mother Smolderweb"] = "여왕 불그물거미",
		["Nerub'enkan"] = "네룹엔칸",
		["Noxxion"] = "녹시온",
		["Ogom the Wretched"] = "비운의 오그옴",
		["Overlord Wyrmthalak"] = "대군주 윔타라크",
		["Phalanx"] = "팔란스",
		["Plugger Spazzring"] = "플러거스파즈링",
		["Postmaster Malown"] = "우체국장 말로운",
		["Princess Moira Bronzebeard"] = "공주 모이라 브론즈비어드",
		["Princess Theradras"] = "공주 테라드라스",
		["Prince Tortheldrin"] = "왕자 토르텔드린",
		["Pusillin"] = "푸실린",
		["Pyroguard Emberseer"] = "불의 수호자 엠버시어",
		["Ramstein the Gorger"] = "먹보 람스타인",
		["Ras Frostwhisper"] = "라스 프로스트위스퍼",
		["Rattlegore"] = "들창어금니",
		["Razorlash"] = "칼날채찍",
		["Warchief Rend Blackhand"] = "대족장 랜드 블랜핸드",
		["Ribbly Screwspigot"] = "리블리 스크류스피곳",
		["Rotgrip"] = "썩은 아귀",
		["Seeth'rel"] = "불안의 문지기",
		["Shade of Eranikus"] = "에라니쿠스의 사령",
		["Shadow Hunter Vosh'gajin"] = "어둠사냥꾼 보쉬가진",
		["Solakar Flamewreath"] = "화염고리 솔라카르",
		["Stomper Kreeg"] = "천둥발 크리그",
		["Tendris Warpwood"] = "굽이나무 텐드리스",
		["The Beast"] = "괴수",
		["The Ravenian"] = "라베니안",
		["Timmy the Cruel"] = "잔혹한 티미",
		["Tinkerer Gizlock"] = "땜장이 기즐록",
		["Tsu'zee"] = "츄지",
		["Vectus"] = "벡투스",
		["Vile'rel"] = "타락의 문지기",
		["War Master Voone"] = "대장군 부네",
		["Weaver"] = "위버",
		["Zevrim Thornhoof"] = "제브림 쏜후프",
		["Zolo"] = "졸로",
		["Zul'Lor"] = "줄로",
		
		-- From Mendeleev
		["Cho'Rush the Observer"] = "정찰병 초루쉬",
		["Lord Hel'nurath"] = "군주 헬누라스",
		["Pimgib"] = "핌기브",
		["Knot Thimblejack's Cache"] = "노트 팀블젝의 Cache", -- check
		["Cannonmaster Willey"] = "포병대장 윌리",
		["Emperor Dagran Thaurissian"] = "제왕 다그란 타우릿산",
		["Archmage Arugal"] = "대마법사 아루갈",
		["Archmage Arugal's Voidwalker"] = "아루갈의 보이드워커",
		["Baron Silverlaine"] = "남작 실버레인",
		["Commander Springvale"] = "사령관 스프링베일",
		["Deathsworn Captain"] = "Deathsworn Captain", -- check
		["Fenrus the Devourer"] = "파멸의 펜루스",
		["Odo the Blindwatcher"] = "눈먼감시자 오도",
		["Razorclaw the Butcher"] = "도살자 칼날발톱", -- check
		["Wolf Master Nandos"] = "늑대왕 난도스",
		["Rend Blackhand"] = "대족장 렌드 블랙핸드",
		["Kurinnaxx"] = "쿠린낙스",

		-- OUTLANDS
		-- XXX: These are subject to change and may not be correct.
		-- Karazhan
--		["Prince Malchazzar"] = true,
--		["Attumen the Huntsman"] = true,
--		["Dorathee"] = true,
--		["Toto"] = true,
--		["Tinhead"] = true,
--		["Strawman"] = true,
--		["Roar"] = true,
--		["Crone"] = true,
--		["Romulo"] = true,
--		["Julianne"] = true,
		-- Caverns of Time
		["Lieutenant Drake"] = "부관 드레이크",
		["Captain Skarloc"] = "경비대장 스칼록",
		["The Epoch Hunter"] = "시대의 사냥꾼",
		["Archimonde"] = "아키몬드",
		-- Hellfire Ramparts
		["Watchkeeper Gargolmar"] = "감시자 가르골마르",
		["Vazruden"] = "바즈루덴",
		["Omor the Unscarred"] = "무적의 오모르",
		-- The Blood Furnace
		["The Maker"] = "재앙의 창조자",
		["Broggok"] = "브로고크",
		["Keli'dan the Breaker"] = "파괴자 켈리단",
		-- The Shattered Halls
--		["Kargath Bladefist"] = true,
--		["Grand Warlock Nethekurse"] = true,
--		["Warbringer O'omrogg"] = true,
		-- Magtheridon's Lair
		["Magtheridon"] = "마그테리돈",
		-- The Slave Pens
		["Mennu the Betrayer"] = "배반자 멘누",
		["Rokmar the Crackler"] = "딱딱이 로크마르",
		["Quagmirran"] = "쿠아그미란",
		-- The Underbog
		["Hungarfen"] = "헝가르펜",
		["Ghaz'an"] = "가즈안",
		["Overseer Tidewrath"] = "우두머리 성난파도",
		["Claw"] = "클로",
		["Swamplord Musel'ek"] = "늪군주 뮤즐레크",
		["The Black Stalker"] = "검은 추적자",
		-- The Steamvault
		-- Serpentshrine Cavern
		["Lady Vashj"] = "여군주 바쉬",
		-- Mana Tombs
		["Pandemonius"] = "팬더모니우스",
		["Tavarok"] = "타바로크",
--		["Nexus-Prince Shaffar"] = true,
		-- Auchenai Crypts
--		["Shirrak the Dead Watcher"] = true,
		["Exarch Maladaar"] = "총독 말라다르",
		-- Sethekk Halls
		["Talon King Ikiss"] = "갈퀴대왕 이키스",
		["Darkweaver Syth"] = "흑마술사 시스",
		-- Shadow Labyrinth
		-- The Mechanar
		-- The Botanica
		-- The Arcatraz
		-- Eye of the Storm
--		["Prince Kael'thas Sunstrider"] = true,
		-- Gruul's Lair
		["Gruul"] = "그룰",
		-- Black Temple
		["Illidan Stormrage"] = "일리단 스톰레이지",
		-- Ring of Blood
--		["Brokentoe"] = true,
		["Murkblood Twin"] = "수렁피일족 쌍둥이",
		["Murkblood Twins"] = "수렁피일족 쌍둥이",
--		["The Blue Brothers"] = true,
		["Rokdar the Sundered Lord"] = "파괴의 군주 로크다르",
		["Skra'gath"] = "스크라가스",
		["Warmaul Champion"] = "전쟁망치일족 용사",
		["Mogor"] = "모고르",
	}
end)

BabbleBoss:Debug()
BabbleBoss:SetStrictness(true)

function BabbleBoss:Contains(name)
	if bosses[name] or bosses[self:HasReverseTranslation(name) and self:GetReverseTranslation(name) or false] then
		return true
	end
	return false
end

AceLibrary:Register(BabbleBoss, MAJOR_VERSION, MINOR_VERSION)
BabbleBoss = nil

end
