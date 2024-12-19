-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2024 at 04:53 AM
-- Server version: 8.0.30
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theikdim_drdstaff`
--

-- --------------------------------------------------------

--
-- Table structure for table `drrd`
--

CREATE TABLE `drrd` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `DRDIDMM` varchar(255) DEFAULT NULL,
  `DRDIDEN` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `LOCATIONMM` varchar(255) DEFAULT NULL,
  `LOCATIONEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `DOBMMRAW` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `mcrd_tbl`
--

CREATE TABLE `mcrd_tbl` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `DEPARTMENTMM` varchar(255) DEFAULT NULL,
  `DEPARTMENTEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `EYECOLMM` varchar(255) DEFAULT NULL,
  `EYECOLEN` varchar(255) DEFAULT NULL,
  `HAIRCOLMM` varchar(255) DEFAULT NULL,
  `HAIRCOLEN` varchar(255) DEFAULT NULL,
  `HEIGHTMM` varchar(255) DEFAULT NULL,
  `HEIGHTEN` varchar(255) DEFAULT NULL,
  `SPMM` varchar(255) DEFAULT NULL,
  `SPEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(50) DEFAULT NULL,
  `LOCATIONMM` varchar(50) DEFAULT NULL,
  `LOCATIONEN` varchar(50) DEFAULT NULL,
  `DRDIDEN` varchar(50) DEFAULT NULL,
  `DRDIDMM` varchar(50) DEFAULT NULL,
  `DOBMMRAW` varchar(50) DEFAULT NULL,
  `PHOTO` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ssid`
--

CREATE TABLE `ssid` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `DRDIDMM` varchar(255) DEFAULT NULL,
  `DRDIDEN` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `LOCATIONMM` varchar(255) DEFAULT NULL,
  `LOCATIONEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `DOBMMRAW` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ssid_copy`
--

CREATE TABLE `ssid_copy` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `DRDIDMM` varchar(255) DEFAULT NULL,
  `DRDIDEN` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `LOCATIONMM` varchar(255) DEFAULT NULL,
  `LOCATIONEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `DOBMMRAW` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff_tbl`
--

CREATE TABLE `staff_tbl` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `DRDIDMM` varchar(255) DEFAULT NULL,
  `DRDIDEN` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `LOCATIONMM` varchar(255) DEFAULT NULL,
  `LOCATIONEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `DOBMMRAW` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff_tbl_copy1`
--

CREATE TABLE `staff_tbl_copy1` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `DRDIDMM` varchar(255) DEFAULT NULL,
  `DRDIDEN` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `LOCATIONMM` varchar(255) DEFAULT NULL,
  `LOCATIONEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `DOBMMRAW` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ucms`
--

CREATE TABLE `ucms` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `DEPARTMENTMM` varchar(255) DEFAULT NULL,
  `DEPARTMENTEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `EYECOLMM` varchar(255) DEFAULT NULL,
  `EYECOLEN` varchar(255) DEFAULT NULL,
  `HAIRCOLMM` varchar(255) DEFAULT NULL,
  `HAIRCOLEN` varchar(255) DEFAULT NULL,
  `HEIGHTMM` varchar(255) DEFAULT NULL,
  `HEIGHTEN` varchar(255) DEFAULT NULL,
  `SPMM` varchar(255) DEFAULT NULL,
  `SPEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(255) DEFAULT NULL,
  `LOCATIONMM` varchar(50) DEFAULT NULL,
  `LOCATIONEN` varchar(50) DEFAULT NULL,
  `DRDIDEN` varchar(50) DEFAULT NULL,
  `DRDIDMM` varchar(50) DEFAULT NULL,
  `DOBMMRAW` varchar(50) DEFAULT NULL,
  `PHOTO` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;


INSERT INTO `ucms` (`ID`, `SRNO`, `NAMEMM`, `NAMEEN`, `POSTMM`, `POSTEN`, `DOBMM`, `DOBEN`, `DEPARTMENTMM`, `DEPARTMENTEN`, `FATHERNAMEMM`, `FATHERNAMEEN`, `NRCMM`, `n`, `EYECOLMM`, `EYECOLEN`, `HAIRCOLMM`, `HAIRCOLEN`, `HEIGHTMM`, `HEIGHTEN`, `SPMM`, `SPEN`, `DUTY`, `s`, `c`, `PHOTOWEB`, `ISSUEDDATEMM`, `ISSUEDDATEEN`, `ADDRESSMM`, `ADDRESSEN`, `LOCATIONMM`, `LOCATIONEN`, `DRDIDEN`, `DRDIDMM`, `DOBMMRAW`, `PHOTO`) VALUES
(1, '1', 'ဒေါက်တာမို့မို့ရီ', 'Dr. Moe Moe Yee', 'ပါမောက္ခချူပ်', 'Rector', '၀၈-၀၈-၁၉၆၃', '08-08-1963', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးကိုကိုကြီး', 'U Ko Ko Gyi', '၁၂/ကမတ(နိုင်)၀၁၈၅၈၁', '12/KAMATA(N)018581', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'', '5\'-3\"', 'ယာပါးမှဲ့ရှိ', 'have a mole at the right cheek', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00001', 'ucms/img/UCMS-00001.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', '(၈၂)၊ ကျောင်းကြီးလမ်း၊ ကြည့်မြင်တိုင်မြို့နယ်၊ ရန်ကုန်မြို့', '82,Kyaung Kyee Street, Kyit Myin Tai Township, Yan', '(၈၂)၊ ကျောင်းကြီးလမ်း၊ ကြည့်မြင်တိုင်မြို့နယ်၊ ရန်', '82,Kyaung Kyee Street, Kyit Myin Tai Township, Yan', 'UCMS-00001', 'UCMS-00001', '၀၈-၀၈-၁၉၆၃', 'ucms/img/UCMS-00001.jpg'),
(2, '2', 'ဦးဝင်းနိုင်ထွန်း', 'U Win Naing Tun', 'ဒုတိယပါမောက္ခချုပ်  (စီမံ)', 'Pro-Rector(Admin)', '၁၀-၀၅-၁၉၆၇', '10-05-1967', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးလှသိန်း', 'U Hla Thein', '၁၂/ဥကတ(နိုင်)၁၇၂၆၉၇', '12/OOKATA(N)172697', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'-၆\"', '5\'-6\"', 'ဝဲမျက်လုံးအောက်မှဲ့ရှိ', 'have a mole under left eye', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00002', 'ucms/img/UCMS-00011.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၁၂၅၇)၊ ရွှေလီလမ်းနှင့်ချယ်ရီ(၁)လမ်းထောင့်၊ ပုပ္ဗသီရိမြို့နယ်၊\nနေပြည်တော်', 'No.1257, Coner of Shwe Li Street & Cherry (1) Stre', 'အမှတ်(၁၂၅၇)၊ ရွှေလီလမ်းနှင့်ချယ်ရီ(၁)လမ်းထောင့်၊ ပ', 'No.1257, Coner of Shwe Li Street & Cherry (1) Stre', 'UCMS-00011', 'UCMS-00011', '၁၀-၀၅-၁၉၆၇', 'ucms/img/UCMS-00011.jpg'),
(3, '3', '‌ဒေါ်သင်းလဲ့ကြည်', 'Daw Thin Lie Kyi', 'ဌာနမှူး', 'Head of Department', '၁၃-၀၉-၁၉၆၈', '13-9-1968', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးကျော်အောင်', 'U Kyaw Aung', '၁၂/သခန(နိုင်)၀၄၅၅၁၃', '12/THAKHANA(N)045513', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'-၂\"', '5\'-2\"', 'မျက်ခုံးနှစ်ခုကြားမှဲ့ရှိ', 'have a mole between the two eyebrows', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00003', 'ucms/img/UCMS-00021.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', '၅-စည်သူလမ်း၊ (၁၁)ရပ်ကွက်၊ သုံးခွမြို့', 'No.5, Sithu Street, 11 Quarter, Thongwa Township, ', '၅-စည်သူလမ်း၊ \r(၁၁)ရပ်ကွက်၊ သုံးခွမြို့', 'No.5, Sithu Street, 11 Quarter, Thongwa Township, ', 'UCMS-00021', 'UCMS-00021', '၁၃-၀၉-၁၉၆၈', 'ucms/img/UCMS-00021.jpg'),
(4, '4', 'ဦးရဲမြင့်အောင်', 'U Ye Myint Aung', 'ဌာနမှူး', 'Head of Department', '၀၉-၁၂-၁၉၆၄', '9-12-1964', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးချန်ထွန်း', 'U Chen Tun', '၁၂/မဂဒ(နိုင်)၀၂၀၄၈၉', '12/MAGADA(N)020489', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'-၇\"', '5\'-7\"', 'မျက်ခုံးနှစ်ခုကြားအမာရွတ်ရှိ', 'have a scar between the two eyebrows', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00004', 'ucms/img/UCMS-00022.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', '၂၄၆/ကညောင်နှစ်ပင်လမ်း၊ ဆတ်သွားတော၊ မှော်ဘီမြို့', '246/A, Nyaung Nhit Pin Street, Satt Thwartaw, Hmaw', '၂၄၆/ကညောင်နှစ်ပင်\rလမ်း၊ ဆတ်သွားတော၊ \rမှော်ဘီမြို့', '246/A, Nyaung Nhit Pin Street, Satt Thwartaw, Hmaw', 'UCMS-00022', 'UCMS-00022', '၀၉-၁၂-၁၉၆၄', 'ucms/img/UCMS-00022.jpg'),
(5, '5', 'ဦးငွေမိုးထွန်း', 'U Ngwe Moe Tun', 'ဌာနမှူး', 'Head of Department', '၁၅-၀၆-၁၉၇၂', '15-6-1972', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးတင်ထွန်း', 'U  Tin Tun', '၉/မရမ(နိုင်)၀၉၀၇၀၂', '9/MAYAMA(N)090702', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၆\"', '5\' 6\"', 'ယာမျက်လုံးဘေးမှဲ့ရှိ', 'have a mole on the right side  eye', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00005', 'ucms/img/UCMS-00023.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'E-၂၇/၃၆လမ်း၊ ၆၉×၇၀ကြား၊ မန္တလေးမြို့', 'E-27/36 street, between 69×70 Mandalay', 'E-၂၇/၃၆လမ်း၊ \r၆၉×၇၀ကြား၊ မန္တလေးမြို့', 'E-27/36 street, between 69×70 Mandalay', 'UCMS-00023', 'UCMS-00023', '၁၅-၀၆-၁၉၇၂', 'ucms/img/UCMS-00023.jpg'),
(6, '6', 'ဦးလှမျိုး', 'U Hla Myo', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၂၀-၁၂-၁၉၇၃', '20-12-1973', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးအောင်သိမ်း', 'U Aung Thein ', '၈/မကန(နိုင်)၀၀၀၂၅၀', '8/MAKANA(N)000250', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'-၈\"', '5\'-8\"', 'ယာပါးမှဲ့ရှိ', 'have a mole the right on the cheek', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00006', 'ucms/img/UCMS-00024.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၁၅၁)(က)၊ (၃၃)လမ်း၊ ၇၅×၇၆ကြား၊ ချမ်းအေးသာဇံမြို့နယ်၊ မန္တလေးမြို့', 'No.151, 33 Street, Between 75 76, Chan Aye Thar Za', 'အမှတ်(၁၅၁)(က)၊ (၃၃)လမ်း၊ ၇၅×၇၆ကြား၊ ချမ်းအေးသာဇံမြ', 'No.151, 33 Street, Between 75 76, Chan Aye Thar Za', 'UCMS-00024', 'UCMS-00024', '၂၀-၁၂-၁၉၇၃', 'ucms/img/UCMS-00024.jpg'),
(7, '7', 'ဒေါ်တင်တင်ချို', 'Daw Tin Tin Cho', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၂၅-၀၇-၁၉၇၀', '25-7-1970', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးခင်မောင်ချို', 'U Khin Maung Cho', '၁၂/စခန(နိုင်)၀၀၄၀၉၇', '12/SAKANA(N)004097', 'အညို', 'Brown', 'အနက်', 'Balck', '၅\'-၃\"', '5\'-3\"', 'လက်ယာဘက်လက်မှဲ့ရှိ', 'have a mole on the right hand', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00007', 'ucms/img/UCMS-00025.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', '(၃၈၂)၊ ၁၄လမ်း၊ ၁၂ရပ်ကွက်၊ တောင်ဥက္ကလာပမြို့နယ်၊ ရန်ကုန်မြို့', 'No.382,14 street, 12 Block, South Okkapala Townshi', '(၃၈၂)၊ ၁၄လမ်း၊ \r၁၂ရပ်ကွက်၊ တောင်ဥက္ကလာပမြို့နယ်၊ \r', 'No.382,14 street, 12 Block, South Okkapala Townshi', 'UCMS-00025', 'UCMS-00025', '၂၅-၀၇-၁၉၇၀', 'ucms/img/UCMS-00025.jpg'),
(8, '8', '‌ဒေါက်တာကြည်ကြည်ဝင်း', 'Dr. Kyi Kyi Win', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၀၁-၀၇-၁၉၆၈', '1-7-1968', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးဖေသိန်း', 'U Phay Thein', '၁၂/ဒပန(နိုင်)၀၀၁၈၁၁', '12/DAPANA(N)001811', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၂\"', '5\' 2\"', 'ဝဲဘက်မျက်ခုံးအနီး နှာယောင်တွင် မှဲ့ရှိ', 'have a mole on the bridge of the nose', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00008', 'ucms/img/UCMS-00032.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၇၆)၊ မင်္ဂလာသီရိလမ်း၊ ဒေါပုံမြို့နယ်၊ ရန်ကုန်မြို့', 'No.76, Mingalarthiri Street, Myothit Quarter, Daw ', 'အမှတ်(၇၆)၊ \rမင်္ဂလာသီရိလမ်း၊ \rဒေါပုံမြို့နယ်၊ \rရန်', 'No.76, Mingalarthiri Street, Myothit Quarter, Daw ', 'UCMS-00032', 'UCMS-00032', '၀၁-၀၇-၁၉၆၈', 'ucms/img/UCMS-00032.jpg'),
(9, '9', 'ဒေါ်ခင်စန်းကြည်', 'Daw Khin San Kyi', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၂၁-၀၄-၁၉၆၆', '21-4-1966', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးဘုလေး', 'U Bu Lay', '၉/သစန(နိုင်)၀၇၂၉၇၃', '9/THASANA(N)072973', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'-၄\"', '5\'-4\"', 'အပေါ်နှုတ်ခမ်းထက်မှဲ့ရှိ', 'have a mole on the upper lip', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00009', 'ucms/img/UCMS-00026.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၁၄)၊ သစ်တော(၂)လမ်း၊ အမှုထမ်းရပ်ကွက်၊ သန်လျင်မြို့', 'No.14, Thittaw (2) Street, Service Quarter, Thanly', 'အမှတ်(၁၄)၊ \rသစ်တော(၂)လမ်း၊ \rအမှုထမ်းရပ်ကွက်၊ \rသန်လ', 'No.14, Thittaw (2) Street, Service Quarter, Thanly', 'UCMS-00026', 'UCMS-00026', '၂၁-၀၄-၁၉၆၆', 'ucms/img/UCMS-00026.jpg'),
(10, '10', 'ဦးကျော်သူရ', 'U Kyaw Thura', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၃၀-၀၁-၁၉၇၆', '30-1-1976', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးတင်ဝင်း', 'U Tin Win', '၅/မကန(နိုင်)၀၃၃၂၁၀', '5/MAKANA(N)033210', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၃\"', '5\' 3\"', 'နဖူးမှဲ့ရှိ', 'have a mole on the forehead', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00010', 'ucms/img/UCMS-00027.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'မင်းကင်းမြို့နယ်၊ ကလေးခရိုင်၊ စစ်ကိုင်းတိုင်းဒေသကြီး', 'Mingin Township, Kale District, Sagaing Region', 'မင်းကင်းမြို့နယ်၊ ကလေးခရိုင်၊ စစ်ကိုင်းတိုင်းဒေသကြ', 'Mingin Township, Kale District, Sagaing Region', 'UCMS-00027', 'UCMS-00027', '၃၀-၀၁-၁၉၇၆', 'ucms/img/UCMS-00027.jpg'),
(11, '11', 'ဒေါ်စိုးယုနွယ်', 'Daw Soe Yu New', 'ပါမောက္ခ', 'Professor ', '၁၇-၀၆-၁၉၈၀', '17-6-1980', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးကျော်စိုး', 'U Kyaw Soe', '၅/ယမပ(နိုင်)၀၃၉၅၈၉', '5/YAMAPA(N)039589', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၁\"', '5\' 1\"', 'လည်ပင်းမှဲ့ရှိ', 'have a mole on the neck', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00011', 'ucms/img/UCMS-00029.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'ဘိန်းနွယ်ချောင်ရွာ၊ ယင်းမာပင်မြို့နယ်၊ စစ်ကိုင်းတိုင်းဒေသကြီး', 'Bein New Chaung Village< Yin Mar Bin Township, Sag', 'ဘိန်းနွယ်ချောင်ရွာ၊ ယင်းမာပင်မြို့နယ်၊ စစ်ကိုင်းတိ', 'Bein New Chaung Village< Yin Mar Bin Township, Sag', 'UCMS-00029', 'UCMS-00029', '၁၇-၀၆-၁၉၈၀', 'ucms/img/UCMS-00029.jpg'),
(12, '12', 'ဒေါက်တာခင်မြဝင်း', 'Dr.Khin Mya Win', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၁၉-၀၅-၁၉၆၆', '19-5-1966', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးမောင်ကို', 'U Maung Ko', '၉/အမရ(နိုင်)၀၆၃၀၉၈', '9/AMAYA(N)063098', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၆\"', '5\' 6\"', 'ညာပါးမှဲ့ရှိ', 'have a mole on the right cheek', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00012', 'ucms/img/admin_upload/ucms-00030.jpeg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၂၅)၊ တိုးချဲ့(၃)၊ မှန်တန်းရပ်၊ အမရပူရမြို့', 'No.25, Exten 3, Mran Trann Quarter, A Ma Pura Town', 'အမှတ်(၂၅)၊ တိုးချဲ့(၃)၊ \rမှန်တန်းရပ်၊ အမရပူရမြို့', 'No.25, Exten 3, Mran Trann Quarter, A Ma Pura Town', 'UCMS-00030', 'UCMS-00030', '၁၉-၀၅-၁၉၆၆', 'ucms/img/UCMS-00030.jpg'),
(13, '13', '‌ဒေါက်တာနုနုဝါ', 'Dr.Nu Nu War', 'ပါမောက္ခ(ဌာနမှူး)', 'Professor (Head of Department)', '၁၆-၀၁-၁၉၈၂', '16-1-1982', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးကံစိန်', 'U Kan Sein', '၉/ခမစ(နိုင်)၀၁၁၂၄၉', '9/KHAMASA(N)011249', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၄\"', '5\' 4\"', 'ညာမျက်လုံးထောင့်မှဲ့ရှိ', 'have a mole on the right eye corner', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00013', 'ucms/img/UCMS-00031.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၂)ရပ်ကွက်၊ ချမ်းမြသာစည်မြို့နယ်၊ မန္တလေးမြို့', 'No.2 Quarter, Chan Mya Tharsi Township, Mandalay', 'အမှတ်(၂)ရပ်ကွက်၊ ချမ်းမြသာစည်မြို့နယ်၊ မန္တလေးမြို', 'No.2 Quarter, Chan Mya Tharsi Township, Mandalay', 'UCMS-00031', 'UCMS-00031', '၁၆-၀၁-၁၉၈၂', 'ucms/img/UCMS-00031.jpg'),
(14, '14', 'ဒေါ်အေးစိုးဝင်း', 'Daw Aye Soe Win', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor(Head of Department)', '၃၀-၀၅-၁၉၆၆', '30-5-1966', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးတင်ဝင်း', 'U Tin Win', '၇/ဖမန(နိုင်)၀၈၁၅၄၆', '7/PHAMANA(N)081546', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၄\"', '5\' 4\"', 'ဝဲဘက်နှုတ်ခမ်းထောင့်အမာရွတ်ရှိ', 'have a scar on the side of the left nestril', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00014', 'ucms/img/UCMS-00061.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အုတ်ဖြတ်လမ်း၊ ဖြူးမြို့', 'Okehpyat Street, Phyuu Town', 'အုတ်ဖြတ်လမ်း၊ ဖြူးမြို့', 'Okehpyat Street, Phyuu Town', 'UCMS-00061', 'UCMS-00061', '၃၀-၀၅-၁၉၆၆', 'ucms/img/UCMS-00061.jpg'),
(15, '15', '‌ဒေါ်ခင်မာလွင်စိုး', 'Daw Khin Mar Lwin Soe', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၁၂-၀၇-၁၉၇၁', '12-7-1971', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးစိုးမင်း', 'U Soe Min', '၁၂/လကန(နိုင်)၀၉၉၃၈၇', '12/LAKANA(N)099387', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၂\"', '5\'-2\"', 'နူတ်ခမ်းအောက်မှဲ့ရှိ', 'have a mole under the mouth', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00015', 'ucms/img/UCMS-00062.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', '(၂)ရပ်ကွက်၊ မင်းကုန်းကျေးရွာ၊ ဖောင်ကြီးမြို့၊ လှည်းကူးမြို့နယ်၊ ရန်ကုန်တိုင်းဒေသကြီး', '2 Quarter, MinKone Village, PhaungGyi,Hlegu Townsh', '(၂)ရပ်ကွက်၊ မင်းကုန်းကျေးရွာ၊ ဖောင်ကြီးမြို့၊ လှည်', '2 Quarter, MinKone Village, PhaungGyi,Hlegu Townsh', 'UCMS-00062', 'UCMS-00062', '၁၂-၀၇-၁၉၇၁', 'ucms/img/UCMS-00062.jpg'),
(16, '16', '‌ဒေါ်ဥမ္မာပပ', 'Daw Ohnmar Pa Pa ', 'တွဲဖက်ပါမောက္ခ(ဌာနမှူး)', 'Associate Professor(Head of Department)', '၂၈-၀၈-၁၉၆၆', '28-8-1996', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးလှကြိုင်', 'U Hla Kyaing', '၁၂/ပဇတ(နိုင်)၀၁၁၁၇၄', '12/PAZATA(N)011174', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၃\"', '5\' 3\"', 'ဝဲလက်လက်ခုံမှဲ့ရှိ', 'have a mole on the left arm', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00016', 'ucms/img/UCMS-00063.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၆၁၈)၊ နွယ်သာကီ(၃)လမ်း၊ မြောက်ဥက္ကလာပမြို့နယ်၊ ရန်ကုန်မြို့', 'No.618, New Thar Gi (3) Street, North Ookalapa Tow', 'အမှတ်(၆၁၈)၊ နွယ်သာကီ\r(၃)လမ်း၊ မြောက်ဥက္ကလာပမြို့နယ', 'No.618, New Thar Gi (3) Street, North Ookalapa Tow', 'UCMS-00063', 'UCMS-00063', '၂၈-၀၈-၁၉၆၆', 'ucms/img/UCMS-00063.jpg'),
(17, '17', 'ဒေါ်သင်းသင်းယု(၂)', 'Daw Thin Thin Yu-2', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၁၅-၀၆-၁၉၇၉', '15-6-1979', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးခင်မောင်မြင့်', 'U Khin Maung Myint', '၈/ခမန(နိုင်)၁၁၁၄၈၃', '8/KHAMANA(N)111483', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'', '5\'', 'ယာနဖူးမှဲ့ရှိ', 'have a mole on the right forehead', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00017', 'ucms/img/UCMS-00064.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အုံမြားကြီးရွာ၊ ချောက်မြို့နယ်၊ မကွေးတိုင်းဒေသကြီး', 'Ohn Myar Gyi Village, Chauk Township, Magway Divis', 'အုံမြားကြီးရွာ၊ ချောက်မြို့နယ်၊ \rမကွေးတိုင်းဒေသကြီ', 'Ohn Myar Gyi Village, Chauk Township, Magway Divis', 'UCMS-00064', 'UCMS-00064', '၁၅-၀၆-၁၉၇၉', 'ucms/img/UCMS-00064.jpg'),
(18, '18', '‌ဒေါ်ဝင့်ဝါခင်', 'Daw Wint War Khin', 'တွဲဖက်ပါမောက္ခ(ဌာနမှူး)', 'Associate Professor(Head of Department)', '၀၉-၀၉-၁၉၈၁', '9-9-1981', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးခင်မောင်ရင်', 'U Khin  Mg Yin', '၅/မမန(နိုင်)၀၅၆၉၈၄', '5/MAMANA(N)056984', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'၃\"', '5\'3\"', 'လည်ပင်းမှဲ့ရှိ', 'have a mole on the neck', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00018', 'ucms/img/UCMS-00065.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အကွက်(၃၄၇)၊ စိန်ပန်းပွတ်တန်း၊ မဟာအောင်မြေမြို့နယ်၊ မန္တလေးမြို့', 'Quarter(347), Sein Pan Puton Street, Mahaaungmyae ', 'အကွက်(၃၄၇)၊ စိန်ပန်းပွတ်တန်း၊ မဟာအောင်မြေမြို့နယ်၊', 'Quarter(347), Sein Pan Puton Street, Mahaaungmyae ', 'UCMS-00065', 'UCMS-00065', '၀၉-၀၉-၁၉၈၁', 'ucms/img/UCMS-00065.jpg'),
(19, '19', '‌ဒေါ်ဇင်နွယ်ထွေး', 'Daw Zin New Htwe', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၀၇-၀၇-၁၉၈၁', '7-7-1981', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးမြင့်ဦး', 'U Myint Oo', '၁၃/ညရန(နိုင်)၀၅၉၇၀၀', '13/NyAYANA(N)059700', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၂\"', '5\' 2\"', 'ဘယ်ဘက်မေးစေ့ပေါ်မှဲ့ရှိ', 'have a mole on the left over the chin', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00019', 'ucms/img/UCMS-00067.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'ခရေ(၁)လမ်း၊ နန္ဒာဝန်ရပ်၊ ညောင်ရွှေမြို့၊ ရှမ်းပြည်နယ်(တောင်ပိုင်း)', 'Nyaung Shwe City, South Shan State', 'ခရေ(၁)လမ်း၊ နန္ဒာဝန်ရပ်၊ ညောင်ရွှေမြို့၊ ရှမ်းပြည်', 'Nyaung Shwe City, South Shan State', 'UCMS-00067', 'UCMS-00067', '၀၇-၀၇-၁၉၈၁', 'ucms/img/UCMS-00067.jpg'),
(20, '20', 'ဒေါ်သန္တာအောင်', 'Daw Thandar Aung', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၀၆-၀၆-၁၉၈၀', '6-6-1980', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးအောင်တင်', 'U Aung Tin', '၉/ပဥလ(နိုင်)၀၀၃၂၉၀', '9/PAULA(N)003290', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\'', '5\'', 'လည်ပင်းမှဲ့ရှိ', 'have a mole on the neck', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00020', 'ucms/img/UCMS-00069.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၁၉၂)၊ (၁၆)ရပ်ကွက်၊ ပြင်ဦးလွင်မြို့', 'No.192, 16 Quarter, Pyin Oo Lwin Town', 'အမှတ်(၁၉၂)၊ (၁၆)ရပ်ကွက်၊ \rပြင်ဦးလွင်မြို့', 'No.192, 16 Quarter, Pyin Oo Lwin Town', 'UCMS-00069', 'UCMS-00069', '၀၆-၀၆-၁၉၈၀', 'ucms/img/UCMS-00069.jpg'),
(21, '21', 'ဒေါ်အိအိပို', 'Daw Ei Ei Po', 'တွဲဖက်ပါမောက္ခ(ဌာနမှူး)', 'Associate Professor (Heard of Department)', '၃၁-၀၅-၁၉၈၁', '31-5-1981', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးပျော့', 'U Pyawt', '၅/ခဥတ(နိုင်)၀၅၉၈၄၁', '5/KAAouTA(N)059841', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၄\"', '5\' 4\"', 'ဝဲဘက်မျက်ခုံးထက် အမာရွတ်ရှိ', 'have a scare above the left eyebrow', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00021', 'ucms/img/UCMS-00070.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အိမ်နံပါတ်-ခဥမ၁၇၈၊ ဝင်းရပ်ကွက်၊ ချောင်းဦးမြို့', 'Win Quarter, Chaung U Township', 'အိမ်နံပါတ်-ခဥမ၁၇၈၊ ဝင်းရပ်ကွက်၊ ချောင်းဦးမြို့', 'Win Quarter, Chaung U Township', 'UCMS-00070', 'UCMS-00070', '၃၁-၀၅-၁၉၈၁', 'ucms/img/UCMS-00070.jpg'),
(22, '22', 'ဒေါ်ခင်မာတင်', 'Daw Khin Mar Tin', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၁၅-၁၁-၁၉၇၇', '15-11-1977', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးငွေသိန်း', 'U Ngwe Thein', '၅/မမတ(နိုင်)၀၅၀၇၀၃', '5/MAMATA(N)050703', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၃\"', '5\' 3\"', 'ဝဲဘက်မျက်ခွံမှဲ့ရှိ', 'have a mole on the eyelid', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00022', 'ucms/img/UCMS-00071.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'လက်ပံကျင်းရွာ၊ မြင်းမူမြို့နယ်၊ စစ်ကိုင်းတိုင်းဒေသကြီး', 'Let Pan Kyin Village, Myin Mu Township, Sagaing Re', 'လက်ပံကျင်းရွာ၊ မြင်းမူမြို့နယ်၊ စစ်ကိုင်းတိုင်းဒေသ', 'Let Pan Kyin Village, Myin Mu Township, Sagaing Re', 'UCMS-00071', 'UCMS-00071', '၁၅-၁၁-၁၉၇၇', 'ucms/img/UCMS-00071.jpg'),
(23, '23', 'ဒေါ်နွေဦး', 'Daw Nway Oo', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၀၆-၀၆-၁၉၈၁', '6-6-1981', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးသန်းကျော်', 'U Than Kyaw', '၂/လကန(နိုင်)၀၅၆၀၁၉', '2/LAKANA(N)056019', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၂\"', '5\' 2\"', 'ယာပါးမှဲ့ရှိ', 'have a mole on the right cheek', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00023', 'ucms/img/UCMS-00072.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'နောင်ဝိုး(သမထရွာ)၊ ပင်လောင်းမြို့နယ်၊ ရှမ်းပြည်နယ်', 'Nyaung Woo (TamatHa Village), Pinlaung Township, S', 'နောင်ဝိုး(သမထရွာ)၊ ပင်လောင်းမြို့နယ်၊ ရှမ်းပြည်နယ်', 'Nyaung Woo (TamatHa Village), Pinlaung Township, S', 'UCMS-00072', 'UCMS-00072', '၀၆-၀၆-၁၉၈၁', 'ucms/img/UCMS-00072.jpg'),
(24, '24', '‌ဒေါ်ယဉ်မွန်သန့်', 'Daw Yin Mon Thant', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၀၆-၀၄-၁၉၇၈', '6-4-1978', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးထွန်းရီ', 'U Tun Yi', '၉/မရမ(နိုင်)၀၈၈၇၉၉', '9/MAYAMA(N)088799', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၂\"', '5\' 2\"', 'ယာနှုတ်ခမ်းထက်မှဲ့ရှိ', 'have a mole on the right upper lip', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00024', 'ucms/img/UCMS-00073.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၂)၊ ၆၃လမ်း၊ ၃၂×၃၃ကြား၊ ချမ်းအေးသာစံမြို့နယ်၊ မန္တလေးမြို့', 'No.2, 63 Street, Between 32 33 Street, Chan Aye Th', 'အမှတ်(၂)၊ ၆၃လမ်း၊ ၃၂×၃၃ကြား၊ ချမ်းအေးသာစံမြို့နယ်၊', 'No.2, 63 Street, Between 32 33 Street, Chan Aye Th', 'UCMS-00073', 'UCMS-00073', '၀၆-၀၄-၁၉၇၈', 'ucms/img/UCMS-00073.jpg'),
(25, '25', 'ဒေါက်တာချောအိအိထွန်း', 'Dr. Chaw Ei Ei Htun', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၃၁-၀၇-၁၉၇၈', '31-7-1978', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးတင်ထွန်း', 'U Tin Tun', '၅/ရဘန(နိုင်)၁၀၅၇၂၁', '5/YABANA(N)105721', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၅\"', '5\' 5\"', 'လည်ပင်းမှဲ့ရှိ', 'have a mole on the neck', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00025', 'ucms/img/UCMS-00074.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'အမှတ်(၄)ရပ်ကွက်၊ ကျီတော်စုနောက်ပိုင်း၊ သီရိလမ်း၊ ရွှေဘိုမြို့', 'No.4 Quarter, West of Kyi Taw Su, Thiri Street, Sh', 'အမှတ်(၄)ရပ်ကွက်၊ ကျီတော်စုနောက်ပိုင်း၊ သီရိလမ်း၊ ရ', 'No.4 Quarter, West of Kyi Taw Su, Thiri Street, Sh', 'UCMS-00074', 'UCMS-00074', '၃၁-၀၇-၁၉၇၈', 'ucms/img/UCMS-00074.jpg'),
(26, '26', '‌ဒေါ်အိအိအေး', 'Daw Ei Ei Aye', 'တွဲဖက်ပါမောက္ခ', 'Associate Professor', '၁၂-၀၆-၁၉၈၂', '12-6-1982', 'သမဝါယမနှင့် စီမံခန့်ခွဲမှုပညာတက္ကသိုလ်(စစ်ကိုင်း)', 'University of Co-Operative and Management-Sagaing', 'ဦးတင်သိန်း', 'U Tin Thein', '၅/ရဘန(နိုင်)၁၄၈၉၅၁', '5/YABANA(N)148951', 'အနက်', 'Black', 'အနက်', 'Balck', '၅\' ၅\"', '5\' 5\"', 'နဖူးမှဲ့ရှိ', 'have a mole on the forehead', 'Active(တာဝန်ထမ်းဆောင်ဆဲ)', '1', 'UCMS-00026', 'ucms/img/UCMS-00075.jpg', '၈-၀၁-၂၀၂၄', '8-01-2024', 'ညောင်းရင်းကုန်းကျေးရွာ၊ ရွှေဘိုမြို့နယ်', 'Nyaung Yinn Khone Village, Shwebo Township', 'ညောင်းရင်းကုန်းကျေးရွာ၊ ရွှေဘိုမြို့နယ်', 'Nyaung Yinn Khone Village, Shwebo Township', 'UCMS-00075', 'UCMS-00075', '၁၂-၀၆-၁၉၈၂', 'ucms/img/UCMS-00075.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `ucmt`
--

CREATE TABLE `ucmt` (
  `ID` int NOT NULL,
  `SRNO` varchar(255) DEFAULT NULL,
  `NAMEMM` varchar(255) DEFAULT NULL,
  `NAMEEN` varchar(255) DEFAULT NULL,
  `POSTMM` varchar(255) DEFAULT NULL,
  `POSTEN` varchar(255) DEFAULT NULL,
  `DOBMM` varchar(255) DEFAULT NULL,
  `DOBEN` varchar(255) DEFAULT NULL,
  `DEPARTMENTMM` varchar(255) DEFAULT NULL,
  `DEPARTMENTEN` varchar(255) DEFAULT NULL,
  `FATHERNAMEMM` varchar(255) DEFAULT NULL,
  `FATHERNAMEEN` varchar(255) DEFAULT NULL,
  `NRCMM` varchar(255) DEFAULT NULL,
  `n` varchar(255) DEFAULT NULL,
  `EYECOLMM` varchar(255) DEFAULT NULL,
  `EYECOLEN` varchar(255) DEFAULT NULL,
  `HAIRCOLMM` varchar(255) DEFAULT NULL,
  `HAIRCOLEN` varchar(255) DEFAULT NULL,
  `HEIGHTMM` varchar(255) DEFAULT NULL,
  `HEIGHTEN` varchar(255) DEFAULT NULL,
  `SPMM` varchar(255) DEFAULT NULL,
  `SPEN` varchar(255) DEFAULT NULL,
  `DUTY` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `PHOTOWEB` varchar(255) DEFAULT NULL,
  `ISSUEDDATEMM` varchar(255) DEFAULT NULL,
  `ISSUEDDATEEN` varchar(255) DEFAULT NULL,
  `ADDRESSMM` varchar(255) DEFAULT NULL,
  `ADDRESSEN` varchar(50) DEFAULT NULL,
  `LOCATIONMM` varchar(50) DEFAULT NULL,
  `LOCATIONEN` varchar(50) DEFAULT NULL,
  `DRDIDEN` varchar(50) DEFAULT NULL,
  `DRDIDMM` varchar(50) DEFAULT NULL,
  `DOBMMRAW` varchar(50) DEFAULT NULL,
  `PHOTO` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `pass_word` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drrd`
--
ALTER TABLE `drrd`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DRDIDEN` (`DRDIDEN`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `mcrd_tbl`
--
ALTER TABLE `mcrd_tbl`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `ssid`
--
ALTER TABLE `ssid`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DRDIDEN` (`DRDIDEN`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `ssid_copy`
--
ALTER TABLE `ssid_copy`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DRDIDEN` (`DRDIDEN`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `staff_tbl`
--
ALTER TABLE `staff_tbl`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DRDIDEN` (`DRDIDEN`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `staff_tbl_copy1`
--
ALTER TABLE `staff_tbl_copy1`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `DRDIDEN` (`DRDIDEN`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `ucms`
--
ALTER TABLE `ucms`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `ucmt`
--
ALTER TABLE `ucmt`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `n` (`n`),
  ADD UNIQUE KEY `c` (`c`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drrd`
--
ALTER TABLE `drrd`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mcrd_tbl`
--
ALTER TABLE `mcrd_tbl`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ssid`
--
ALTER TABLE `ssid`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ssid_copy`
--
ALTER TABLE `ssid_copy`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_tbl`
--
ALTER TABLE `staff_tbl`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_tbl_copy1`
--
ALTER TABLE `staff_tbl_copy1`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ucms`
--
ALTER TABLE `ucms`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ucmt`
--
ALTER TABLE `ucmt`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
