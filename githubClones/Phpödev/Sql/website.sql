-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2022, 17:29:39
-- Sunucu sürümü: 8.0.27
-- PHP Sürümü: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `website`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fiyatlar`
--

CREATE TABLE `fiyatlar` (
  `Id` int UNSIGNED NOT NULL,
  `GameId` int UNSIGNED NOT NULL,
  `DurmaPlay` int NOT NULL,
  `Steam` int NOT NULL,
  `Epic` int NOT NULL,
  `G2` int NOT NULL,
  `HumbleBundle` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `fiyatlar`
--

INSERT INTO `fiyatlar` (`Id`, `GameId`, `DurmaPlay`, `Steam`, `Epic`, `G2`, `HumbleBundle`) VALUES
(1, 1, 60, 60, 50, 120, 50),
(2, 2, 75, 75, 80, 50, 60),
(3, 3, 300, 280, 270, 300, 285),
(4, 4, 65, 50, 50, 40, 50),
(5, 5, 35, 32, 40, 60, 40),
(6, 6, 120, 120, 130, 130, 80),
(7, 7, 80, 78, 70, 70, 80),
(8, 8, 380, 300, 350, 380, 295),
(9, 9, 120, 150, 150, 120, 150),
(10, 10, 150, 150, 150, 90, 85),
(11, 11, 79, 79, 79, 50, 60),
(12, 12, 120, 160, 90, 100, 150),
(13, 13, 300, 152, 154, 400, 520),
(14, 19, 150, 300, 285, 510, 510);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `games`
--

CREATE TABLE `games` (
  `Id` int NOT NULL,
  `Name` text NOT NULL,
  `Company` text NOT NULL,
  `Release_Date` date NOT NULL,
  `Story` text,
  `genre` varchar(255) DEFAULT NULL,
  `Poster` varchar(255) NOT NULL,
  `thumbnails` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `games`
--

INSERT INTO `games` (`Id`, `Name`, `Company`, `Release_Date`, `Story`, `genre`, `Poster`, `thumbnails`) VALUES
(1, 'The Elder Scrolls V: Skyrim', 'Bethesda Game Studios', '2011-11-10', 'The Empire of Tamriel is on the edge. The High King of Skyrim has been murdered. Alliances form as claims to the throne are made. In the midst of this conflict, a far more dangerous, ancient evil is awakened. Dragons, long lost to the passages of the Elder Scrolls, have returned to Tamriel. The future of Skyrim, even the Empire itself, hangs in the balance as they wait for the prophesized Dragonborn to come; a hero born with the power of The Voice, and the only one who can stand amongst the dragons.', ' Adventure,  RPG(Role-playing)', 'skyrim1.jfif', 'skyrimthumb.png'),
(2, 'The Walking Dead', 'Telltale Games', '2012-04-24', 'Play as Lee Everett, a convicted criminal, who has been given a second chance at life in a world devastated by the undead. With corpses returning to life and survivors stopping at nothing to maintain their own safety, protecting an orphaned girl named Clementine may offer him redemption in a world gone to hell.', ' Adventure, Point-and-click', 'Walking dead.jpeg', 'twdthumb.png'),
(3, 'Red Dead Redemption 2', 'Rockstar Games', '2018-10-26', 'America, 1899. The end of the wild west era has begun as lawmen hunt down the last remaining outlaw gangs. Those who will not surrender or succumb are killed. After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.', ' Adventure, RPG(Role-playing), Shooter', 'reddead3.jpg', 'rdr2thumb.png'),
(4, 'Dishonored', 'ARKANE STUDIOS', '2012-10-09', 'Dishonored is set in Dunwall, an industrial whaling city where strange steampunk-inspired technology and otherworldly forces coexist in the shadows. You are the once-trusted bodyguard of the beloved Empress. Framed for her murder, you become an infamous assassin, known only by the disturbing mask that has become your calling card. In a time of uncertainty, when the city is besieged by plague and ruled by a corrupt', 'Adventure', 'Dishonored13.jpg', 'dishonoredthumb.png'),
(5, 'CELESTE', 'Extremely OK Games', '2018-01-25', 'Set on a fictional version of Mount Celeste, it follows a young woman named Madeline who attempts to climb the mountain, and must face her inner demons in her quest to reach the summit.', 'Adventure, Indie, Platform', 'celeste3.jpg', 'celestethumb.png'),
(6, 'Dark Souls', 'FromSoftware', '2011-09-22', 'The game is the second installment in the Souls series. Dark Souls takes place in the fictional kingdom of Lordran, where players assume the role of a cursed undead character who begins a pilgrimage to discover the fate of their kind.', 'Adventure, RPG(Role-playing)', 'darksouls1-56.jpg', 'darksoulsthumb.png'),
(7, 'ARK: Survival Evolved', 'Studio Wildcard', '2017-08-27', 'Ark: Survival Evolved takes on the survival genre with a unique blend of emergent multiplayer cooperation and competition. Players awake naked and starving on the beach of a mysterious island among a herd of other confused humans. On ARK, they must then hunt, harvest, craft, research technology, and build shelters to protect against scorching days, freezing nights, volatile weather systems, dangerous wildlife, and potential enemies.\n\nUse cunning strategy and tactics to tame and ride the many dinosaurs and other primeval creatures roaming the dynamic, persistent ecosystems across land, sea, air, and even underground. Build your character’s strengths and gain items, skills, and pet creatures using in-depth role-playing systems. Start a tribe with hundreds of other players to survive and dominate competing tribes...and ultimately discover the ARK’s true purpose.', 'Adventure, RPG(Role-playing), Shooter, Simulator', 'arkcover33.jpg', 'arkthumb.png'),
(8, 'The Last of Us: Part II', 'Naughty Dog', '2020-06-19', 'Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors.\r\n\r\nWhen a violent event disrupts that peace, Ellie embarks on a relentless journey to carry out justice and find closure. As she hunts those responsible one by one, she is confronted with the devastating physical and emotional repercussions of her actions.', 'Adventure, Shooter', 'lou4.jpeg', 'lou2thumb.png'),
(9, 'GTA V', 'Rockstar Games', '2013-09-17', 'Los Santos: a sprawling sun-soaked metropolis full of self-help gurus, starlets and fading celebrities, once the envy of the Western world, now struggling to stay afloat in an era of economic uncertainty and cheap reality TV.\r\n\r\nAmidst the turmoil, three very different criminals plot their own chances of survival and success: Franklin, a street hustler looking for real opportunities and serious money; Michael, a professional ex-con whose retirement is a lot less rosy than he hoped it would be; and Trevor, a violent maniac driven by the chance of a cheap high and the next big score. Running out of options, the crew risks everything in a series of daring', 'Adventure, Shooter', 'gta52.jpg', 'gta5thumb.png'),
(10, 'Far Cry 4', 'Ubisoft Montreal', '2014-11-18', 'Players find themselves in Kyrat, a wild region of the Himalayas struggling under the regime of a despotic self-appointed king. Using a vast array of weapons, vehicles and animals, players will write their own story across an exotic open-world landscape.', 'Adventure, Shooter, Tactical', 'farcry42.jpg', 'farcry4thumb.png'),
(11, 'WITCHER 3', 'CD PROJECKT RED', '2015-05-19', 'The Witcher 3: Wild Hunt concludes the story of the witcher Geralt of Rivia, \n              the series\' protagonist, whose story to date has been covered in the previous installments. \n              Geralt\'s new mission comes in dark times as the mysterious and otherworldly army known as the Wild Hunt\n               invades the Northern Kingdoms, leaving only blood soaked earth and fiery ruin in its wake', 'Adventure,RPG(Role-playing)', 'witcher32.jpg', 'witcher3thumb.png'),
(12, 'Warcraft 3 : Frozen Throne', 'Blizzard Entertainment', '2003-07-01', 'Warcraft III: The Frozen Throne adds a host of new features to the game, including four new campaigns that take you across the frozen continent of Northrend. Explore new maps and master new units such as the Troll Bat Riders, the Blood Elf Spell Breakers, and the destructive Mountain Giants.', 'Real Time Strategy (RTS), Strategy', 'warcrafr32.jpg', 'warcraft3thumb.png'),
(13, 'Final Fantasy XV', 'Square Enix', '2016-07-12', 'The game takes place in a world similar to modern-day Earth. The nations of the world once waged war over control of the worlds crystals, and all but the nation of Lucis have lost theirs and regressed to medieval societies. Noctis Lucis Caelum, Crown Prince of the kingdom of Lucis—having gained magical power from a near-death experience—is driven from his home when the empire of Niflheim invades Lucis on the eve of the final peace negotiations between the two nations. Now on the run with his companions, Noctis begins to work towards defeating the forces of Niflheim and rescuing the crystal from their control.', 'Action', 'FF15.jpeg', 'FFXV.jpg'),
(19, 'God Of War', 'Santa Monica', '2022-01-14', 'Many years have passed since Kratos, Spartan warrior and former Greek God of War, took his vengeance against the Greek Gods, and he now lives with his young son Atreus in ancient Norway in the realm of Midgard.', 'RPG (Role-Playing)', 'GOW.jfif', 'Gow.jfif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelecekoyunlar`
--

CREATE TABLE `gelecekoyunlar` (
  `Id` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `GelisTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `gelecekoyunlar`
--

INSERT INTO `gelecekoyunlar` (`Id`, `Name`, `GelisTarihi`) VALUES
(1, 'Lost Ark', '2022-02-11'),
(2, 'Dying Light 2 Stay Human', '2022-02-05'),
(3, 'Sifu', '2022-02-08'),
(4, 'The Waylanders', '2022-02-02'),
(5, 'Total War: Warhammer III', '2022-02-17'),
(6, 'Monark', '2022-02-22'),
(7, 'Horizon Forbidden West', '2022-02-17'),
(8, 'Elden Ring', '2022-02-25'),
(9, 'Pokemon Legends: Arceus', '2022-01-28'),
(10, 'Hidden Deep', '2022-01-10'),
(11, 'Windjammers', '2022-01-20'),
(12, 'KINGDOM of the DEAD', '2022-01-05'),
(13, 'Expeditions: Rome', '2022-01-21'),
(14, 'The Anacrusis', '2022-01-13'),
(15, 'God Of War', '2022-01-14'),
(16, 'Monster Hunter Rise', '2022-01-12'),
(17, 'Grid Legends', '2022-02-26'),
(19, 'Elex II', '2022-03-01'),
(20, 'Babylons Fall', '2022-03-02'),
(21, 'Triangle Strategy', '2022-03-04'),
(22, 'Gran Turismo', '2022-03-04'),
(23, 'Tunic', '2022-03-16'),
(24, 'Persona 4 Arena Ultimax', '2022-03-17'),
(25, 'Starship Troopers', '2022-03-31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int UNSIGNED NOT NULL,
  `Title` text NOT NULL,
  `Who` varchar(255) NOT NULL,
  `Text` text NOT NULL,
  `Resim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `Title`, `Who`, `Text`, `Resim`) VALUES
(1, 'İddiaya göre PlayStation\'ın bir sonraki büyük etkinliği Şubat 2022\'de olacak', 'Playstation', 'Bildiğiniz üzere oyun dünyasının en büyük markalarından birisi olan PlayStation, bir süredir fuarlara katılmayıp kendi etkinliklerini düzenliyor. State of Play isimli bu online etkinliklerde ise PlayStation\'ın gelecekte çıkacak olan büyüklü küçüklü birçok oyununu görebiliyoruz. Geçtiğimiz saatlerde de yeni State of Play ile ilgili bir söylenti ortaya çıktı.', 'stateofplay.jpg'),
(2, 'Bilim insanları 3D yazıcıyla esnek OLED ekran bastı', 'Teknoloji', 'Minnesota Twin Cities Üniversitesi\'ndeki araştırmacılar, kendileri için özel olarak tasarlanmış bir 3D yazıcıda esnek OLED ekran basmayı başardılar. Çığır açan gelişme, gelecekte akıllı telefon ve televizyon gibi elektronik cihazlarınızı onarmak için evde kendi başınıza ekran üretebileceğiniz anlamına geliyor.', 'bilim.jpg'),
(3, 'Steam bir hafta içinde ikinci kez rekor kırdı: Eş zamanlı oyuncu sayısı 28 milyonu aştı', 'Steam', 'Daha yalnızca geçen hafta eş zamanlı oyuncu sayısında rekor kıran Steam, geçtiğimiz gün bu rekorunu tazeledi. 2 Ocak 2022\'de 27.942.036 eş zamanlı oyuncu sayısına ulaşan Steam, dün akşam saatlerinde 28.230.853 eş zamanlı oyuncuya ulaşarak rekorunu bir kez daha kırdı. Steam\'in son yıllarda oyuncu sayısını ciddi oranda arttırdığını da belirtmek gerek.', 'steam.jpg'),
(4, 'AnkerWork B600 tümleşik video konferans çözümü', 'AnkerWork', 'Uzaktan görüşme için kaliteli bir web kamerasının yanında iyi mikrofonlar ve aydınlatma da gerekebiliyor. Tüm bunları tek tek aramak yerine AnkerWork B600 tümleşik çözümünü tercih ederek paket halinde de alabilirsiniz. AnkerWork B600 video konferans çözümü 2K 30fps video aktarımını destekliyor ve otomatik odaklama sunuyor. Yapay zekâ ile desteklenmiş VoiceRadar teknolojisi gürültülü ortamlarda bile en temiz sesi algılamayı amaçlıyor. ', 'ankerwork.jpg'),
(5, 'MSI’ın CES 2022 fuarında tanıttığı 17 ürün', 'MSI', 'MSI-VERSE sloganıyla CES 2022 tüketici elektroniği fuarına katılan MSI, pandemi nedeniyle sanal bir etkinlik gerçekleştirdi. Online etkinlik MSI’ın tüketiciye zamandan ve mekandan bağımsız, interaktif ve kapsayıcı bir deneyim yaşatmasını sağladı. ', 'msi.jfif'),
(6, 'ViewSonic yeni mini LED oyuncu monitörünü duyurdu', 'ViewSonic', 'CES 2022 fuarına mini LED teknolojisi damga vurdu diyebiliriz. Fuara katılan pek çok büyük ekranlı cihaz üreticisinin en az bir mini LED teknolojisi barındıran ürünü vardı. Viewsonic markası da bunlardan birisi. ViewSonic ELITE XG321UG firmanın amiral gemisi oyuncu monitörü olma özelliğine sahip. 32 inçlik IPS ekran mini LED teknolojisi barındırıyor ve 1152 aydınlatma bölgesi çok daha iyi parlaklık sağlıyor. Tepki süresi ise 3.6ms.', 'viewsonic.jpg'),
(7, 'Discord ve Playstation entegrasyonu neredeyse hazır', 'Playstation ve Discord', 'Geçtiğimiz aylarda duyurulan PSN (Playstation Network) ve Discord entegrasyonu hem PS4 hem de PS5 kullanıcıları tarafından oldukça beklenen bir özellik. PS5’e Xbox Series X karşısında avantaj sağlayacak olan servis, beklediğimizden yakın olabilir.\r\n\r\n', 'discordplaystation.jpg'),
(8, 'Xbox Game Pass bu yıl 6300$ değerinde oyun dağıttı', 'Microsoft XBOX', 'Oyun dünyasının Netflix’i olarak tanımlanan ve yakın zamanda Sony tarafından rakibi piyasaya sürülecek Xbox Game Pass abonelik hizmeti oyuncular tarafından da çok beğenildi. Cüzi bir abonelik fiyatına sayısız oyunu kütüphanenize indirebileceğiniz hizmet bu yıl önemli bir tasarruf sağladı.', 'xbox.jpg'),
(9, 'Ninja Kaplumbalar Fortnite’a katılabilir', 'Fortnite / Epic', 'Battle royale oyun türünün en popüler isimlerinden olan Fortnite, farklı eğlence markalarından karakterleri kendi bünyesine katmakla biliniyor. Spider-Man, Iron Man gibi birçok Marvel karakteri dışında Star Wars, DC Comics, Playstation, Tomb Raider gibi birçok markanın karakterlerinin bünyesine katan Fortnite, yakında bünyesine yeni isimler katacak gibi gözüküyor', 'nk.jpg'),
(10, 'Görselliği ile dikkat çeken Rus yapımı The Day Before\'dan RTX\'li fragman geldi', 'MYTONA', 'Yayıncılığını MYTONA\'nın yaptığı, geliştiriciliğini ise FNTASTIC\'in yaptığı açık dünya hayatta kalma oyunu The Day Before\'dan yeni bir video paylaşıldı. Paylaşılan videdoa oyunun RTX\'li, yani ray tracing\'li versiyonundan ufak kesitler görüyoruz. Zaten görsel anlamda dikkat çeken oyunun RTX ile daha da güzel durduğunu söylemek gerek. Bahsi geçen videoyu aşağıda bulabilirsiniz.\r\n\r\n', 'daybefore.jpg'),
(11, 'Amazon\'un Fallout dizisinden ilk bilgiler geldi: Nolan ilk bölümü yönetecek', 'Amazon ve Bethesda', 'Amazon bildiğiniz gibi kendi video akış platformu Prime Video için çeşitli özel içerikler üretiyor. Bu içeriklerin arasında da gerçekten büyük yapımlar bulunuyor. Bu yapımlardan biri de Bethesda\'nın oyunundan uyarlama olan Fallout dizisi. Geçtiğimiz saatlerde de diziden ilk bilgiler geldi.', 'fallout.jfif'),
(12, 'Strateji oyunu CapRoyale iOS ve Android cihazlar için çıkışını yaptı', 'Boa Games', 'Yayıncılığını ve geliştiriciliğini Boa Games\'in yaptığı, strateji oyunu CapRoyale, çıkışını yaptı. CapRoyale Hakkında,\r\nOrtak piyasada gerçek oyuncularla rekabet et! Piyasanın hakimi olmak için yeni mağazalar aç ve kendi fabrikalarını kur! Rakipleri sabote et, onlarla savaş ve bu ticari savaşın galibi sen ol!\r\n\r\n', 'caproyale.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `Id` int UNSIGNED NOT NULL,
  `GameId` int UNSIGNED NOT NULL,
  `Resim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`Id`, `GameId`, `Resim`) VALUES
(1, 1, 'carouselskyrim2.jpg'),
(2, 2, 'twd2.jpg'),
(3, 12, 'frozenthrone.jfif'),
(4, 3, 'rdr2.jpg'),
(5, 8, 'tlou2.jfif'),
(7, 4, 'dishonored1.jpg'),
(8, 6, 'carouseldark.jpg'),
(9, 7, 'carouselark.jpg'),
(10, 11, 'carouselwithcer2.jpg'),
(11, 5, 'carouselceleste.jpg'),
(12, 9, 'gta51.jpg'),
(13, 11, 'carouselwithcer3.jpg'),
(14, 11, 'carouselwithcer4.jpg'),
(15, 1, 'carouselskyrim.jpg'),
(16, 1, 'carouselskyrim1.jpg'),
(17, 1, 'carouselskyrim4.jpg'),
(18, 2, 'twd.jpg'),
(19, 2, 'twd3.jpg'),
(20, 2, 'twd4.jpg'),
(21, 3, 'rdr21.jpg'),
(22, 3, 'rdr22.jpg'),
(23, 3, 'rdr23.jpg'),
(24, 4, 'dishonored11.jpg'),
(25, 4, 'dishonored12.jpg'),
(26, 4, 'dishonored13.jpg'),
(27, 5, 'carouselceleste1.jpg'),
(28, 5, 'carouselceleste2.jpg'),
(29, 5, 'carouselceleste3.jpg'),
(30, 6, 'carouseldark1.jpg'),
(31, 6, 'carouseldark2.jpg'),
(32, 6, 'carouseldark3.jpg'),
(33, 7, 'carouselark2.jpg'),
(34, 7, 'carouselark3.jpg'),
(35, 7, 'carouselark4.jpg'),
(36, 8, 'tlou21.jfif'),
(37, 8, 'tlou22.jfif'),
(38, 8, 'tlou23.jfif'),
(39, 10, 'fc2.jpg'),
(40, 10, 'fc3.jpg'),
(41, 10, 'fc4.jpg'),
(42, 9, 'gta52.jpg'),
(43, 9, 'gta53.jpg'),
(44, 9, 'gta5.jpg'),
(45, 11, 'carouselwithcer1.jpg'),
(46, 12, 'frozenthrone1.jfif'),
(47, 12, 'frozenthrone21.png'),
(48, 12, 'frozenthrone22.jpg'),
(49, 19, 'GOW.jfif'),
(50, 19, 'GOWC.jfif'),
(51, 19, 'GOWC1.jpg'),
(52, 19, 'GOWC3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sirketler`
--

CREATE TABLE `sirketler` (
  `Id` int UNSIGNED NOT NULL,
  `Adi` text NOT NULL,
  `KurulusTarihi` date NOT NULL,
  `Bilgi` text NOT NULL,
  `Geliştirici` int NOT NULL,
  `thumbnails` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `sirketler`
--

INSERT INTO `sirketler` (`Id`, `Adi`, `KurulusTarihi`, `Bilgi`, `Geliştirici`, `thumbnails`) VALUES
(1, 'Telltale Games', '2004-07-12', 'Telltale isminin Türkçe anlamı \'Masal anlat\' olan bu firma macera türünde oyunlar yaparak ün kazanmıştır. Haziran 2004\'te kurulan San Rafael, Kaliforniya merkezli firma Lucas Arts\'ta daha önce çalışmış birçok yapımcıyı da bünyesinde bulundurmaktadır.', 250, 'telltale.jpg'),
(2, 'Rockstar Games', '1998-12-15', 'Rockstar Games, diğer bir adı Rockstar NYC olan, Take-Two Interactive\'e bağlı uluslararası video oyun yapımcı firması. Firma ABD New York\'ta kurulmuştur.', 11250, 'Rockstar_Games_Logo.png'),
(3, 'ARKANE STUDIOS', '1999-10-01', 'Arkane Studios SASU, Lyon merkezli bir Fransız video oyun geliştiricisidir. 1999\'da kurulmuştur ve ilk oyunu olan Arx Fatalis\'i 2002\'de piyasaya sürmüştür. Arkane Studios, Temmuz 2006\'da Austin, Teksas\'ta ikinci stüdyoları Arkane Studios Austin\'i açtı. Stüdyo en çok Dishonored serisini yaratmalarıyla bilinmektedir.', 480, 'Arkane.jpg'),
(4, 'Extremely OK Games', '2019-09-20', 'Maddy Thorson (born 18 March 1988) is a Canadian video game developer, known as one of the lead creators for the video games TowerFall and Celeste, developed under the studio Matt Makes Games. Since September 2019, Maddy Thorson has effectively shut down Matt Makes Games to relaunch her team under Extremely OK Games', 2, 'Exok.png'),
(5, 'FromSoftware', '1986-11-01', 'Japonya merkezli bir video oyunu geliştiricisidir. Şirket, 1 Kasım 1986 tarihinde kurulmuş olup özellikle Armored Core ve Souls serisi ile Bloodborne oyunları ile bilinmektedir. Şirketin merkezi Tokyo\'nun Shibuya semtinde yer almaktadır.', 190, 'From.jpg'),
(6, 'Studio Wildcard', '2014-10-05', 'Wildcard Properties, LLC, Redmond, Washington ve Gainesville, Florida\'da ofisleri bulunan bir Amerikan video oyunu geliştiricisidir. Şirket Ekim 2014\'te Doug Kennedy, Jesse Rapczak, Jeremy Stieglitz ve Susan Browning Stieglitz tarafından kuruldu.', 32, 'Studiowildcard.png'),
(7, 'Naughty Dog', '1984-09-27', 'Naughty Dog, Inc., merkezi Kaliforniya\'nın Santa Monica şehrinde bulunan Amerikan video oyunu şirketi. 1986 yılında, Andy Gavin ve Jason Rubin tarafından bağımsız bir oyun geliştirme şirketi olarak kuruldu. 2001\'de Sony Computer Entertainment\'a bağlandı.', 850, 'naughtydog.jpg'),
(8, 'Blizzard Entertainment', '1991-02-08', 'Blizzard Entertainment, bilgisayar oyunları üreten Irvine, Kaliforniya merkezli bir şirkettir. 1994\'te Warcraft oyununu çıkardığından beri, dünyaca bilinen bir oyun şirketi olmuştur. Ürettiği Diablo, StarCraft, Warcraft oyunları ve bunların devam oyunları sayesinde tek oyunculu ve çok oyunculu video oyunları alanında büyük hayran kitlesi elde etmiştir.', 2200, 'blizzard.jpg'),
(9, 'Ubisoft Montreal', '1986-03-28', 'Ubisoft, Ubisoft Entertainment (ya da eski adıyla Ubi Soft) Fransız video oyun geliştiricisi ve yayımcısıdır. Kısmen(%20) Amerikalı Electronic Arts ile ortaktır, fakat yine de Electronic Arts firmasından bağımsız olarak çalışmaktadır. Ubisoft firması, 28 ülkede stüdyoları ile dünya çapında bir varlığa sahiptir.\r\nAynı zamanda 2008 yılı itibarıyla Ubisoft firması Avrupa\'nın 3.büyük video oyun ve yapımcı firması seçilmiştir.', 8400, 'ubisoft.jpg'),
(10, 'CD PROJECKT RED', '2002-02-13', 'CD Projekt, Varşova merkezli Polonyalı video oyunu geliştiricisi ve yayımcısı firma. 1994 yılında Marcin Iwiński ve Michał Kiciński tarafından kurulan firma, 2002 yılında CD Projekt Red ismiyle açtığı oyun stüdyosu tarafından geliştirilen The Witcher video oyunu serisi ile tanınmaktadır.', 650, 'cdprojektred.jpg'),
(11, 'Bethesda Game Studios', '1986-06-28', 'Bethesda Softworks, LLC, Amerikalı bir video oyunu yayımcısıdır. 1986\'da Christopher Weaver tarafından kurulmuştur. ZeniMax Media\'nın bir yan kuruluşudur, şirket aslen Bethesda, Maryland merkezlidir ve yerini Rockville, Maryland\'e taşımıştır. Microsoft, 2020 yılında, holding şirketi ZeniMax Media\'yı 7,5 milyar ABD Doları karşılığında satın aldığını duyurdu.', 4250, 'Bethesda1.jpg'),
(12, 'Capcom', '1979-05-30', 'Japonya merkezli bir çok uluslu video oyunu geliştirme ve yayımlama şirketidir. Şirket, 30 Mayıs 1979 tarihinde kurulmuş olup özellikle Street Fighter, Mega Man, Resident Evil, Devil May Cry, Onimusha, Dino Crisis, Dead Rising, Sengoku Basara, Monster Hunter, Breath of Fire ve Ace Attorney gibi video oyunu serileri ile tanınmaktadır.', 2832, 'capcom.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `fiyatlar`
--
ALTER TABLE `fiyatlar`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `gelecekoyunlar`
--
ALTER TABLE `gelecekoyunlar`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`Id`);

--
-- Tablo için indeksler `sirketler`
--
ALTER TABLE `sirketler`
  ADD PRIMARY KEY (`Id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `fiyatlar`
--
ALTER TABLE `fiyatlar`
  MODIFY `Id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `games`
--
ALTER TABLE `games`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `gelecekoyunlar`
--
ALTER TABLE `gelecekoyunlar`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `Id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Tablo için AUTO_INCREMENT değeri `sirketler`
--
ALTER TABLE `sirketler`
  MODIFY `Id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
