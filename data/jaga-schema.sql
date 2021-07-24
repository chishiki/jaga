
DROP TABLE IF EXISTS `jaga_Category`;

CREATE TABLE `jaga_Category` (
  `categoryKey` varchar(100) NOT NULL,
  `siteID` int(12) NOT NULL,
  `creator` int(12) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime,
  `deleted` int(1) NOT NULL,
  `categoryEnglish` varchar(255) NOT NULL,
  `categoryJapanese` varchar(255) NOT NULL,
  `categoryJapaneseReading` varchar(255) NOT NULL,
  PRIMARY KEY (`categoryKey`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



DROP TABLE IF EXISTS `jaga_Channel`;

CREATE TABLE `jaga_Channel` (
  `channelID` int(12) NOT NULL AUTO_INCREMENT,
  `siteID` int(12) NOT NULL,
  `creator` int(12) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime,
  `deleted` int(1) NOT NULL,
  `channelKey` varchar(50) NOT NULL,
  `channelDomain` varchar(100) NOT NULL,
  `channelCreationDateTime` datetime NOT NULL,
  `channelEnabled` int(1) NOT NULL,
  `channelTitleEnglish` varchar(255) NOT NULL,
  `channelTitleJapanese` varchar(255) NOT NULL,
  `channelTagLineEnglish` varchar(50) DEFAULT NULL,
  `channelTagLineJapanese` varchar(50) DEFAULT NULL,
  `channelKeywordsEnglish` varchar(255) NOT NULL,
  `channelKeywordsJapanese` varchar(255) NOT NULL,
  `channelDescriptionEnglish` varchar(255) NOT NULL,
  `channelDescriptionJapanese` varchar(255) NOT NULL,
  `themeKey` varchar(50) NOT NULL,
  `siteTwitter` varchar(20) NOT NULL,
  `pagesServed` int(12) NOT NULL,
  `siteManagerUserID` int(12) NOT NULL,
  `isPublic` int(1) NOT NULL,
  `isCloaked` int(1) NOT NULL,
  `isNSFW` int(1) NOT NULL,
  `contestStatus` varchar(7) NOT NULL,
  PRIMARY KEY (`channelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



DROP TABLE IF EXISTS `jaga_ChannelCategoryMap`;

CREATE TABLE `jaga_ChannelCategoryMap` (
  `channelID` int(12) NOT NULL,
  `categoryKey` varchar(50) NOT NULL,
  `siteID` int(12) NOT NULL,
  `creator` int(12) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime,
  `deleted` int(1) NOT NULL,
  `channelCategoryDesciptionEnglish` varchar(255) DEFAULT NULL,
  `channelCategoryDesciptionJapanese` varchar(255) DEFAULT NULL,
  `channelCategoryDomain` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`channelID`,`categoryKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




DROP TABLE IF EXISTS `jaga_Comment`;

CREATE TABLE `jaga_Comment` (
  `commentID` int(12) NOT NULL AUTO_INCREMENT,
  `siteID` int(12) NOT NULL,
  `creator` int(12) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime,
  `deleted` int(1) NOT NULL,
  `channelID` int(12) NOT NULL,
  `userID` int(12) NOT NULL,
  `commentDateTime` datetime NOT NULL,
  `commentObject` varchar(25) NOT NULL,
  `commentObjectID` int(11) NOT NULL,
  `commentContent` text NOT NULL,
  PRIMARY KEY (`commentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




DROP TABLE IF EXISTS `jaga_Post`;

CREATE TABLE `jaga_Post` (
  `postID` int(12) NOT NULL AUTO_INCREMENT,
  `siteID` int(12) NOT NULL,
  `creator` int(12) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime,
  `deleted` int(1) NOT NULL,
  `channelID` int(12) NOT NULL,
  `postURL` varchar(255) NOT NULL,
  `postCategoryKey` varchar(255) NOT NULL,
  `postSubmittedByUserID` int(12) NOT NULL,
  `postSubmissionDateTime` datetime NOT NULL,
  `postPublishStartDate` date NOT NULL,
  `postPublishEndDate` date NOT NULL,
  `postLastModified` datetime NOT NULL,
  `postTitleEnglish` varchar(255) NOT NULL,
  `postTitleJapanese` varchar(255) NOT NULL,
  `postEnglish` text NOT NULL,
  `postJapanese` text NOT NULL,
  `postLinkURL` varchar(255) NOT NULL,
  `postPublished` int(1) NOT NULL,
  `postViews` int(12) NOT NULL,
  `postIsEvent` int(1) NOT NULL,
  `postEventDate` date NOT NULL,
  `postEventStartTime` time NOT NULL,
  `postEventEndTime` time NOT NULL,
  `postHasLocation` int(1) NOT NULL,
  `postLatitude` decimal(9,6) NOT NULL,
  `postLongitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



