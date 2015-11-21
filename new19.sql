-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 18, 2014 at 04:23 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new19`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=243 ;

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-24 22:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 1),
(2, 4, '2008-08-01 22:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 1),
(3, 3, '2008-08-01 22:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 1),
(4, 3, '2008-08-13 14:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 1),
(5, 1, '2008-09-02 18:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 1),
(6, 3, '2008-09-15 19:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 1),
(7, 3, '2008-09-17 17:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 1),
(8, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(9, 3, '2008-11-19 23:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 1),
(10, 3, '2008-11-26 19:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 1),
(11, 3, '2008-12-30 05:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 1),
(12, 2, '2008-12-30 19:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 1),
(13, 2, '2009-01-12 18:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 1),
(14, 3, '2009-01-23 22:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 1),
(15, 3, '2009-02-02 19:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 1),
(16, 3, '2009-02-23 22:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 1),
(17, 3, '2009-02-26 23:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 1),
(18, 2, '2009-03-03 21:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 1),
(19, 3, '2009-03-30 23:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 1),
(20, 3, '2009-04-18 01:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 1),
(21, 3, '2009-05-19 19:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 1),
(22, 3, '2009-05-29 19:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 1),
(23, 3, '2009-06-01 16:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 1),
(24, 3, '2009-07-01 22:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 1),
(25, 3, '2009-07-23 03:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 1),
(26, 4, '2009-08-28 15:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 1),
(27, 2, '2009-09-23 17:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 1),
(28, 4, '2009-09-25 11:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 1),
(29, 4, '2009-10-06 21:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 1),
(30, 4, '2009-12-08 21:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 1),
(31, 4, '2009-12-31 07:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 1),
(32, 4, '2010-02-13 01:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 1),
(33, 3, '2010-02-20 00:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 1),
(34, 4, '2010-04-23 17:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 1),
(35, 4, '2010-05-31 14:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 1),
(36, 4, '2010-06-10 17:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 1),
(37, 4, '2010-07-26 18:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 1),
(38, 4, '2010-07-28 02:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 1),
(39, 4, '2010-07-28 17:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 1),
(40, 4, '2010-10-11 21:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 1),
(41, 4, '2010-11-08 19:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 1),
(42, 4, '2010-12-02 18:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 1),
(43, 4, '2010-12-08 20:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 1),
(44, 4, '2010-12-17 21:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 1),
(45, 4, '2010-12-29 21:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 1),
(46, 4, '2011-01-13 22:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 1),
(47, 4, '2011-01-21 19:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 1),
(48, 4, '2011-01-27 19:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 1),
(49, 4, '2011-02-03 19:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 1),
(50, 4, '2011-02-08 17:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 1),
(51, 4, '2011-02-09 21:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 1),
(52, 4, '2011-03-18 17:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 1),
(53, 4, '2011-03-31 15:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 1),
(54, 4, '2011-04-26 16:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 1),
(55, 4, '2011-05-26 16:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 1),
(56, 4, '2011-06-15 15:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 1),
(57, 4, '2011-06-30 16:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 1),
(58, 4, '2011-07-11 16:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 1),
(59, 4, '2011-08-19 14:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 1),
(60, 4, '2011-09-16 22:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 1),
(61, 4, '2011-09-29 12:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 1),
(62, 4, '2011-10-19 14:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 1),
(63, 4, '2011-12-30 15:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 1),
(64, 4, '2012-01-11 15:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 1),
(65, 4, '2012-03-02 17:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 1),
(66, 4, '2012-04-23 07:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 1),
(67, 4, '2012-05-11 02:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 1),
(68, 4, '2012-06-20 11:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 1),
(69, 4, '2012-07-05 12:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 1),
(70, 4, '2012-11-19 13:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 1),
(71, 4, '2012-12-07 04:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 1),
(72, 4, '2013-01-15 15:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 1),
(73, 4, '2013-02-12 10:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 1),
(74, 2, '2013-09-27 10:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 1),
(75, 4, '2013-12-11 08:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 1),
(76, 4, '2013-12-12 16:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 1),
(77, 4, '2014-01-21 11:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 0, 1),
(78, 4, '2014-02-20 10:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 0, 1),
(79, 4, '2014-03-04 08:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 0, 1),
(80, 4, '2014-05-13 09:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 1),
(81, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(82, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(83, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(84, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(85, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(86, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(87, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(88, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(89, 4, '2008-11-07 21:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 0, 1),
(90, 4, '2014-09-08 23:51:17', 'Belvg''s extension has been installed. Check the Admin > Configuration > Belvg Extensions.', 'You can see versions of the installed extensions right in the admin, as well as configure notifications about major updates.', 'http://store.belvg.com/blog/', 0, 1),
(91, 4, '2011-08-22 06:45:25', 'Magento Absolute theme is available for Magento Go now! ', 'Magento Absolute theme is available for Magento Go now! ', 'http://templates-master.com/magento-templates/free-absolute-magento-go-template.html', 0, 0),
(92, 4, '2011-09-06 06:27:48', 'New Elastic Premium template for Magento is published', 'New Elastic Premium template for Magento is published.', 'http://bit.ly/pf0ilp ', 0, 0),
(93, 3, '2011-09-12 01:37:58', 'Magento 1.6 compatability update', 'All our themes and extensions compatible with Magento 1.6 CE now!  Request your update at http://bit.ly/q51qxj ', 'http://bit.ly/q51qxj ', 0, 0),
(94, 4, '2011-09-19 05:52:59', 'Check our new Affiliate Suite extension for Magento CE', 'Affiliate Suite by Templates Master will help you to build new efficient sales channe. Your new affiliate partners will be able to promote your store by emailing, placing links, banners and other  media on their sites and any social networks profiles.', 'http://bit.ly/oKa0zd ', 0, 0),
(95, 4, '2011-10-12 07:02:30', 'Magento Easybanners 1.1 is now available', 'Easybanners provide easy and powerful tools to manage and target banners to specific users. We are proud to announce that this extension provide support for Magento widgets now. So you can place any banner or placeholder right into your cms page. We have also added option to call out placeholders directly in the phtml templates.', 'http://bit.ly/phgpx5', 0, 0),
(96, 4, '2011-11-04 09:49:59', 'Join us on Facebook and get one time 10% OFF on all our templates and extensions.', 'Join us on Facebook and get one time 10% OFF on all our templates and extensions.', 'http://on.fb.me/rYE7qW ', 0, 0),
(97, 4, '2011-11-08 09:00:10', 'Affiliate Suite 1.0.5  is now available', 'Affiliate Suite by Templates Master will help you to build new efficient sales channel and start offering affiliate programs at your store.\n\nNew features\n- Allow to copy banners\n- Autoselect default campaign on partner registration\n- Ordered products report interface added\n\nBug fixes\n- Prowidget tool hidden on frontend if disableded', 'http://bit.ly/saXDyk', 0, 0),
(98, 4, '2011-11-11 08:40:50', 'Firecheckout 1.6.1 compatability update ', 'Firecheckout is now fully compatible with Magento 1.6.1', 'http://bit.ly/sUDhHK ', 0, 0),
(99, 4, '2011-11-17 09:28:50', 'New Product Highlight extension for Magento is now available!', 'New Product Highlight extension for Magento is now available!', 'http://bit.ly/tGwtwZ ', 0, 0),
(100, 4, '2011-11-22 10:04:45', 'Magento Easy Slider is now available as standalone extension!', 'Magento Easy Slider is now available as standalone extension!', 'http://bit.ly/uu0GxJ ', 0, 0),
(101, 4, '2011-11-28 08:45:49', 'Cyber Monday Discount! Get 20% off for all our products - code THNK20 ', 'Cyber Monday Discount! Get 20% off for all our products - code THNK20 ', 'http://bit.ly/sBBbSa', 0, 0),
(102, 4, '2011-11-30 08:22:50', 'Helpmate 1.1 is now available', 'Helpmate 1.1 is now available\n\nFeatures:\n- 2 types of contact form. First is default and second one is like http://www.payoneer.com/contactUs.aspx \n- Attach allowed files from emails\n- Akismet integration\n\nBug fix\n- File upload bug in admin fixed', 'http://bit.ly/teCtnm ', 0, 0),
(103, 4, '2011-12-13 06:44:45', 'Magento 1.6.1 compatability update', 'We are glad to inform that recent themes 1.6.1 update also include recent version of Highlight and Easyslide extension.\nRequest your update at http://bit.ly/q51qxj ', 'http://bit.ly/sEHONg ', 0, 0),
(104, 4, '2011-12-21 09:14:11', 'Social Suit extension for Magento is now available!', 'Social Suit - New Facebook & Google social networks integration extension for Magento', 'http://bit.ly/ugYisg ', 0, 0),
(105, 4, '2012-01-12 06:50:11', 'Firecheckout 2.0 is now available.', 'Firecheckout 2.0  is now available with great new features:\n\n- Configurable address form fields sort order\n- Delivery date option\n- Flexible AJAX updates for checkout page\n- Improved overall performance over 30%\n- Now  available in 11 languages (English, Arabic, Chinese Simplified, Dutch, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish, Swedish)', 'bit.ly/sUDhHK', 0, 0),
(106, 4, '2012-01-19 09:39:44', 'Magento Affiliate Suite 1.1 and Ajax Pro 1.6.6 are now available.', 'Magento Affiliate Suite 1.1 and Ajax Pro 1.6.6 are now available.', 'http://bit.ly/ycr6uq ', 0, 0),
(107, 4, '2012-01-30 08:10:21', 'Magento Affiliate Suite 1.1.1 is now available', 'Please update your Affialite suite to recent 1.1.1 version.', 'bit.ly/saXDyk', 0, 0),
(108, 4, '2012-02-02 08:26:01', 'Social Suite 1.1 with great new features is now available', '- Twitter integration\n- Allow to login with social networks on checkout page\n- Firecheckout login integration support\n- Floating social panel\n- Improved localization\n', 'http://bit.ly/A8h4yk', 0, 0),
(109, 4, '2012-02-15 07:44:58', 'Lightbox Pro extension for Magento is now available!', 'Lightbox Pro will replace default magento image zoom with new easy-to-use and flexible Lightbox widget. ', 'http://bit.ly/xmm1WU', 0, 0),
(110, 4, '2012-03-12 09:11:39', 'Mobile Star - Android and iPhone theme for Magento is now available!', 'Don’t loose your chance to keep contact with your customers while they are using their phones. We have created Mobile Star Magento theme that will help you join new e-commerce revolution and build your mobile presence just in 5 minutes. Mobile Star is specially designed Magento theme that will work on iPhone, Android  and any other advanced phone. ', 'http://bit.ly/z5XF3M ', 0, 0),
(111, 4, '2012-03-20 06:48:13', 'Mobile Star template for iPhone and Android is compatible with Magento CE 1.4 —1.6 now.', 'Don’t loose your chance to keep contact with your customers while they are using their phones. We have created Mobile Star Magento theme that will help you join new e-commerce revolution and build your mobile presence just in 5 minutes. Mobile Star is specially designed Magento theme that will work on iPhone, Android  and any other advanced phone. ', 'http://bit.ly/GBPp2w', 0, 0),
(112, 4, '2012-04-11 02:44:13', 'Firecheckout 2.1 is now available.', 'Firecheckout 2.1 is now available with great new features:\n\n- Editable shopping cart on checkout page\n- Optionally show products images on checkout page\n- Improved message for the customers using emails that are already in use\n- Improved Fire Checkout page layout\n- Improved performance while saving Fire Checkout configuration', 'http://bit.ly/IqPRSb ', 0, 0),
(113, 4, '2012-04-27 03:36:31', 'Fire Checkout 2.1.1 for Magento CE 1.7 is now available', 'Fire Checkout 2.1.1 for Magento CE 1.7 is now available', 'http://bit.ly/Igy452 ', 0, 0),
(114, 4, '2012-05-04 04:11:25', 'Mobile Star template is now compatible with Magento CE 1.7.0 and 1.4.0', 'Mobile Star template is now compatible with Magento CE 1.7.0 and 1.4.0', 'http://bit.ly/JXXWT4', 0, 0),
(115, 4, '2012-05-10 08:16:19', 'Absolute and classic themes are now compatible with Magento CE 1.7.0', 'Absolute and classic themes are now compatible with Magento CE 1.7.0', 'http://bit.ly/Jk7p4F ', 0, 0),
(116, 4, '2012-05-15 07:05:03', 'Firecheckout is now compatible with Magento Enterprise edition.', 'Firecheckout is now compatible with Magento Enterprise edition.', 'http://bit.ly/JQqvRi ', 0, 0),
(117, 4, '2012-05-24 12:39:46', 'Prolabels 2.0 with unlimited labels support now available!', 'Prolabels 2.0 is now available with great new features:\n\n- Unlimited number of labels\n- Flexible condition rules\n- Optimized for large catalogs', 'http://bit.ly/MKP9ou ', 0, 0),
(118, 4, '2012-05-25 07:40:31', 'Helpmate with great new features and Magento CE 1.7 support is now available', ' Helpmate 1.2 is now available with great new features:\n\n- Private tickets responses not visible to users.\n- Create ticket buttons on order and customer admin pages\n- Multiply select option for storeviews on kb articles page\n- Categories and Articles sort order in KB\n- Improve search and suggest algorithm of KB articles\n- Ajax Search compatibility ', 'http://bit.ly/LhSTwf ', 0, 0),
(119, 4, '2012-05-30 09:07:16', 'Magento templates are now compatible with Magento CE 1.7', 'We are glad to inform that all our templates were recently updated to Magento CE 1.7. Request your update at http://bit.ly/q51qxj ', 'http://bit.ly/KHFrQY', 0, 0),
(120, 4, '2012-06-22 07:22:54', 'Prolabels 2.1 is now available', 'Prolabels 2.1 is now available with next new features and bugfixes:\n\n- Performance update\n- Active products grid interface added for labels\n- Out of stock label text option added\n- Catalog indexes conflict fixed', 'http://bit.ly/LGESFz', 0, 0),
(121, 4, '2012-07-05 07:12:33', 'Firecheckout 2.2 is now available.', 'Fire Checkout 2.2 is now available with great new features:\n\n- 5 custom order fields added\n- Hide other shipping methods, if free is applicable (optional)\n- Nice looking styles on our Mobile Star theme\n- Improved positioning of the popup window and spinner on mobile devices\n- Fixed conflict with Magento''s _canShowForUnregisteredUsers method.\n- In order to improve Fire Checkout compatibility with third party extensions "Enable Agreements" option was removed. Please use Magento standard config option instead. You can find it at the checkout options section.', 'http://bit.ly/N8Cyqi', 0, 0),
(122, 4, '2012-07-25 07:07:32', 'Prolabels 2.2 is now available', 'Prolabels 2.2 is now available with next new features\n\n- Unlimited number of system labels\n- Improved localization for system labels\n', 'http://bit.ly/Qj65pj', 0, 0),
(123, 4, '2012-08-01 08:26:13', 'Ajax Layered Navigation 1.1 is now available', 'Ajax Layered Navigation 1.1 is now available with next new features\n\n- Two new layered navigation styles: vertical layered navigation and drop down layered navigation\n- Limit number of filters to show\n- Improved Magento 1.7 compatibility\n- Improved price ranges algorithm\n', 'http://bit.ly/ODpjUN', 0, 0),
(124, 4, '2012-08-09 07:31:48', 'Ajax Pro 2.0  is now available', 'Ajax Pro 2.0  is now available with next new features\n\n- completely refactored extension logic for better performance and better compatibility\n- javascript login form added', 'http://bit.ly/Na3k8u', 0, 0),
(125, 4, '2012-08-17 08:17:07', 'Social Suite 1.2 with Pinterest integration is now available', 'Social Suite 1.2  is now available with next new features\n\n- Pinterest integration\n', 'http://bit.ly/N8Mcu0', 0, 0),
(126, 4, '2012-08-27 07:15:31', 'Ajax Pro 2.0.1 update is now available', 'Ajax Pro 2.0.1  is now available with next new features\n\n- Ajax Pro links and actions disabled for search engines spiders\n', 'http://bit.ly/PVixZE', 0, 0),
(127, 4, '2012-08-30 12:16:37', 'Helpmate 1.2.1 is now available', 'Helpmate 1.2.1  is now available with next new features\n\n- Captcha support for Magento 1.7\n- Frontend layout field label alignment fixed\n- File uploaded type javascript validation added\n- Order info field is now optional\n- Improved admin tickets message format\n\n', 'http://bit.ly/UdSddX', 0, 0),
(128, 4, '2012-09-17 02:56:48', 'Fire Checkout 2.3.1 is now available. Check more details on most advanced  one page checkout for Magento.', 'Fire Checkout 2.3.1 is now available with next new features\n\n- Added check for minimum order amount during cart update\n- Fire Checkout layout updated. Now it has more cleaner place order section.\n- Order review block added for EU countries and overall layout is now fully compatible with recent EU requirements\n- Shopping cart section improved. Product name as link and short products description cab be shown now\n\n', 'http://bit.ly/Prk3Bp', 0, 0),
(129, 4, '2012-09-18 07:26:11', 'Facebook Like Button 2.0 is now available', 'Facebook Like Button 2.0 is now available with next new features\n\n- Allow to place like buttons on categories pages\n- Flexible locale configuration in admin\n- Fixed problems with meta image and description information\n', 'http://bit.ly/QiEL5P', 0, 0),
(130, 4, '2012-09-27 07:05:58', 'Buy 2 products and get 5% OFF on entire order ', 'We are really glad to offer new discount for our clients: Buy 2 products and get 5% OFF on entire order. No coupon code needed.', 'http://bit.ly/OXhGd3', 0, 0),
(131, 4, '2012-10-04 02:56:32', 'Navigation Pro - most powerful Magento navigation solution is now available! ', '', 'http://bit.ly/QHQC04', 0, 0),
(132, 4, '2012-10-09 06:08:56', 'Mobile Star Magento theme  version 1.2 is available. Now with mobile theme switcher.', '', 'http://bit.ly/VVrZPt', 0, 0),
(133, 4, '2012-10-11 02:38:08', 'Navigation Pro is now compatible with Magento Community 1.4+ and Magento Enterprise 1.12+ ', '', 'http://bit.ly/T7Qe8w', 0, 0),
(134, 4, '2012-10-15 07:54:50', 'Firecheckout 2.3.2 is now available ', 'Fire Checkout 2.3.2 is now available with next new features\n\n- Saving delivery date and additional checkout fields when PaypalExpress or similar method is used fixed.\n- Payone integration added\n', 'http://bit.ly/Rx95xd', 0, 0),
(135, 4, '2012-10-18 08:46:49', 'Easy Slider 2.0 with Nivo slider integration is now available', 'Easy Slider 2.0 is now available with next new features\n\n- Nivo slider integration\n- Support 18 Nivo slider effects\n- Responsive design friendly\n- Load jQuery in no-conflict mode', 'http://bit.ly/R2MW7e', 0, 0),
(136, 4, '2012-10-24 08:30:25', 'Ajax Pro user manual and  demo is now updated to recent 2.0 version', '', 'http://bit.ly/Siqs4g ', 0, 0),
(137, 4, '2012-10-31 09:14:53', 'Helpmate 1.3.0 is now available', 'Helpmate 1.3.0  is now available with next new features\n- Allow admins to answer tickets via email gateway\n- WYSIWYG editor is now available in admin ticket interface\n- Optionally display html tags in tickets interface\n\nFixes\n- Fixed issue with error message attached to tickets for disallowed file types\n- Improved email format auto-detect feature\n', 'http://bit.ly/PHeEdJ', 0, 0),
(138, 4, '2012-11-02 09:21:07', ' Increase click-through rates on search engines results pages with Google Rich Snippets extension for Magento', '', 'http://bit.ly/SBLpqY', 0, 0),
(139, 4, '2012-11-08 03:59:06', 'Google Rich Snippet 1.1 is now available', 'Google Rich Snippet  1.1.0  is now available with next new features\n\n- Each snippet can be disabled or enabled now in extension configuration \n- Manufactures snippet configuration field converted to dropdown\n- Seller snippet configuration field converted to text area\n- Improved compatibility with magento 1.4\n', 'http://bit.ly/RGZsMi', 0, 0),
(140, 4, '2012-11-20 06:48:20', 'Firecheckout 2.3.3 is now available', 'Fire Checkout 2.3.3 is now available with next new features\n\n- Unirgy gift card integration fixed.\n- Order review with single payment method fixed.\n- Order review with billing address only fixed.\n- Buyerprotection integration added.\n', 'http://bit.ly/10lYxU0 ', 0, 0),
(141, 4, '2012-11-22 07:25:47', 'Magento Easy Catalog Images 2.0 is now available', 'Easy Catalog Images 2.0  is now available with next new features\n\nGeneral:\n-  Perfomance improvements. Dramatically decreased query count per block render (One query).\n-  Cache support added.\n-  Flexible grid styles added to support multicolumn mode for various site styles without modifying the styles. 2-6 columns are supported out of the box.\n-  Category thumbnail is displayed instead of category image by default.\n-  Widget support added. Widget is fully configurable with custom options. You can insert the Easy Catalog Images where you wish to. (Any cms page, block etc)\n-  EasyCatalogImages block is now shown above the category title. We did this to prevent numerous conflicts with custom themes.\nConfiguration improvements:\n-  Maximum category count to show added.\n-  Ability to set the background color for resized image. White by default.\n\nRemoved features. (Removed to improve compatibility with custom themes)\n-  ''Show categories listing'' on homepage removed. Please use the homepage editor and add Easy Catalog Images widget directly to the homepage content.\n-  Alibity to disable product listing removed. Please use the built-in Magento option on category edit page.\n-  ''Show child categories'' field removed. Please use the ''Number of subcategories to show'' field get the same result.\n\n', 'http://bit.ly/SX6qdg', 0, 0),
(142, 4, '2012-11-26 04:20:02', 'Cyber Monday Discount! Get 15% off for all our products - code CYBER15', 'Cyber Monday Discount! Get 15% off for all our products - code CYBER15', 'http://bit.ly/TdT2ld', 0, 0);
INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(143, 4, '2012-11-28 09:30:29', 'Improve your customers shopping experience with Ajax Pro 2.1 ', 'Ajax Pro 2.1 is now available with next new features:\n\n- Improved IE compatibility\n- Bug with limited wishlist products number fixed\n- Problem with compare list clear feature resolved\n- Problem with continue shopping button for configurable products resolved\n- Completely removed ajaxpro actions from compare popup for better user experience', 'http://bit.ly/10Wm13j', 0, 0),
(144, 4, '2012-11-29 10:27:32', 'Amend layered navigation with  Ajax Layered Navigation 1.2', 'Ajax Layered Navigation 1.2 is now available with next new features:\n\n- Search form added\n- Scroll effect added for better user experience\n- Fixed problem with price slider for non-valid intervals\n- Fixed problems with selected category filter\n- Improved IE compatibility\n', 'http://bit.ly/11jZDzU', 0, 0),
(145, 4, '2012-12-05 03:45:01', 'Create custom products blocks with Products Highlight 2.3 ', 'Products Highlight 2.3  is now available with next new features:\n\n-Hightlight page with product listing added.\n-Product type filter added\n-SEO urls support added to the homepage highlight listing.', 'http://bit.ly/VvIx2B', 0, 0),
(146, 4, '2012-12-06 02:31:23', 'Improve your store sales with Fire Checkout 2.3.4', 'Fire Checkout 2.3.4 is now available with next new features:\n\n- Agreements wrapper will not visible, if there are no agreements available.\n- OrderReview styles improvements.\n- IE stability fix for slowly loading sites.\n- Payment tooltip positioning fixed, when position relative is used on parent elements.\n- IE7 css and javascript fixes.\n- CheckoutFields updated:\n- Compatibility with Magento 1.5, 1.6 added.\n- Ability to enable/disable printing of checkout fields for invoices and packingslips', 'http://bit.ly/TE5kUj', 0, 0),
(147, 4, '2012-12-11 10:39:43', ' Google Rich Snippets 1.2.1 is now available ', 'Google Rich Snippets 1.2.1 is now available with next new features:\n\n- Description snippet is moved from meta tag to visible tag\n- Name snippet is moved from meta tag to visible tag\n- Review snippet is moved from meta tag to visible tag\n', 'http://bit.ly/125EfzM', 0, 0),
(148, 4, '2012-12-18 06:05:18', 'Protect your store back-end from unauthorized access with two-step verification by Google Authenticator', '', 'http://bit.ly/UOfT8z', 0, 0),
(149, 4, '2012-12-26 04:17:47', 'Enjoy the spirit of the season and get great savings at Templates Master. Get 20% off for all our products - code XMAS20', 'Enjoy the spirit of the season and get great savings at Templates Master. Get 20% off for all our products - code XMAS20', 'http://bit.ly/Vxx7VX', 0, 0),
(150, 4, '2013-01-04 08:37:04', ' Google Rich Snippets 1.2.4 is now available ', 'Google Rich Snippets 1.2.4 is now available with next new features:\n\n- Added organisation snippet\n- Review snippet template modified\n\n', 'http://bit.ly/X66lHs', 0, 0),
(151, 4, '2013-01-10 08:57:20', 'Ajax Search And Autocomplete 1.3.0 is now available ', 'Ajax Search And Autocomplete 1.3.0  is now available with next new features:\n\n- Fixed detection of element width and height\n- Fixed loader positioning, when relative styles are not used in theme\n- Optional filtering of suggestions by category added\n\n', 'http://bit.ly/WEem3w', 0, 0),
(152, 4, '2013-01-24 08:40:19', 'Improve your checkout experience with Fire Checkout 2.3.6', 'Fire Checkout 2.3.6 is now available with next new features:\n\n- Paypal fixes for payflowlink, payflowadvanced and hostedpro solutions\n- Fixed missing dicount amount, when placing order as guest in Magento 1.7.0.2\n- TBT RewardsPoint partial integration\n- Improved display of long product attributes in shopping cart\n- SVMPayment integration fixed\n- Improved integration with SagepayDirect incheckout mode\n- CraftyClicks integration improvements', 'http://bit.ly/V9ArYB', 0, 0),
(153, 4, '2013-02-11 10:01:41', 'Get 14% OFF with St. Valentine''s special offer', 'Valentine''s Day is quickly approaching and we are glad to offer special discount for all our beloved customers. It''s a great chance to get any our extensions or template with 14% discount.  Our Valentine''s offer ends on February 15 so don''t miss your chance to improve your store!', 'http://bit.ly/Y6AhmA', 0, 0),
(154, 4, '2013-02-25 01:20:54', 'Meet Argento - Most powerful Magento responsive theme ', 'Argento is more than just another template created for Magento. It was created right from the ground based on the best ecommerce stores practices and according to Magento developers guidelines. Powered with more than 15 popular Magento extensions and based on HTML5 and CSS3 it will bring your store to absolutely new level. Argento was optimized both for speed and SEO, tested in popular browsers and different mobile devices in order to increase conversion and improve shopping experience.', 'http://bit.ly/XVMvNk', 0, 0),
(155, 4, '2013-03-01 08:57:38', 'Improve your store support process with Helpmate 1.4', 'Finished:\n-  Separate quick answer element was added\n-  Pagination toolbar added for frontend users ticket interface\n-  Admin users can now use hidden departments in order to escalate issues to this department\n-  Helpdesk priority page design improved\n-  Grid interfaces added for related products articles interface at products admin interface\n-  FAQ drop-down can be used now to insert either link or complete KB article \n-  Related articles block on product page moved to content area\n-  Improved html template structure for compatibility with custom design\n\nFixes\n- Editor freeze after using quick answer\n- HTML tags were used when posting KB articles as quick answer form\n- Localisation improved', 'http://bit.ly/YEbEw0', 0, 0),
(156, 4, '2013-03-06 10:13:31', 'Easy Colors Swatches 1.3 with new great features is now available  ', 'Features:\n\n-  separate admin interface\n-  show selected image in cart block for configurable products\n-  allow to create swatches without assigned images\n-  improved javascript code\n', 'http://bit.ly/YcSj5l', 0, 0),
(157, 4, '2013-03-14 07:29:25', 'Improve your store conversion rate with Fire Checkout 2.4', 'Fire Checkout 2.4.0 is now available with next new features:\n\n- Css and templates moved to base folder in order to provide compatibility with non-default based themes\n- Css improvements. Form fields are now have fluid styles, to match various theme width\n- Customer comments moved to separate database field\n- Added ability to edit customer comment, delivery date and additional fields from backend interface\n- Improved configuration section for form fields sort order. Drag''n''drop is now supported\n- Optional Usps address verification added. Only United States addresses will be verified if enabled\n- Improved edit address links at the address review section \n- Integration with Storepickup module updated\n- AheadWorks Point extensionintegration added\n- Added support of SagePay saved tokens feature\n- Paymill integration added\n- Generel code cleanup\n- Syntax errors removed', 'http://bit.ly/WfgLrb', 0, 0),
(158, 4, '2013-03-25 08:13:00', 'Reward your customers for sharing news about your store with Social Suite 1.3 ', 'Social Suite 1.3  is now available with next new features:\n\n- Reward your customers for sharing news about your store\n- Asynchronous javascript load for social buttons for better page performance\n- Facebook login and google login feature updated for better user experience\n', ' http://bit.ly/YauZK9', 0, 0),
(159, 4, '2013-03-29 06:34:11', 'Save 20% on all themes and extensions with our Easter sale!', 'Save 20% on all themes and extensions with our Easter sale!', 'http://bit.ly/172I9fh', 0, 0),
(160, 4, '2013-04-02 08:38:44', 'Get Mobile star template with improved Retina screen support', 'Get Mobile star template with improved Retina screen support', 'http://bit.ly/XGcgqk', 0, 0),
(161, 4, '2013-04-08 08:26:03', 'Improve your layered navigation with Ajax Layered Navigation 1.2.2 ', 'Improve your layered navigation with Ajax Layered Navigation 1.2.2 ', 'http://bit.ly/Zd5gxb', 0, 0),
(162, 4, '2013-04-11 08:57:51', 'Attract your customers attention with Prolabels 1.2.2', '', 'http://bit.ly/12MmKaK', 0, 0),
(163, 4, '2013-04-17 03:10:46', 'Fire Checkout 2.4.1 is now available ', 'Fire Checkout 2.4.0 is now available with next new features:\n\n- MageWorx Customercredit integration\n- Css improvements for mobile and tablet devices\n- First available shipping will not selected if default one is not found\n- Fixed shipping price, when weight vs destination is used. Matrix rate compatibility added.\n- Kiala LocateAndSelect integration added\n- BillPay compatibility\n- Comptibility with Magento per-country postcode and region configuration added', 'http://bit.ly/YTOUyh', 0, 0),
(164, 4, '2013-04-23 08:21:53', 'Manage your store banners with Easy Banners 1.3.0 ', 'Easy Banners 1.3.0  is now available with next new features:\n\n- Ability to set image size added\n- Optional retina support added\n- Ability to use banner url for html mode added. Use the {{tm_banner_url}} variable in banner content.\n- Backend banner management interface improvements\n- Image dimensions added to html markup, when resizer is used\n', 'http://bit.ly/15EcDW5', 0, 0),
(165, 4, '2013-04-24 07:41:53', 'Argento responsive theme 1.1.2 is now available', ' Argento update\n\n*    Html markup and css improvements. YSlow - 86 PageSpeed - 93\n*    Review url fixed on product page\n*    Lightboxpro config options updated to look good on mobile screens\n*    Related products styles and image size improvements for small screen devices\n*    All small images styles improved for mobile devices\n*    Improved form styles\n*    Fixed product listing on advanced search results\n*    Facebook Like Button added\n*    Scroll to top button added\n\nSoldtogether updated\n\n*    Table prefix added to query\n*    Amazon styled template will show only simple products\n*    Fixed price calculation for bundle, configurable and grouped products when using amazon template\n*    Colection queries improvements\n\nEasyslide updated\n\n*    jQuery will not be added if nivo slider is not used\n*    Default slider options added when creating new slider\n*    Enabled option removed. Please use status option for each slider instance.\n*    Load jQuery option now affects on adding jQuery library only: nivo javascript will be added if nivo slider is used.\n\nEasycatalogimg updated\n\n*    Optional retina support added\n*    Image dimensions added to html markup\n\nEasybanner updated\n\n*    Ability to set image size added\n*    Optional retina support added\n*    Ability to use banner url for html mode added. Use the {{tm_banner_url}} variable in banner content.\n*    Backend banner management interface improvements\n*    Image dimensions added to html markup, when resizer is used\n', 'http://bit.ly/XWJ7pO', 0, 0),
(166, 4, '2013-04-27 21:48:07', 'Improve your newsletter marketing  performance with Newsletter Booster', '', 'http://bit.ly/ZLmOpn', 0, 0),
(167, 4, '2013-05-10 08:06:19', 'Improve your conversion rate with Fire Checkout 2.4.2', 'Fire Checkout 2.4.2 is now available with next new features:\n\n- Enterprise version compatibility update\n- New registration mode: Guest checkout is allowed and registration checkbox is checked by default\n- Ability to set the default checkbox state for shipping address and newsletter subscription\n- Configuration options grouped into smaller parts', 'http://bit.ly/Yz1eT6', 0, 0),
(168, 4, '2013-05-14 03:07:57', 'Ajax search security update 1.3.1', '- Security update. There was no security threat but bug can be considered as potential threat. ', 'http://bit.ly/19mHSSF', 0, 0),
(169, 4, '2013-05-20 06:58:09', 'Argento 1.2 with new Pure design is now available', 'Argento update:\n\n*    New Pure theme added\n*    Css styles optimization\n*    Css styles improvements for small tablet devices\n*    Removed php warnings during Argento installation\n*    Fixed upsell products decoration with first/last classes\n*    AjaxSearch updated - Security bugfix\n*    Easyslide updated - Nivo slider updated\n*    Askit updated - Grammar errors fixed\n*    Easybanner updated - Title field should not be required, when using html mode\n*    Facebook Like Button updated - Fixed access to facebook like button config section when internet connection is not available\n*    Highlight updated - Added translation of the highlight page title\n*    Soldtogether updated - Fixed bug, when no product is available, but soldtogether block is called', 'http://bit.ly/114IWeX', 0, 0),
(170, 4, '2013-05-28 06:43:12', 'Improve your shopping experience with Quick Shopping 1.2.0', 'Quick Shopping 1.2.0  is now available with next new features:\n\n- Templates and skin resources moved to base folder\n- Better compatibility with third-party themes\n- Highlight page support added\n- Updated styles for window and button\n- Layout xml optimization\n- Better javascript handling of response text\n- Amlanding integration added\n- QuickView button will be hidden if no css and js are loaded.', 'http://bit.ly/10Eoz3x', 0, 0),
(171, 4, '2013-06-04 07:42:38', 'Fire Checkout 2.4.3 is now available ', 'Fire Checkout 2.4.3 is now available with next new features:\n\n- Check for minimum amount when removing item from cart fixed.\n- No more unnecessary captcha refreshes, when updating page content.\n- Fixed optional and hidden region field for Magento 1.6.2 and earlier\n- Fixed hidden postcode field\n- Fixed bug when Mage_Persitent was disabled with etc/modules file\n- Improved compatibility with third-party themes, that used height style for input fields\n- Added parsing of System is busy message from VIES validator\n- AheadWorks Newsletter module integration added\n- Integration with Irvine DeliveryDate and JapanPost added\n- Partial uSplitRates integration added. Still needs to edit app/code/local/TM/FireCheckout/Model/Quote/Address.php\n- Partial integration with Stripe payment methods added. Need to edit stripe/form/stripe.phtml', 'http://bit.ly/11itvv9', 0, 0),
(172, 4, '2013-06-19 08:08:43', 'Allow your customers to create user generated content with Askit 2.0 ', 'Askit 2.0  is now available with next new features:\n\n Features\n- Allow to place discussion block on cms and categories pages\n- Added page with all products discussion at your store\n- Added products question search on all products page\n- Widget for recent discussion was added\n- Added folded or unfolded default states for products discussion\n\nFixes\n- Added notifications for additional responses by other visitors.\n', 'http://bit.ly/11ZuXG2', 0, 0),
(173, 4, '2013-07-02 07:40:16', 'Improve your store navigation with Layered Navigation 2.0', 'Layered Navigation 2.0 is now available with next new features:\n\n- SEO links for layered navigation\n- Optional non-follow element\n- Performance update - works 80% faster!\n- Optionally show search form if there is larger then x number of attributes\n- New layered navigation styles added', 'http://bit.ly/17R8pfW', 0, 0),
(174, 4, '2013-07-04 07:59:59', 'Save 20% on all themes and extensions with our Independence day sale! ', 'Save 20% on all themes and extensions with our Independence day sale! ', 'http://bit.ly/13v8dAa', 0, 0),
(175, 4, '2013-07-08 05:34:18', 'Increase your store sales with Firecheckout 2.4.4', 'Fire Checkout 2.4.3 is now available with next new features:\n\n- One firecheckout version for Magento 1.4.2.0-1.7.0.2\n- Irvine shipping methods integration added\n- Undefined warning removed, when using one line for address field\n- Compatibility with third party themes, that using border-box style for all elements\n- Customer credit integration fixed\n- Billsafe Integration\n- Euvat extension compatibility added\n- Ability to reload order totals on taxvat change added\n- Fixed displaying of Email already in use window\n- Password will not be copied to OrderReview section\n- Fixed ugiftcert warning when applying coupon code\n- Checkoutfields will not redefine pdf print models, to prevent conflicts with \n other pdf modules. To enable checkoutfields printing, follow instructions from \n checkoutfields configuration options', 'http://bit.ly/1d9NOAC', 0, 0),
(176, 4, '2013-07-11 08:24:26', 'Increase your store speed up to 400% with Page Cache extension!', '', 'http://bit.ly/12tDWM3', 0, 0),
(177, 4, '2013-08-05 09:54:01', 'Improve your products page design with Easy Tabs 2.0', 'Easy Tabs  2.0 is now available with next new features:\n\n- New backend interface with separate page\n- Skins and templates moved to base folder\n- Unlimited number of tabs\n- Responsive styles added', 'http://bit.ly/16uYnOn', 0, 0),
(178, 4, '2013-08-08 06:25:38', 'Magento Page Cache 1.0.2 is now available', 'Magento Page  Cache 1.0.2 is now available with next new features:\n\n- Session params added to cache key at required pages (listing mode, limit etc)\n- Added support of dynamic blocks in custom_layout_update xml directive\n- Fixed cache cleaning when mass delete is used\n- Added support for cache auto refresh for Quickshopping module\n\n', 'http://bit.ly/13IPu3j', 0, 0),
(179, 4, '2013-08-14 08:48:05', 'Argento 1.3 is now available with backend CSS configuration ', 'Argento update:\n\nArgento update\n*    Fixed displaying of decimal quantities in header cart\n*    Removed overriding of customer.xml layout\n*    Css styles was refactored. Duplicate code removed.\n*    Automatic inclusion of custom.css file from active theme skin folder\n\nBackend configuration for theme styles added\n*    Background\n*    Top navigation\n*    Buttons (ArgentoPure only)\n*    Tabs\n*    Fonts\n*    Additional custom css\n*    Ability to add additional head links (Google fonts for example)\n\nEasytabs\n*    Easy tabs 2.0 integrated\n\nAjaxSearch\n*    Fixed search form submit by clicking the search button\n\nSuggestPage\n*    ajaxpro compatibility fixed\n\nAjaxPro\n*    Fixed wishlist link for secure pages\n\nHighlight\n*    Currency code added to cache key\n*    Fixed building of product url, when category path in product url is disabled from backend\n*    Fixed filtering of the one day only available products\n\nSoldTogether\n*    Fixed filtering of products on suggestpage\n*    Fixed price formatting for amazon style template\n\nCore\n*    Notifier filter by news channel added\n*    Magento 1.4 compatibility added', 'http://bit.ly/16brXYz', 0, 0),
(180, 4, '2013-08-19 06:51:11', 'Newsletter Booster 1.2.0 with advanced newsletter features is now available', 'Newsletter Booster 1.2.0 is now available with next new features:\n\n- Campaigns can be set to be visible on front end so customers can subscribe to one that they are interested at\n- Subscribers can now un-subscribe and subscribe from separate segments\n- Separate newsletter tab is added to customer''s My account page\n- Send to multiply segments option was added in admin interface\n- Guest subscribe and queue\n- Support for anonymous email gateways\n- utm_content content support \n', 'http://bit.ly/19tgPay', 0, 0),
(181, 4, '2013-08-27 06:16:21', 'Improve your Magento store admin security with Improved admin security 2.0 extension ', ' Improved admin security 2.0 extension   is now available with next new features:\n\n- Admin actions logs added\n- Advanced control over admin user ip address used added\n- Admin login actions log added\n', 'http://bit.ly/1djLRFY', 0, 0),
(182, 4, '2013-09-02 08:21:50', 'Increase your revenue with Firecheckout 2.4.5 ', 'Fire Checkout 2.4.5 is now available with next new features:\n\n- Added support for quantity increments when using +/- buttons in shopping cart\n- AddressFields status save: Warning message removed in Magento 1.5.0.1 and earlier.\n- Validate form method created to allow to validate firecheckout form from any script\n- Success page url changed to checkout/onepage/success to provide compatibility with third party tracking extensions\n- Fixed saving guest email and phone to quote on address refresh\n- Fixed saving of last selected address for registered users\n- Fixed sending order confirmation emails for magento 1.4.2\n- Fixed updating OrderReview section in IE10\n- Fixed click on single available payment method\n- Fixed error in billing form, when Mage_Newsletter module is disabled.\n- Imporved check for Mage_Capcha module. Added check for etc/modules status.\n- Added synchronization of klarna invoice form with address form\n- Infostrates TNT shipping method support added (need to edit tnt.js to add event firing, when ajax request is completed)\n- TigPostcode extension templates updated to the latest version\n- Givechange module integration\n- Klarna part integration added\n- Partial Amasty coupons integration. Still needs to edit Amasty_Coupons_Block to change template.\n- Partial webtext giftcard integration. Still need to edit giftcard.xml and CartController.php', 'http://bit.ly/1fus5EF', 0, 0),
(183, 4, '2013-09-06 08:19:20', 'Magento Easy Lightbox extension 3.0 is now available', '', 'http://bit.ly/17dnWDp', 0, 0),
(184, 4, '2013-09-10 06:15:35', 'Argento 1.3.1 is available. Now compatible with Magento Enterprise edition!', 'Argento update\n*    Magento Enterprise Edition compatibility\n*    Sweet tooth reward integrated into shopping cart template\n*    Main product image size increased to 370px\n*    Subtotal added to cart popup for Argento theme\n*    Fixed output of tags and other inline links, when html minifier extension is used\n*    Added additional theme fallback rules to simplify enterprise version compatibility\n*    Fixed broken print invoice page\n*    Fixed double call for EasyTabs block\n\nAjaxSearch updated\n*    Fixed filling the dummy search text after double click on input field\n*    Fixed sorting of categories in category combobox\n*    Fixed category search results\n*    Fixed automatic applying filter by category on search results page\n*    Layout and templates moved to base/default/tm folder\n\nEasyTabs updated\n*    Added missing containers to tag and review blocks\n*    Layout and templates moved to base/default/tm folder\n\nTM_Core updated\n*    Fixed error when AdminNotification module is disabled\n\nSoldtogether\n*    Updated to the newest version\n*    Fixed updating of the main product price, when soldtogether products are not found\n\nEasyCatalogImages\n*    Layout and templates moved to base/default/tm folder\n*    Fixed imagepath detection. Possible bug when media is used in domain name\n\nEasyBanner\n*    Fixed imagepath detection. Possible bug when media is used in domain name\n*    Added check for banner availability in store, when inline banner call is used\n', 'http://bit.ly/1b0Y0is', 0, 0),
(185, 4, '2013-09-19 06:10:33', 'Magento Page Cache 1.0.3 is now available!', 'Magento Page  Cache 1.0.3 is now available with next new features:\n\n- Compilation mode compatibility added\n- Fixed developer and inline translate modes per IP address\n- Fixed output of dynamic blocks called with inline method from cms block or page\n- Cache autorefresh support added for: TM_Askit, AW_Productquestions\n', 'http://bit.ly/1aNvf6g', 0, 0),
(186, 4, '2013-09-26 08:04:04', 'Magento Quick Shopping 1.2.3 is now available', 'Magento Quick Shopping 1.2.3 is now available  with next new features:\n\n- Responsive styles added\n- Removed big gap between image and content for wide quickshopping popup\n- Added ability to display additional images gallery in quickshopping window\n- Configuration options regrouped\n- Translation optimizations\n- Code cleanup\n', 'http://bit.ly/1eJTFBR', 0, 0),
(187, 4, '2013-10-07 08:25:35', 'Fire Checkout 2.4.6 is now fully compatible with Magento 1.8', 'Fire Checkout 2.4.6 is now available with next new features:\n\n-  Magento 1.8 code sync\n-  Secure key added to firecheckout form\n-  Fixed gradient image for firecheckout form sections\n-  DeliveryDate feature: Period in days when delivery will be available, since first available day\n-  Update of IrvineSystems modules integration\n-  TNT Infostrates observer fixed for ajax reloaded shipping methods\n-  Improved check for modules enabled status.\n-  J2t Rewardpoints integration updated\n\n', 'http://goo.gl/Tlv5Qu', 0, 0),
(188, 4, '2013-10-15 09:16:04', 'Argento 1.3.2 is available. Now fully compatible with Magento CE 1.8', 'Argento updates:\n\n*   Magento 1.8 compatibility\n*   Fixed custom.css url on secure pages\n*   custom.css is now included after theme.css\n*   AjaxPro popup styles improved\n*   Cookie restriction message made responsive\n*   Css fixes\n*   QuickShopping is now supported. No need to edit listing template.\n*   Various small fixes to all modules. More than 70 commits was done.\n', 'http://goo.gl/2PPWxD', 0, 0),
(189, 4, '2013-10-28 05:29:51', 'Make your store faster with Magento Page Cache 1.1 ', 'Magento Page  Cache 1.1.0 is now available with next new features:\n\n- Added per-page lifetime configuration\n- Added support for SmartSuggest blocks\n\n', 'http://goo.gl/unQtt5', 0, 0),
(190, 4, '2013-11-04 08:26:32', 'All our Magento themes and extensions are now fully compatible with Magento CE 1.8', 'We are glad to inform that all our templates were recently updated to Magento CE 1.8. Request your update at http://bit.ly/q51qxj ', 'http://goo.gl/w6tyCx', 0, 0),
(191, 4, '2013-11-07 09:14:03', 'Improve your checkout and order success page with Fire Checkout 2.5', '  Fire Checkout 2.5.0 is now available with next new features:\n\n-   Ability to add additional content on firecheckout page added\n-   Success page module added to firecheckout, that allows to customize order success page\n-    Fixed delivery date visibility in backend, when editing the order\n-    Resources moved to tm subfolder\n-    Netresearch_Billsafe module integration updated\n-    Improved AW_Rewards compatibility\n-    Removed warning about not existing Netresearch_Billsafe class\n-    Firecheckout_Adminhtml_Model moved to standard model folder\n-    firecheckout/review.phtml rewrite removed from checkoutfields module\n-    Dynamic layout loading added, that helps to provide out of the box integration with following modules:\n    AW_Newsletter, Billpay, Bysoft_Relaypoint, CraftyClicks, Ebizmarts_SagePaySuite, Enterprise_Enterprise, GCMC_GiveChange, Geissweb_Euvatgrouper, IntellectLabs_Stripe, IrvineSystems_Deliverydate, IrvineSystems_JapanPost, IrvineSystems_Sagawa, IrvineSystems_Seino, IrvineSystems_Yamato, Kiala_LocateAndSelect, Klarna_KlarnaPaymentModule ,Mage_Captcha, Magestore_Storepickup, MageWorx_MultiFees, Netresearch_OPS, Payone_Core, Phoenix_Ipayment, Rewardpoints // J2t Rewardpoints, Symmetrics_Buyerprotect, TIG_Postcode, Webtex_Gitcards\n    Unfortunately some of the modules still needs to be edited. But FireCheckout sources is ready to use without any modifications.-', 'http://goo.gl/RN9aoY', 0, 0),
(192, 4, '2013-11-19 12:38:25', 'Attract your customers attention with custom products blocks and Products Highlight 2.4', 'Products Highlight 2.4 is now available with next new features:\n\n-   Added reset of std list styles to properly display highlight block on cms pages\n-   Templates and skin moved to base folder\n-   Fixed filtering of the one day only available products\n-   Fixed building of product url, when category path in product url is disabled from backend\n-   Added currency code to cacheKey', 'http://goo.gl/8MVkyR', 0, 0),
(193, 4, '2013-11-26 10:24:00', 'Fire Checkout 2.5.1 is now available', 'Fire Checkout 2.5.1 is now available with next new features:\n\n- J2t Rewardpoints integration updated\n- Added additional reset styles and clears\n- Fixed output of the delivery date for different timezones\n- Updated template paths to include tm prefix\n- Fixed order submit button for virtual products\n- Fixed saving of the entered taxvat number on page reload\n- Checkoutsuccess page is now compatible with thrd-party order total modules\n- AW_Points integrated into checkoutsuccess page', 'http://goo.gl/pphCjN', 0, 0),
(194, 4, '2013-12-13 08:29:25', 'Make your shopping as fast as lighting with Ajax Pro 3.0', 'Ajax Pro 3.0 is now available with next new features:\n\n- Improved ajax update algorithm \n- Allows to show shopping cart, coupon code block and related products block in ajax cart window\n- Configurable list of blocks for ajax refresh for each action\n- Improved ajax progress window\n- Improved usability for add to cart and add to compare ajax action\n- Improved modal window script\n', 'http://goo.gl/0ces1y', 0, 0),
(195, 4, '2013-12-16 08:20:50', 'Create attractive landing pages and improve store navigation with Magento Brands and Attributes pages extension!', '', 'http://goo.gl/yp998j', 0, 0),
(196, 4, '2013-12-20 08:32:25', 'Improve traffic from search engines to your Magento store with Google Rich snippets 1.3.0', ' Rich snippets 1.3.0 is now available with next new features:\n\n-  Added Google+ Author feature support\n-  Added Breadcrumbs feature support\n-  Resources moved to base folder\n', 'http://goo.gl/PY54Zf', 0, 0),
(197, 4, '2013-12-24 07:04:53', 'Celebrate Christmas and save 20% on all themes and extensions with coupon code XMAS2013', 'We are glad to tell that our Christmas special offer starts today and it''s a great chance to get any our Magento extensions or template with 20% discount (). Our special offer ends on January 01 2014 so don''t miss your chance to improve your store!', 'http://goo.gl/368va0', 0, 0),
(198, 4, '2014-01-02 08:06:56', 'Improve your layered navigation with Ajax Layered Navigation 2.2', 'Ajax Layered Navigation 2.2 is now available with next new features:\n\n-    Improved slider javascript\n-    Now supports multiple sliders on same layered navigation block\n-    Added support for advanced layered navigation page\n-    Improved overall performance\n-    Attributes sort order fixed\n-    Fixed support of third level of seo url', 'http://goo.gl/qvWFBp', 0, 0),
(199, 4, '2014-01-08 02:44:42', 'Argento 1.4.0 with great Brands pages extension is now available. Now fully compatible with Magento CE 1.8.1! ', 'Argento updates:\n\n*   Magento 1.8.1 compatibility\n*    Attributepages and brands extension added\n*    Mobile navigation with backend configuration added\n*    Product page markup improved for mobile devices\n*    Css styles for small screen devices improved\n*    Contact form improvements: added tel and email types\n*    QuickShopping support added to pure theme product listing\n*    Fixed page zoom for touch devices, when focusing input elements\n*    Bugfix: TabBuilder: Cannot call method ''addClassName'' of undefined\n*    Fixed positioning of grouped item availability status\n*    Bundle for 1702 and older magento versions fixed\n*    Missing translations added\n*    Suggestpage integrated into ajaxpro popup window\n*    Soldtogether random collection is enabled for initial installation now\n*    AjaxPro\n*        Completely rewritten layout and blocks generating logic\n*        Configurable popup added\n*        Responsive styles added\n*        Various css and js fixes\n*        Improved css styles for all popups\n*        Improved overlay and spinner positioning\n*        Fixed ajax product listing on layered categories\n*        Overlay fade effect fixed\n*        Popup autohide functionality improved\n*        Fixed moving product to wishlist from shopping cart page\n*    Askit\n*    Attribute and Brands pages NavigationPro Integration\n*        Module is added to Argento\n*    EasyCatalogImg NavigationPro Integration\n*        Better integration with NavigationPro\n*        Added ability to select root category and filter categories to show/hide per widget.\n*    Easyslide\n*        Bugfix: https image url support added\n*    EasyTabs\n*        Added ability to get direct link to any tab\n*    LightboxPro\n*    NavigationPro\n*        Added mobile menu support\n*    RichSnippets\n*        Breadcrumbs support added\n*        Author support added\n', 'http://goo.gl/rIkhtH', 0, 0),
(200, 4, '2014-01-13 09:12:24', 'Fire Checkout 2.5.2 is now available', 'Fire Checkout 2.5.2 is now available with next new features:\n\n-   MageWorx_CustomerCredit integration updated\n-   AW_Advancednewsletter module integration added\n-   Taxvat validator now can receive number with coutry code\n-   Static block moved outside of ajax reloading review table block\n-   Rewardpoints reload added, when changing cart items\n-   Magento 1.8.1 compatibility. Wee tax calculation template ported from 1.8.1', 'http://goo.gl/S7WsMA', 0, 0),
(201, 4, '2014-01-17 04:58:04', 'Ajax Pro 3.1 is now available', 'Ajax Pro 3.1 is now available with next new features:\n\n- Added ability to integrate third-party module into ajaxpro popup\n- Improved css styles for all popups\n- Responsive styles added\n- Improved overlay and spinner positioning\n- Fixed ajax product listing on layered categories\n- Overlay fade effect fixed\n- Popup autohide functionality improved\n- Fixed moving product to wishlist from shopping cart page', 'http://goo.gl/Bjj1ha', 0, 0),
(202, 4, '2014-01-20 10:20:09', 'Magento Absolute and Classic themes are now fully compatible with Magento CE 1.8.1', '', 'http://goo.gl/Vx1MXY', 0, 0),
(203, 4, '2014-01-27 09:53:55', 'Meet new Magento templates prices from Templates Master!', '', 'http://goo.gl/E73JG9', 0, 0),
(204, 4, '2014-02-03 08:41:32', 'Improve your social media presence with Social Suite 1.4.0', 'Social Suite 1.4.0 is now available with next new features:\n\n- Optimized module configuration\n- Fixed aligment of social buttons\n- Secure head url fixed\n- Redesigned social discount modal window\n- Added responsive support for social discount modal window\n- Moved layout, template, css, js files to base/tm folder', 'http://goo.gl/vTdUwR', 0, 0),
(205, 4, '2014-02-10 08:04:10', 'Fire Checkout 2.5.3 is now available', 'Fire Checkout 2.5.3 is now available with next new features:\n\n-   SmartPost integration added\n-    Fixed applying of the payment method, when price filter for methods is used\n-    Backgrounds merged into single sprite image\n-    Removed popup window sprite image. Css3 is used instead.\n-    Overlay removed. Compatibility with address by postcode detection\n-    Klarna payment method integration update\n-    J2t Rewardpoints integration update\n-    SagePaySuite integration fix\n-    Additional css reset styles\n-    Module sort order updated\n-    Added error message about missing USPS user_id\n-    Address verification links replaced with buttons\n-    Additional checkmoney styles added to fix some themes', 'http://goo.gl/fXiMNb', 0, 0),
(206, 4, '2014-02-17 08:58:31', 'Improve your store navigation with Easy Catalog Images 2.3', 'Easy Catalog Images 2.3 is now available with next new features:\n\n-  Ability to hide block, when filter or pagination is applied.\n-  Ability to show widget on category pages, when category config is disabled.\n-  Widget: Ability to set Root Category to load\n-  Widget: Ability to show and hide specific categories\n-  NavigationPro integration styles added\n-  NavigationPro integration guide\n-  Automated thumbnail assignment added. Script can fill category thumbnails with image of first product of corresponding category. If category has attached thumbnail already, it will be skipped.         Only direct category children are processed. If category has no direct child products, thumbnail will not be assigned\n-  Css refactoring. Responsive styles added\n-  Added note about supported columns count to the widget interface\n-  Module sort order updated', 'http://goo.gl/feTo0q', 0, 0),
(207, 4, '2014-02-26 08:14:00', 'Magento Attributes and Brands pages extension 1.0.1 is now available', 'Magento Attributes and Brands pages extension 1.0.1 is now available with next new features:\n\n-   Improved NavigationPro integration styles\n-   Added support for category layer filter\n-   Added validation of width and height parameters\n-   Backend menu title renamed to Manage Options\n-   Products-grid class removed to prevent issues with third party themes\n-   std styles reset added', 'http://goo.gl/gB3E1O', 0, 0),
(208, 4, '2014-03-03 09:34:53', 'Improve your Magento store speed with Page Cache 1.1.2', 'Magento Page Cache extension 1.1.2 is now available with next new features:\n\n-   Fixed working in cookie restriction mode\n-   Added compatibility with some ajax extensions. isAjax flag added to cache key.\n-   Module sort order updated', 'http://goo.gl/bjDTBu', 0, 0),
(209, 4, '2014-03-07 06:35:40', 'Easy Slider 2.2 is now available !', 'Magento Easy Slider  extension 1.2.0 is now available with next new features:\n\n-  Slider description now can render magento variables, widgets, etc.\n-  Backend menu moved to Templates-Master submenu.\n-  Backend url is now using the admin prefix\n-  Templates and resources moved to base folder\n-  Glider object renamed to Easyslider', 'http://goo.gl/LcPL7J', 0, 0),
(210, 4, '2014-03-11 08:45:02', 'Sold Together 1.3.3 is now available!', 'Magento Sold Together 1.3.3 is now available with next new features:\n\n-   Resource files moved to base/tm folder\n-   Javascripts moved to separate file\n-   Add to cart checkboxes restyled\n-   Integration with AjaxPro popup message added\n-   Added missing translations\n-   SuggestPage updated to the newest version.', 'http://goo.gl/O9DMUC', 0, 0),
(211, 4, '2014-03-18 09:04:40', 'Smart Suggest 1.3.1 is now available!', '', 'http://goo.gl/k4FN6u', 0, 0),
(212, 4, '2014-03-21 07:42:34', 'Sold Together 1.3.5 is now available!', 'Magento Sold Together 1.3.5 is now available with next new features:\n\n-    Added price with/without tax support in amazon style list\n-    Fixed total recalculations, when discount is available\n-    Fixed price parsing for specific locales\n-    Filter/Sorting by weight fixed in backend\n-    Module sort order updated\n\n', 'http://goo.gl/mAfG1r', 0, 0),
(213, 4, '2014-03-27 09:03:07', 'Ajax Search 1.4 is now available', 'Ajax Search 1.4 is now available with next new features:\n\n-   Unicode support was updated\n-   Added ability to hide categories in combobox\n-   Config was refactored\n-   Translations updated\n-   Small styles improvements\n-   Fixed bug when & is not rendered as &amp;\n\n\n', 'http://goo.gl/1VFTbM', 0, 0),
(214, 4, '2014-03-31 05:44:21', 'Fire Checkout 2.5.4 is now available', 'Fire Checkout 2.5.4 is now available with next new features:\n\n- Backend delivery date output for Magento 1.5 fix\n- Added renderer for downloadable item in cart\n- Removed alert about existing customer when updating billing address\n- Additional link styles added for email exists window\n- Radweb_Stripe integration added\n- Customweb_PayUnity integration added\n- Braintree integration updated\n- SmartPost integration updated\n- Aitoc_Aitgiftwrap integration added\n- PostcodeNl_Api compatibility added\n- Magestore_Storepickup integration', 'http://goo.gl/q1sRRW', 0, 0),
(215, 4, '2014-04-04 06:48:05', 'Products Highlight 2.4.1 is now available', 'Highlight 2.4.1is now available with next new features:\n\n- Added form_key and uenc support with cache enabled\n- Missing variables added to abstract class\n- Added translation to page title of highlight page\n- Bestsellers and popular collection query made compatible with getAllIds query\n- Added missing message block to the highlight page\n- Magento EE fix added\n- Added missing messages block on highlight pages', 'http://goo.gl/euj83t', 0, 0),
(216, 4, '2014-04-14 07:08:26', 'Improve your store navigation with Attributes and Brands pages extension 1.1.0 ', 'Magento Page Cache extension 1.1.2 is now available with next new features:\n\n-  Improved router logic for multistore setup and disabled pages\n-  Fixed blocks logic to remove page duplicates in multistore mode\n-  Group by first letter made case insensitive\n-  Magento EE layered filters compatibility\n-  Fixed layered filter by category with attribute\n-  Fixed reset layered filter by category\n-  Fixed ACL rule paths\n-  Fixed page routing, when single/doublequote is used in url', 'http://goo.gl/1CBbmn', 0, 0),
(217, 4, '2014-04-17 06:13:50', 'Celebrate Easter and get 20% discount on all our products (coupon code EASTER14) ', '', 'http://goo.gl/RhDM3F', 0, 0),
(218, 4, '2014-04-21 23:37:56', 'Argento 1.5.0 with new Mall design is now available', '', 'http://goo.gl/YxlUrp', 0, 0),
(219, 4, '2014-04-28 01:31:00', 'Make your store faster with Magento Page Cache 1.1.3', 'Magento Page Cache extension 1.1.2 is now available with next new features:\n\n-   Better compatibility with third-party themes and custom block rendering.', 'http://goo.gl/isS75Y', 0, 0),
(220, 4, '2014-05-05 08:20:49', 'Quick Shopping 1.2.7 is now available', 'Quick Shopping 1.2.7 is now available with next new features:\n\n-   Fixed possible non-seo links in search results or root categories\n-   Added compatibility with Magento use_category_url option\n-   Quickshopping window made hidden after AjaxPro call\n-   Next and prev links on attributepages are now supported\n-   Additional css reset added', 'http://goo.gl/5UNNeA', 0, 0),
(221, 4, '2014-05-07 06:28:59', 'Attributes and Brands pages extension 1.2.0 is now available', 'Attributes and Brands pages extension 1.2.0 is now available with next new features:\n\n-   Added ability to show option information on product page\n-   Improved parent page detection for options block\n-   Default product list block is now used for attribute page\n-   Image resize helper improvements', 'http://goo.gl/oeyOvc', 0, 0),
(222, 4, '2014-05-12 03:44:22', 'Increase your store sales with Firecheckout 2.5.5', 'Fire Checkout 2.5.4 is now available with next new features:\n\n-   Removed ability to buy downloadable product without registration\n-    Fixed applying address for customer with default addresses\n-    Fixed missing checkout button when onepage checkout is disabled\n-    Removed shipping form synchronization with billing form\n-    Added address form reset when new address is selected\n\nThird-party modules integrations\n\n-    Bpost_ShippingManager\n-    Tig_MyParcel\n-    Amasty_Deliverydate\n-    Magebuzz_Rewardpoint\n-    SagePaySuite directpro integration unpdated\n-    Phoenix_Ipayment integration updated\n-    z-index for window and mask increased. Ultimo integration', 'http://goo.gl/AkQOCW', 0, 0),
(223, 4, '2014-05-15 02:20:52', 'Take full control over your store navigation with Navigation Pro 1.3.1', 'Navigation Pro 1.3.1 is now available with next new features:\n\n-     Fixed cache entity key detection on product page (Bug with invalid active menu on product page)\n-    Fixed css styles for mobile menu\n-    Added css reset of navpro inside std class\n-    Added form_key and uenc support when cache is enabled for child widgets\n-    Translations included to the frontend\n-    isSecure flag added to menu cache key\n-    Fixed dropdown content rendering for the category without children\n-    Module sort order updated\n-    Added ability to render mobile specific menu\n', 'http://goo.gl/kEvoIX', 0, 0),
(224, 4, '2014-05-19 09:58:52', 'Make shopping really fast with Ajax Pro 3.2', 'Ajax Pro 3.2 is now available with next new features:\n\n-    Ajax Layered Navigation integration was added\n-    Toolbar block was re-factored\n-    Fade effect removed because of bug with opacity in Firefox\n-    AjaxPro pop-up styles updated\n-    Added CAPTCHA support for the login block\n-    Cross domain support was added\n-    IE10 compatibility improved\n-    Multiply small bugs fixes and improvement', 'http://goo.gl/UT0Q6s', 0, 0),
(225, 4, '2014-05-22 05:52:00', 'Make your site mobile friendly with Mobile Star Theme 1.3', 'Mobile Star Theme 1.3  is now available with next new features:\n\n-   PhotoSwipe image gallery added instead of scrollable images on product page. See the video about the gallery\n-   app/design/frontend/default/m001/template/checkout/multishipping/addresses.phtml updated according to Magento 1.9\n-   Easyslider and Highlight updated to latest versions', 'http://goo.gl/Xf5UKb', 0, 0),
(226, 4, '2014-05-26 07:04:52', 'Attract your customers attention with Prolabels 2.5.0', 'Prolabels 2.5.0  is now available with next new features:\n\n-   Add new label type - "content"\n-   Improved usability of labels on mobile devices\n-   Add new config options - Move labels to content wrapper on mobile devices\n-   Added tooltip option\n-   Added config options for tooltip ( Text and Background Colors )\n-   Added new predefined variables #attr:attribute_code#\n-   Added default value for round settings\n-   Fixed system labels predefined variables text\n-   Removed indexing for system labels', 'http://goo.gl/DsdtCS', 0, 0),
(227, 4, '2014-05-30 07:06:47', 'Argento 1.5.1 is now available!', '', 'http://goo.gl/rqZtQj', 0, 0),
(228, 4, '2014-06-01 23:48:18', 'Firecheckout 2.5.6 is now available', 'Fire Checkout 2.5.6 is now available with next new features:\n\n    Added housenumber script, that allows to replace the second address line with housenumber field.\n    Fixed AddressReview update when clicking the "Ship to the same address" checkbox\n    Fixed error in downloadable item renderer path\n    Added small css and js fixes for Magento 1.9 rwd theme\n    Greek taxvat code validation fix\n    Inchoo_SocialConnect integration added', 'http://goo.gl/WIVLwc', 0, 0),
(229, 4, '2014-06-09 09:53:59', 'Full Page Cache 1.1.4 is now available!', 'Full Page Cache 1.1.4 is now available with next new features:\n\n    Cache cleanup improvements. Frontend actions are now processed too. Corresponding cache entries are cleaned on the following actions:\n        Order place/cancel\n        Approved tag assignment\n        Approved review\n        Approved askit question or answer', 'http://goo.gl/wK8Bgc', 0, 0),
(230, 4, '2014-06-12 08:46:25', 'Easy Tabs 2.2.1 is now available ', 'Easy Tabs 2.2.1 is now available with next new features:\n\n    Click on review link now automatically activate and scrolls to review tab\n    RWD support added.\n    Unset option made visible for all tabs\n    Reccuring Info tab added to default setup.\n    Added new tab type (html content) to simplify adding of inline html blocks\n    Added Save and continue edit button\n    Unusable easytabs removed from widget list dropdown\n    Added public events to allow to run some javascript on tab activate/deactivate.\n    Code refactoring and formatting\n    Added support for customer added tabs without _tabbed suffix\n    Added check for empty content before output to prevent rendering empty tabs\n    Css completely rewritten for better styles\n    Accordion styles added for mobile devices\n    Module sort order updated', 'http://goo.gl/ce56ip', 0, 0),
(231, 4, '2014-06-23 06:13:36', 'Create successful ads using Easy Slider 2.2.2', 'Easy Slider 2.2.2 is now available with next new features:\n\n    - Five locales where added: es_ES, fr_FR, it_IT, nl_NL, pt_PT\n    - Added target option for each slide link: Same window, New window, Popup', 'http://goo.gl/RkS9TG', 0, 0),
(232, 4, '2014-07-01 23:50:22', 'Increase your store sales with Firecheckout 2.5.7', 'Fire Checkout 2.5.7 is now available with next new features:\n\n    Added ability to select vat field to validate (taxvat vs vat_id)\n    TemplateTag_Stripe compatibility added\n    Emja_Taxrelief support\n    Webshopapps_Wsafreightcommon support\n    Emjainteractive_ShippingOption support\n    Fixed integration with latest Paymill payment\n    Added ability to redirect to firecheckout page if firecheckout param is found in url', 'http://goo.gl/BQhH5Z', 0, 0),
(233, 4, '2014-07-08 03:58:55', 'Great new pop-up welcome banners and much more with Easy banners 1.4.1', 'Easy banners 1.4.1 is now available with next new features:\n\n    Lightbox banners added\n    Awesomebar banners added\n    New filters: Display count per customer, Inactivity time, Activity time, Browsing time, Page scroll offset\n    Resources moved to base theme\n    Added ability to set the class name for banner\n    Five locales where added\n    Module sort order updated\n\n    ', 'http://goo.gl/6uW0ky', 0, 0),
(234, 4, '2014-07-11 05:44:26', 'Easy Tabs 2.3.0 is now available  ', 'Easy Tabs 2.3.0 is now available with next new features:\n\n    Five locales where added\n    Dynamic tabs titles now include reviews, tags, questions count\n    Added ability to unset multiple blocks from single tab\n    Fixed first tab activating, when external links are available\n    Tab titles for tags and reviews made shorter\n    Fixed tabs with image content only or other tag only content\n\n   ', 'http://goo.gl/22oome ', 0, 0),
(235, 4, '2014-07-21 09:50:02', 'Improve your store speed with Magento CDN module 1.0', '', 'http://goo.gl/GC5rhx', 0, 0),
(236, 4, '2014-07-28 07:32:43', 'Argento 1.5.2 is now available', '', 'http://goo.gl/NQXiVj', 0, 0),
(237, 4, '2014-07-29 09:27:28', 'Easy Colors Swatches 2.0 with new great features is now available  ', 'Attribute Swatches - only product page\n\n    Added support for attribute swatches data\n    Changed base image from simple product ( attribute swatches type only - optional )\n    Added config option Product page base image width and height ( attribute swatches type only )\n    Added new config options - Product page base image path ( attribute swatches type only )\n    Added support for LightBoxPro image view module\n    Changed shopping cart image from simple product\n\n\nProduct Swatches\n\n    Added suppot for resize base image in catalog page\n    Added config option Catalog page grid mode base image width ( for grid mode image resize )\n    Added config option Catalog page list mode base image width ( for list mode image resize )\n    Added config option Event for activation catalog swatch item ( click or hover )\n    Fixed css style for image and text type swatches\n', 'http://goo.gl/032cj7', 0, 0);
INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(238, 4, '2014-08-06 09:51:11', 'Improve your customer service with new Helpmate 1.5.1', 'New features\n\n    TM Email sub module was divided and his functionality was extended. Transport email was added. Queue functionality was added.\n    Department statistics was added.\n    Now you can add custom ticket statuses.\n    Ticket number was shorted.\n    Recent tickets tab was added on admin dashboard.\n    Improved SEO of knowledge-base urls on frontend.\n    Customers tickets grid was added on admin customer interface.\n    Order tickets grid was added on admin order interface.\n    Now you can preview customer info in ticket in quick view window.\n    Support variables and widgets was added in ticket answers.\n    Archive email was added. All tickets notification will be sent to that email.\n    Magento api v2 support was added.\n    Files upload and download is now handled via separate controller.\n    Customers will get Captcha now in case of SPAM positive Akismet results.\n\nFixes & improvements\n\n    Localisation was improved.\n    Potential XSS bug was fixed.\n    Fixed meta titles for KB and tickets pages.\n    Knowledge-base js auto-complete class was renamed to prevent conflict with AjaxSearch.\n    Max_file_upload value is now checked during file upload.\n    SMTP Pro Email compatibility was added.\n    Image preview was added in tickets interface.\n    WYSIWYG editor url directives bug was fixed.\n    Department getOptionsArray bug was fixed.\n    and much more..', 'http://goo.gl/VzUnnV', 0, 0),
(239, 4, '2014-08-11 08:20:05', 'Make your store faster with Magento Page Cache extension 1.2.0', '', 'http://goo.gl/VYMWTw', 0, 0),
(240, 4, '2014-08-19 05:00:57', 'Our new free Magento Testimonials module is now available for download!', '', 'http://goo.gl/9u1yz7', 0, 0),
(241, 4, '2014-09-01 12:21:55', ' Ask It 2.1 is now available', '', 'http://goo.gl/FgBLxp', 0, 0),
(242, 4, '2014-09-08 02:42:18', 'Magento Attributes and Brands pages 1.2.1 is now available', '', 'http://goo.gl/X9OhE0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(3, 1, 2, 0, 'U', 1, 'ad');

-- --------------------------------------------------------

--
-- Table structure for table `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'ad', 'min', 'admin@admin.com', 'admin', '16caf2ae6b7b860270ce9b49ace76bb3:efn7YaMgI8hNiup1AC6x8wvAtNf27Ysq', '2014-09-01 09:35:23', '2014-09-08 23:51:33', '2014-09-13 03:17:48', 21, 0, 1, 'a:1:{s:11:"configState";a:28:{s:39:"ikantam_instagramconnect_module_options";s:1:"1";s:34:"ew_instagramconnect_module_options";s:1:"1";s:39:"droppin_instagramconnect_module_options";s:1:"1";s:22:"le_sociallogin_general";s:1:"1";s:23:"le_sociallogin_facebook";s:1:"1";s:21:"le_sociallogin_google";s:1:"0";s:22:"le_sociallogin_twitter";s:1:"0";s:23:"le_sociallogin_linkedin";s:1:"0";s:20:"le_sociallogin_yahoo";s:1:"0";s:12:"dev_restrict";s:1:"0";s:9:"dev_debug";s:1:"1";s:12:"dev_template";s:1:"1";s:20:"dev_translate_inline";s:1:"0";s:7:"dev_log";s:1:"1";s:6:"dev_js";s:1:"0";s:7:"dev_css";s:1:"0";s:20:"firecheckout_general";s:1:"1";s:31:"firecheckout_additional_content";s:1:"0";s:19:"firecheckout_geo_ip";s:1:"0";s:32:"firecheckout_address_form_status";s:1:"0";s:31:"firecheckout_address_form_order";s:1:"0";s:33:"firecheckout_address_verification";s:1:"0";s:24:"firecheckout_ajax_update";s:1:"0";s:23:"firecheckout_agreements";s:1:"0";s:19:"firecheckout_mobile";s:1:"0";s:19:"firecheckout_taxvat";s:1:"0";s:26:"firecheckout_delivery_date";s:1:"0";s:26:"firecheckout_shopping_cart";s:1:"0";}}', NULL, '2014-09-01 09:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `api2_acl_role`
--

INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2014-08-29 16:38:34', NULL, 'Guest'),
(2, '2014-08-29 16:38:34', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- Table structure for table `api_assert`
--

CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_role`
--

CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_rule`
--

CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api_session`
--

CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Table structure for table `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `belvg_facebook_customer`
--

CREATE TABLE IF NOT EXISTS `belvg_facebook_customer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  `website_id` smallint(5) unsigned NOT NULL,
  `fb_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  UNIQUE KEY `store_id` (`store_id`,`website_id`,`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE IF NOT EXISTS `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
(1, 1, 1, '111109.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '111109.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dumping data for table `cataloginventory_stock_status_idx`
--

INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '111110.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Catalog search result table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(2, 1, 1, 'new pro1|None|new pro1|new pro1|new pro1|4234|1');

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_SYNONYM_FOR` (`synonym_for`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search query table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2014-08-29 16:33:26', '2014-08-29 16:33:27', '1', 0, 0, 2),
(2, 3, 3, 1, '2014-08-29 16:33:30', '2014-08-29 16:33:30', '1/2', 1, 1, 1),
(3, 3, 3, 2, '2014-09-01 02:36:40', '2014-09-01 02:36:40', '1/2/3', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 59, 0, 3, NULL),
(2, 3, 60, 0, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `catalog_category_entity_decimal`
--

INSERT INTO `catalog_category_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 70, 0, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1),
(7, 3, 42, 0, 3, 1),
(8, 3, 67, 0, 3, 1),
(9, 3, 50, 0, 3, NULL),
(10, 3, 51, 0, 3, 0),
(11, 3, 68, 0, 3, 0),
(12, 3, 69, 0, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL),
(5, 3, 44, 0, 3, 'test'),
(6, 3, 47, 0, 3, 'test'),
(7, 3, 48, 0, 3, 'test'),
(8, 3, 62, 0, 3, NULL),
(9, 3, 65, 0, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category'),
(8, 3, 41, 0, 3, 'test'),
(9, 3, 43, 0, 3, 'test'),
(10, 3, 46, 0, 3, 'test'),
(11, 3, 49, 0, 3, 'PRODUCTS'),
(12, 3, 58, 0, 3, NULL),
(13, 3, 61, 0, 3, NULL),
(14, 3, 57, 1, 3, 'test.html'),
(15, 3, 57, 0, 3, 'test.html');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- Dumping data for table `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `thumbnail`, `url_key`, `url_path`) VALUES
(1, 0, '2014-08-29 16:33:26', '2014-08-29 16:33:27', '1', 0, 0, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, 'root-catalog', NULL),
(2, 1, '2014-08-29 16:33:30', '2014-08-29 16:33:30', '1/2', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, NULL, 'default-category', NULL),
(3, 2, '2014-09-01 02:36:40', '2014-09-01 02:36:40', '1/2/3', 1, 2, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 'test', 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, 'test', 'test', 'test', 'test', NULL, NULL, NULL, 'test', 'test.html');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 1, 20005, 0, 1, 4),
(3, 1, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(132, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', 'new pro1', 0, 0, '2014-09-01 02:37:56', '2014-09-01 02:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 93, 0, 1, NULL),
(2, 4, 94, 0, 1, NULL),
(3, 4, 77, 0, 1, NULL),
(4, 4, 78, 0, 1, NULL),
(5, 4, 104, 0, 1, NULL),
(6, 4, 105, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 80, 0, 1, '1.0000'),
(2, 4, 75, 0, 1, '4234.0000'),
(3, 4, 76, 0, 1, NULL),
(4, 4, 120, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_group_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CC12C83765B562314470A24F2BDD0F36` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 96, 0, 1, 1),
(2, 4, 102, 0, 1, 4),
(3, 4, 121, 0, 1, 0),
(4, 4, 100, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 72, 0, 1, 'new pro1'),
(2, 4, 73, 0, 1, 'new pro1'),
(3, 4, 83, 0, 1, NULL),
(4, 4, 106, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 71, 0, 1, 'new pro1'),
(2, 4, 97, 0, 1, 'new-pro1'),
(3, 4, 117, 0, 1, NULL),
(4, 4, 118, 0, 1, '2'),
(5, 4, 119, 0, 1, '4'),
(6, 4, 82, 0, 1, NULL),
(7, 4, 84, 0, 1, NULL),
(8, 4, 85, 0, 1, 'no_selection'),
(9, 4, 86, 0, 1, 'no_selection'),
(10, 4, 87, 0, 1, 'no_selection'),
(11, 4, 103, 0, 1, NULL),
(12, 4, 107, 0, 1, NULL),
(13, 4, 109, 0, 1, 'container1'),
(14, 4, 122, 0, 1, NULL),
(15, 4, 98, 1, 1, 'new-pro1.html'),
(16, 4, 98, 0, 1, 'new-pro1.html');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

--
-- Dumping data for table `catalog_product_flat_1`
--

INSERT INTO `catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `gift_message_available`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `msrp`, `msrp_display_actual_price_type`, `msrp_enabled`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(1, 4, 'simple', NULL, '2014-09-01 02:37:56', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'new pro1', NULL, NULL, '4234.0000', NULL, NULL, NULL, 0, NULL, 'new pro1', 'new pro1', NULL, 'no_selection', NULL, NULL, NULL, NULL, 0, 'no_selection', NULL, '2014-09-01 02:37:56', 'new-pro1', 'new-pro1.html', 4, '1.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_eav_idx`
--

INSERT INTO `catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_group_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL),
(1, 1, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL),
(1, 2, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL),
(1, 3, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_price_idx`
--

INSERT INTO `catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL),
(1, 1, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL),
(1, 2, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL),
(1, 3, 1, 0, '4234.0000', '4234.0000', '4234.0000', '4234.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2014-09-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '\n<ul>\n    <li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\n    <li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2014-08-29 16:32:57', '2014-08-29 16:33:02', 1),
(2, 'Footer Links Company', 'footer_links_company', '\n<div class="links">\n    <div class="block-title">\n        <strong><span>Company</span></strong>\n    </div>\n    <ul>\n        <li><a href="{{store url=""}}about-magento-demo-store/">About Us</a></li>\n        <li><a href="{{store url=""}}contacts/">Contact Us</a></li>\n        <li><a href="{{store url=""}}customer-service/">Customer Service</a></li>\n        <li><a href="{{store url=""}}privacy-policy-cookie-restriction-mode/">Privacy Policy</a></li>\n    </ul>\n</div>', '2014-08-29 16:33:00', '2014-08-29 16:33:00', 1),
(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2014-08-29 16:33:05', '2014-08-29 16:33:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '\n<div class="page-title"><h1>Whoops, our bad...</h1></div>\n<dl>\n    <dt>The page you requested was not found, and we have a fine guess why.</dt>\n    <dd>\n        <ul class="disc">\n            <li>If you typed the URL directly, please make sure the spelling is correct.</li>\n            <li>If you clicked on a link to get here, the link is outdated.</li>\n        </ul>\n    </dd>\n</dl>\n<dl>\n    <dt>What can you do?</dt>\n    <dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\n    <dd>\n        <ul class="disc">\n            <li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\n            <li>Use the search bar at the top of the page to search for your products.</li>\n            <li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a>\n            <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li>\n        </ul>\n    </dd>\n</dl>\n', '2014-08-29 16:32:58', '2014-08-29 16:32:58', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '<div class="page-title"><h2>Home Page</h2></div>', '2014-08-29 16:32:58', '2014-08-29 16:34:11', 1, 0, '<!--<reference name="content">\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n    </reference>\n    <reference name="right">\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '\n<div class="page-title">\n    <h1>About Magento Store</h1>\n</div>\n<div class="col3-set">\n<div class="col-1"><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec,\ntempus vitae, iaculis semper, pede.</small></p>\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis,\nporta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\n<div class="col-2">\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus.\nDuis lobortis. Nulla nec velit.</strong></p>\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper.\nPhasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada\nfames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac,\ntempus nec, tempor nec, justo. </p>\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam.\nPellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.\nVestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est.\nNulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat.\nPellentesque eget velit. Nunc tincidunt.</p></div>\n<div class="col-3">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci,\nsit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\n<div class="divider"></div>\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br />\n<small>Some important guy</small></p></div>\n</div>', '2014-08-29 16:32:58', '2014-08-29 16:32:58', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\n<h1>Customer Service</h1>\n</div>\n<ul class="disc">\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\n<li><a href="#answer2">Privacy &amp; Security</a></li>\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\n<li><a href="#answer4">Ordering</a></li>\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\n<li><a href="#answer6">Viewing Orders</a></li>\n<li><a href="#answer7">Updating Account Information</a></li>\n</ul>\n<dl>\n<dt id="answer1">Shipping &amp; Delivery</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer2">Privacy &amp; Security</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer3">Returns &amp; Replacements</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer4">Ordering</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer6">Viewing Orders</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n<dt id="answer7">Updating Account Information</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\n Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\n Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\n faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n</dl>', '2014-08-29 16:33:00', '2014-08-29 16:33:00', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\n    <ul class="messages">\n        <li class="notice-msg">\n            <ul>\n                <li>Please enable cookies in your web browser to continue.</li>\n            </ul>\n        </li>\n    </ul>\n    <div class="page-title">\n        <h1><a name="top"></a>What are Cookies?</h1>\n    </div>\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website.\n    On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically\n    whenever you visit our site so that we can personalize your experience and provide you with better service.\n    We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes.\n     If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase\n     or take advantage of certain features of our website, such as storing items in your Shopping Cart or\n     receiving personalized recommendations. As a result, we strongly encourage you to configure your web\n     browser to accept cookies from our website.</p>\n    <h2 class="subtitle">Enabling Cookies</h2>\n    <ul class="disc">\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\n        <li><a href="#opera">Opera 7.x</a></li>\n    </ul>\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\n    <ol>\n        <li>\n            <p>Start Internet Explorer</p>\n        </li>\n        <li>\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Privacy</strong> tab</p>\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Advanced</strong> button</p>\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>,\n            put another check mark in the <strong>Always accept session cookies </strong>box</p>\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Restart Internet Explore</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\n    <ol>\n        <li>\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> tab</p>\n        </li>\n        <li>\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>)\n            under <strong>Settings</strong>. Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Expand the <strong>Cookies</strong> section</p>\n        </li>\n        <li>\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="opera"></a>Opera 7.x</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong>\n            should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n</div>\n', '2014-08-29 16:33:00', '2014-08-29 16:33:00', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2014-08-29 16:33:02', '2014-08-29 16:33:02', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache`
--

CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_option`
--

CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Dumping data for table `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('config_api2', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=146 ;

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'payment/paypal_express/skip_order_review_step', '1'),
(5, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(6, 'default', 0, 'web/unsecure/base_url', 'http://127.0.0.1/magento19/'),
(7, 'default', 0, 'web/secure/base_url', 'http://127.0.0.1/magento19/'),
(8, 'default', 0, 'general/locale/code', 'en_US'),
(9, 'default', 0, 'general/locale/timezone', 'America/Los_Angeles'),
(10, 'default', 0, 'currency/options/base', 'USD'),
(11, 'default', 0, 'currency/options/default', 'USD'),
(12, 'default', 0, 'currency/options/allow', 'USD'),
(25, 'default', 0, 'droppin_instagramconnect/module_options/enabled', '1'),
(26, 'default', 0, 'droppin_instagramconnect/module_options/product', '1'),
(27, 'default', 0, 'droppin_instagramconnect/module_options/product_limit', '22'),
(28, 'default', 0, 'droppin_instagramconnect/module_options/client_id', '4e2f1e80c54443dfb827b6a8a3aa5ac6'),
(29, 'default', 0, 'droppin_instagramconnect/module_options/client_secret', '5a8175a98f664612b0a0658510f75dfe'),
(30, 'default', 0, 'droppin_instagramconnect/module_options/states', 'a:1:{s:9:"#football";s:16:"1409673271236377";}'),
(31, 'default', 0, 'le_sociallogin/general/showonloginpage', 'inloginbox'),
(32, 'default', 0, 'le_sociallogin/general/showoncheckout', '1'),
(33, 'default', 0, 'le_sociallogin/facebook/enabled', '1'),
(34, 'default', 0, 'le_sociallogin/facebook/api_key', '523513371014118'),
(35, 'default', 0, 'le_sociallogin/facebook/secret', '219fb2c866a71553e38d584e178daa3f'),
(36, 'default', 0, 'le_sociallogin/google/enabled', '0'),
(37, 'default', 0, 'le_sociallogin/twitter/enabled', '0'),
(38, 'default', 0, 'le_sociallogin/linkedin/enabled', '0'),
(39, 'default', 0, 'le_sociallogin/yahoo/enabled', '0'),
(40, 'default', 0, 'dev/restrict/allow_ips', NULL),
(41, 'default', 0, 'dev/debug/profiler', '0'),
(42, 'default', 0, 'dev/template/allow_symlink', '0'),
(43, 'default', 0, 'dev/translate_inline/active', '0'),
(44, 'default', 0, 'dev/translate_inline/active_admin', '0'),
(45, 'default', 0, 'dev/log/active', '1'),
(46, 'default', 0, 'dev/log/file', 'system.log'),
(47, 'default', 0, 'dev/log/exception_file', 'exception.log'),
(48, 'default', 0, 'dev/js/merge_files', '0'),
(49, 'default', 0, 'dev/css/merge_css_files', '0'),
(50, 'default', 0, 'belvgall/feed/installed', '1410245477'),
(51, 'default', 0, 'belvgall/feed/check_frequency', '21600'),
(52, 'default', 0, 'belvgall/feed/last_update', '1410603461'),
(53, 'default', 0, 'belvgall/feed/interests', 'INSTALLED_UPDATE,UPDATE_RELEASE,NEW_RELEASE,PROMO,INFO'),
(54, 'default', 0, 'web/seo/use_rewrites', '1'),
(63, 'default', 0, 'firecheckout/general/enabled', '1'),
(64, 'default', 0, 'firecheckout/general/title', 'Fire Checkout'),
(65, 'default', 0, 'firecheckout/general/layout', 'col2-set'),
(66, 'default', 0, 'firecheckout/general/registration_mode', 'optional'),
(67, 'default', 0, 'firecheckout/general/redirect_to_checkout', '0'),
(68, 'default', 0, 'firecheckout/general/shipping_method', 'flatrate_flatrate'),
(69, 'default', 0, 'firecheckout/general/country', 'US'),
(70, 'default', 0, 'firecheckout/general/hide_shipping_if_free', '0'),
(71, 'default', 0, 'firecheckout/general/shipping_address', '1'),
(72, 'default', 0, 'firecheckout/general/shipping_address_checkbox_state', '1'),
(73, 'default', 0, 'firecheckout/general/payment_method', 'paypal_express'),
(74, 'default', 0, 'firecheckout/general/paypalexpress_register', '1'),
(75, 'default', 0, 'firecheckout/general/newsletter_checkbox', '1'),
(76, 'default', 0, 'firecheckout/general/newsletter_checkbox_state', '0'),
(77, 'default', 0, 'firecheckout/general/comment', '0'),
(78, 'default', 0, 'firecheckout/general/discount', '0'),
(79, 'default', 0, 'firecheckout/general/giftcard', '0'),
(80, 'default', 0, 'firecheckout/general/order_review', '0'),
(81, 'default', 0, 'firecheckout/additional_content/top', '0'),
(82, 'default', 0, 'firecheckout/additional_content/bottom', '0'),
(83, 'default', 0, 'firecheckout/additional_content/reviewtable_after', '0'),
(84, 'default', 0, 'firecheckout/geo_ip/country', '0'),
(85, 'default', 0, 'firecheckout/geo_ip/country_file', 'GeoIP.dat'),
(86, 'default', 0, 'firecheckout/geo_ip/region', '0'),
(87, 'default', 0, 'firecheckout/geo_ip/region_file', 'GeoIPRegion.dat'),
(88, 'default', 0, 'firecheckout/geo_ip/city', '0'),
(89, 'default', 0, 'firecheckout/geo_ip/city_file', 'GeoLiteCity.dat'),
(90, 'default', 0, 'firecheckout/address_form_status/company', 'optional'),
(91, 'default', 0, 'firecheckout/address_form_status/street1', 'required'),
(92, 'default', 0, 'firecheckout/address_form_status/postcode', 'required'),
(93, 'default', 0, 'firecheckout/address_form_status/city', 'required'),
(94, 'default', 0, 'firecheckout/address_form_status/country_id', 'required'),
(95, 'default', 0, 'firecheckout/address_form_status/region', 'optional'),
(96, 'default', 0, 'firecheckout/address_form_status/telephone', 'required'),
(97, 'default', 0, 'firecheckout/address_form_status/fax', 'optional'),
(98, 'default', 0, 'firecheckout/address_form_order/name', '10'),
(99, 'default', 0, 'firecheckout/address_form_order/email', '20'),
(100, 'default', 0, 'firecheckout/address_form_order/company', '30'),
(101, 'default', 0, 'firecheckout/address_form_order/street1', '40'),
(102, 'default', 0, 'firecheckout/address_form_order/vat_id', '45'),
(103, 'default', 0, 'firecheckout/address_form_order/postcode', '50'),
(104, 'default', 0, 'firecheckout/address_form_order/city', '51'),
(105, 'default', 0, 'firecheckout/address_form_order/country_id', '60'),
(106, 'default', 0, 'firecheckout/address_form_order/region', '61'),
(107, 'default', 0, 'firecheckout/address_form_order/telephone', '70'),
(108, 'default', 0, 'firecheckout/address_form_order/fax', '71'),
(109, 'default', 0, 'firecheckout/address_form_order/dob', '80'),
(110, 'default', 0, 'firecheckout/address_form_order/gender', '81'),
(111, 'default', 0, 'firecheckout/address_form_order/taxvat', '90'),
(112, 'default', 0, 'firecheckout/address_verification/enabled', '0'),
(113, 'default', 0, 'firecheckout/ajax_update/payment_method_on_country', '0'),
(114, 'default', 0, 'firecheckout/ajax_update/payment_method_on_total', '0'),
(115, 'default', 0, 'firecheckout/ajax_update/payment_method_on_cart', '0'),
(116, 'default', 0, 'firecheckout/ajax_update/shipping_method_on_country', '1'),
(117, 'default', 0, 'firecheckout/ajax_update/shipping_method_on_zip', '1'),
(118, 'default', 0, 'firecheckout/ajax_update/shipping_method_on_region', '1'),
(119, 'default', 0, 'firecheckout/ajax_update/shipping_method_on_total', '0'),
(120, 'default', 0, 'firecheckout/ajax_update/shipping_method_on_cart', '1'),
(121, 'default', 0, 'firecheckout/ajax_update/shipping_method_on_coupon', '0'),
(122, 'default', 0, 'firecheckout/ajax_update/total_on_payment_method', '0'),
(123, 'default', 0, 'firecheckout/ajax_update/total_on_shipping_method', '1'),
(124, 'default', 0, 'firecheckout/ajax_update/total_on_shipping_country', '0'),
(125, 'default', 0, 'firecheckout/ajax_update/total_on_shipping_zip', '0'),
(126, 'default', 0, 'firecheckout/ajax_update/total_on_shipping_region', '0'),
(127, 'default', 0, 'firecheckout/ajax_update/total_on_taxvat', '0'),
(128, 'default', 0, 'firecheckout/agreements/output', 'minimal'),
(129, 'default', 0, 'firecheckout/mobile/enabled', '1'),
(130, 'default', 0, 'firecheckout/taxvat/validate', '1'),
(131, 'default', 0, 'firecheckout/taxvat/vies', '0'),
(132, 'default', 0, 'firecheckout/taxvat/field_names', 'taxvat'),
(133, 'default', 0, 'firecheckout/delivery_date/enabled', '0'),
(134, 'default', 0, 'firecheckout/delivery_date/filter_per_shipping_method', '0'),
(135, 'default', 0, 'firecheckout/delivery_date/use_calendar', '1'),
(136, 'default', 0, 'firecheckout/delivery_date/date_offset', '0'),
(137, 'default', 0, 'firecheckout/delivery_date/date_period', '365'),
(138, 'default', 0, 'firecheckout/delivery_date/exclude_weekend', '0'),
(139, 'default', 0, 'firecheckout/delivery_date/excluded_dates', 'a:0:{}'),
(140, 'default', 0, 'firecheckout/delivery_date/use_time_range', '0'),
(141, 'default', 0, 'firecheckout/delivery_date/time_range', 'a:0:{}'),
(142, 'default', 0, 'firecheckout/shopping_cart/editable', '1'),
(143, 'default', 0, 'firecheckout/shopping_cart/image', '0'),
(144, 'default', 0, 'firecheckout/shopping_cart/name_as_link', '0'),
(145, 'default', 0, 'firecheckout/shopping_cart/short_description', '0');

-- --------------------------------------------------------

--
-- Table structure for table `core_email_template`
--

CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_flag`
--

CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2014-09-08 23:51:34'),
(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2014-09-05 08:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `core_layout_link`
--

CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_layout_update`
--

CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_resource`
--

CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Dumping data for table `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.1', '1.6.1.1'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('belvgall_setup', '2.0.0', '2.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.8.2.0', '1.8.2.0'),
('catalog_setup', '1.6.0.0.19', '1.6.0.0.19'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.4', '1.6.0.4'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.3', '1.6.2.0.3'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.2', '1.6.0.2'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.1', '1.6.0.1'),
('facebookfree_setup', '2.0.1', '2.0.1'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('instagramconnect_setup', '1.0.0.1', '1.0.0.1'),
('log_setup', '1.6.1.0', '1.6.1.0'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('newsletter_setup', '1.6.0.1', '1.6.0.1'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.5', '1.6.0.5'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.0', '1.6.0.0'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.8', '1.6.0.8'),
('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('sociallogin_setup', '2.1.5', '2.1.5'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('tm_checkoutfields_setup', '1.3.0', '1.3.0'),
('tm_core_setup', '1.2.1', '1.2.1'),
('tm_firecheckout_setup', '2.5.7', '2.5.7'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0'),
('xmlconnect_setup', '1.6.0.0.1', '1.6.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_store_group`
--

CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'category/3', 'test.html', 'catalog/category/view/id/3', 1, NULL, NULL, 3, NULL),
(2, 1, 'product/1/3', 'test/new-pro1.html', 'catalog/product/view/id/1/category/3', 1, NULL, NULL, 3, 1),
(3, 1, 'product/1', 'new-pro1.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_variable`
--

CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_variable_value`
--

CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_website`
--

CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_address_entity`
--

INSERT INTO `customer_address_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `increment_id`, `parent_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 2, 0, NULL, 12, '2014-09-15 08:45:19', '2014-09-15 08:45:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_address_entity_int`
--

INSERT INTO `customer_address_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 2, 29, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_address_entity_text`
--

INSERT INTO `customer_address_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 2, 25, 1, 'california');

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer_address_entity_varchar`
--

INSERT INTO `customer_address_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 2, 20, 1, 'Jack'),
(2, 2, 22, 1, 'Nguyen'),
(3, 2, 24, 1, NULL),
(4, 2, 26, 1, 'california'),
(5, 2, 28, 1, 'California'),
(6, 2, 30, 1, '92274'),
(7, 2, 27, 1, 'US'),
(8, 2, 31, 1, '9654646'),
(9, 2, 32, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL),
(133, 0, NULL, 0, NULL, 1, 0, NULL),
(135, 0, NULL, 0, NULL, 1, 0, NULL),
(136, 0, NULL, 0, NULL, 1, 0, NULL),
(137, 0, NULL, 0, NULL, 1, 0, NULL),
(138, 0, NULL, 0, NULL, 1, 0, NULL),
(140, 0, NULL, 0, NULL, 1, 0, NULL),
(141, 0, NULL, 0, NULL, 1, 0, NULL),
(142, 0, NULL, 0, NULL, 1, 0, NULL),
(143, 0, NULL, 0, NULL, 1, 0, NULL),
(144, 0, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `facebook_id` text COMMENT 'Facebook Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`, `facebook_id`) VALUES
(11, 1, 0, 1, 'easier.web@gmail.com', 1, NULL, 1, '2014-09-13 11:18:38', '2014-09-13 04:18:41', 1, 0, NULL),
(12, 1, 0, 1, 'eblue.tens@gmail.com', 1, NULL, 1, '2014-09-15 15:44:11', '2014-09-15 08:45:19', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_entity_int`
--

INSERT INTO `customer_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 13, 12, 1),
(2, 1, 14, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `customer_entity_text`
--

INSERT INTO `customer_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(21, 1, 136, 11, '100004556385728'),
(22, 1, 137, 11, '{"access_token":"CAAHcIfSDsZBYBAL52DAyqBoYexQo3xbDQw6QPLZCdZBjGJeb2WIAmPjYZCaMZAbnyFRhkNNGe2zP6mMcKQydRdNsp0xJ6ZBZASpRsBCrrlCvHeqtZBapCBIXhTdbhLcno4usybCYsvpsuK1S1EbSZCBIitOE4tZCGf9oKFUzVXY3kz8bovxLZC64KrZBhEWDjkS4xKyjGh6rByNgf3ZAZCXWYgLpwu","expires":"5109546"}'),
(23, 1, 136, 12, '100008373675364'),
(24, 1, 137, 12, '{"access_token":"CAAHcIfSDsZBYBAOH7ZBwQvez80pqjhfwSikpWOsYD4GLZCxySONyV6PXJuErS8TCZAmdtzM9ZA1EA9UZC2d7pUk5yAPsArHXIXMD2qiAtzEzkMyJRDzIF3bV57eR9iW5ALGkPNeswlZCnhN8lstKLKfAWSo9NPV0YvaZBlhkqlAEVtIQGdcTwZBcHddf4iQWLkY4E0iuuYe3jhWmjCTxSRU5g","expires":"5183966"}');

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=59 ;

--
-- Dumping data for table `customer_entity_varchar`
--

INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(51, 1, 5, 11, 'Sun'),
(52, 1, 7, 11, 'Nguyen'),
(53, 1, 12, 11, 'a222a84a4aa38fa589dcdeb852cd83be:yKSTEk5L0lvtJWKBCWVP8KAUq8Pq24bC'),
(54, 1, 3, 11, 'Default Store View'),
(55, 1, 5, 12, 'Jack'),
(56, 1, 7, 12, 'Nguyen'),
(57, 1, 12, 12, '5305fdca6b94762faf250d1c4badcdcf:0nuzC83S48XTZ3ZqtkCxtcDtc3nJhTR0'),
(58, 1, 3, 12, 'Default Store View');

-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2014-08-29 16:32:56', '2014-08-29 16:32:56', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2014-08-29 16:32:56', '2014-08-29 16:32:56', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2014-08-29 16:32:56', '2014-08-29 16:32:56', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2014-08-29 16:32:57', '2014-08-29 16:32:57', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2014-08-29 16:32:57', '2014-08-29 16:32:57', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2014-08-29 16:32:57', '2014-08-29 16:32:57', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dataflow_profile_history`
--

INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2014-08-29 16:32:56'),
(2, 2, 'create', 0, '2014-08-29 16:32:56'),
(3, 3, 'create', 0, '2014-08-29 16:32:56'),
(4, 4, 'create', 0, '2014-08-29 16:32:57'),
(5, 5, 'create', 0, '2014-08-29 16:32:57'),
(6, 6, 'create', 0, '2014-08-29 16:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `dataflow_session`
--

CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `droppin_instagramconnect_image`
--

CREATE TABLE IF NOT EXISTS `droppin_instagramconnect_image` (
  `image_id` varchar(255) NOT NULL COMMENT 'Image Id',
  `username` varchar(255) NOT NULL COMMENT 'Username',
  `caption_text` varchar(255) NOT NULL COMMENT 'Caption Text',
  `standard_resolution_url` varchar(255) NOT NULL COMMENT 'Standard Resolution Url',
  `low_resolution_url` varchar(255) NOT NULL COMMENT 'Low Resolution Url',
  `thumbnail_url` varchar(255) NOT NULL COMMENT 'Thumbnail url',
  `tag` varchar(255) NOT NULL COMMENT 'Tag Value',
  `is_approved` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Approved',
  `is_visible` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Visible on Backend and Frontend',
  `link_instagram` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link to Instagram',
  `product_instagram` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Product Id',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Droppin Modules';

--
-- Dumping data for table `droppin_instagramconnect_image`
--

INSERT INTO `droppin_instagramconnect_image` (`image_id`, `username`, `caption_text`, `standard_resolution_url`, `low_resolution_url`, `thumbnail_url`, `tag`, `is_approved`, `is_visible`, `link_instagram`, `product_instagram`) VALUES
('789204620043320209_269024573', 'keinewieeine', '', 'http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/924564_1458435717769747_1990704075_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/924564_1458435717769747_1990704075_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/924564_1458435717769747_1990704075_s.jpg', '#football', 1, 1, 'http://instagram.com/p/rz0Wuox3uR/', '1'),
('800073565865271888_447966303', 'brandontachibana', 'I was challenged by @covergirlalexis and the @smiilemovement to do the #sharingiscaringchallenge. This is only a small amount of stuff that I care about and/or enjoy. This includes the @celtics, the @steelers, music, working out and culinary. There is so ', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10632005_292243707632600_1585259412_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10632005_292243707632600_1585259412_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10632005_292243707632600_1585259412_s.jpg', '#football', 0, 1, 'http://instagram.com/p/sabqtPlGJQ/', '0'),
('800224385410981261_14505438', 'xokellxo', 'My favourite photos of a day filled with laughs, happiness and love. #jeffjesswedding', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10661127_1507749582799603_1233731763_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10661127_1507749582799603_1233731763_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10661127_1507749582799603_1233731763_s.jpg', '#football', 0, 1, 'http://instagram.com/p/sa99a5Bt2N/', '0'),
('800287219869049032_447966303', 'brandontachibana', 'Message to the doubters and non believers.. Had to pull one out of the Tachibana vault lol. My arms are looking mighty naked. #BTachibanaMusic #WorkHardNowWorryLessLater #thetachibanavault', 'http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10644084_1591580021073450_420521481_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10644084_1591580021073450_420521481_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10644084_1591580021073450_420521481_s.jpg', '#football', 0, 1, 'http://instagram.com/p/sbMPyClGDI/', '0'),
('800569651910435277_447966303', 'brandontachibana', '', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10598666_683888885015440_198335928_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10598666_683888885015440_198335928_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10598666_683888885015440_198335928_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scMdtYFGHN/', '0'),
('800711158683245764_53370102', '_kmbrly', 'Had a blast tailgating in AA this weekend! #footballseason #tailgating', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10597511_707401659313769_1095926791_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10597511_707401659313769_1095926791_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10597511_707401659313769_1095926791_s.jpg', '#football', 1, 1, 'http://instagram.com/p/scso51AZzE/', '1'),
('800718215717149218_344590085', 'mr_randomz', 'Yeah Go Dawgs! Can''t wait for the AP Poll Top 25 to come out. Hope they come out at 12, but they might not till 1. (Eastern Time)', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10643996_1482186488716186_644045913_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10643996_1482186488716186_644045913_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10643996_1482186488716186_644045913_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scuPmNAVoi/', '0'),
('800719485077774466_1452594823', 'niner_girls', '@red_roze_mafia  #niner_girls', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/1889133_1472611916324576_247159833_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/1889133_1472611916324576_247159833_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/1889133_1472611916324576_247159833_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scuiEYy2CC/', '0'),
('800719926786291253_298162844', 'modou2ray', '#Football #training #hjk', 'http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10611140_491044261031242_1633930177_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10611140_491044261031242_1633930177_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10611140_491044261031242_1633930177_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scuofwrHY1/', '0'),
('800719937472873853_1348442352', 'sloom_alamri66', '#CR #cr7 #nike #ريال_مدريد #_news_realmadrid #ronaldo  #هلا_مدريد  #الكويت #السعوديه #البحرين #قطر #الامارات #عمان #نايك #أديداس #كويتي #كويت #soccer #q8 #football  #fifa #realmadrid #hala #halamadrid #hala_madrid #adidas #sport #sports #madrid #puma', 'http://scontent-a.cdninstagram.com/hphotos-xap1/t51.2885-15/927128_340413472794499_1150756159_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xap1/t51.2885-15/927128_340413472794499_1150756159_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xap1/t51.2885-15/927128_340413472794499_1150756159_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scuoptpMV9/', '0'),
('800720003225459354_930439965', 'ayee_bruh_nah', 'Game day!!\n#football #softball', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10610978_1543768665852576_1085458786_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10610978_1543768665852576_1085458786_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10610978_1543768665852576_1085458786_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scupm8zZqa/', '0'),
('800720012107423744_1371988431', 'alimansour19', '#TV #interview ', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10349476_552428218202116_1557705554_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10349476_552428218202116_1557705554_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10349476_552428218202116_1557705554_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scupvONaAA/', '0'),
('800720023339769351_1425873430', 'goals4arb', 'اذا اعجبك الفيديو منشن لأصدقائك .\n.\n #UEFA #Bundesliga #Brazuca #World_Cup #Liga  #Juventus #Milan #Inter #Roma #Napoli #Lazio #Realmadrid #Barcelona #Arsenal #Liverpool #Chelsea #Manchesterunited #Manchestercity #FCB #Bayern #BVB #Messi #CR7 #Football #S', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10617120_684249274993527_1235177885_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10617120_684249274993527_1235177885_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10617120_684249274993527_1235177885_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scup5rtZ4H/', '0'),
('800720037992565782_262256378', 'poppycornell', 'This was one of the best days ever eill never forgrt this day♥♥♥\nI love you @soccersixofficial \n#SoccerSix #celebrities #Football #Flipagram #Likeforlikes #Likeforlike #lfl #Followforfollow ♥♥♥', 'http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928372_817988968245603_249296740_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928372_817988968245603_249296740_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/928372_817988968245603_249296740_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scuqHVFYwW/', '0'),
('800720052277809501_1393905835', 'craigy9801', 'ready for football #football #life #returns #thoughts?', 'http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10598790_335962643243737_1169821306_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10598790_335962643243737_1169821306_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10598790_335962643243737_1169821306_s.jpg', '#football', 1, 1, 'http://instagram.com/p/scuqUojRFd/', '1'),
('800720119713664881_1326370674', 'linlindaer', '#cr7 #cristiano #CristianoRonaldo #ronaldo #ronaldo7 #realmadrid #halamadrid #soccer #sports #football #portugal', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10684173_908980629116988_879163556_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10684173_908980629116988_879163556_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10684173_908980629116988_879163556_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scurTcCo9x/', '0'),
('800720120619246221_1461710295', 'hayleigh_16', '#CoventryCity #Football #Game #PUSB #Friends #Excited', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10643982_735890366458533_1982863204_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10643982_735890366458533_1982863204_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10643982_735890366458533_1982863204_s.jpg', '#football', 1, 1, 'http://instagram.com/p/scurUSBKKN/', '1'),
('800720139152130864_1131537687', 'walshyy_8', 'Laced up and ready⚽ game time❤ #football #love #predator #predatorinstinct #midfielder #ping #newlaces #match #smfc #f4f #l4l #bosh', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10661094_1463412610596487_1972320070_n.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10661094_1463412610596487_1972320070_a.jpg', 'http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10661094_1463412610596487_1972320070_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scurliqgMw/', '0'),
('800720162504599142_411456304', 'alexkoldun', 'Вадим Сидоров aka Сироп) #Press #football #soccer #ultras #accreditation  #photojournalist', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10546627_439663746173899_956548216_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10546627_439663746173899_956548216_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10546627_439663746173899_956548216_s.jpg', '#football', 0, 1, 'http://instagram.com/p/scur7SlGZm/', '0'),
('800720192904679454_1387616075', 'andy_hinomia', '#Stadion#boy#football', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10607942_343845099114129_696899052_n.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10607942_343845099114129_696899052_a.jpg', 'http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10607942_343845099114129_696899052_s.jpg', '#football', 1, 1, 'http://instagram.com/p/scusXmkNAe/', '1');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=145 ;

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate_specialprice', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container1', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 3, 'thumbnail', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(133, 1, 'le_sociallogin_gid', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(135, 1, 'le_sociallogin_gtoken', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(136, 1, 'le_sociallogin_fid', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(137, 1, 'le_sociallogin_ftoken', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(138, 1, 'le_sociallogin_tid', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(140, 1, 'le_sociallogin_ttoken', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(141, 1, 'le_sociallogin_lid', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(142, 1, 'le_sociallogin_ltoken', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(143, 1, 'le_sociallogin_yid', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(144, 1, 'le_sociallogin_ytoken', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=18 ;

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=141 ;

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(71, 4, 4, 7, 71, 1),
(72, 4, 4, 7, 72, 2),
(73, 4, 4, 7, 73, 3),
(74, 4, 4, 7, 74, 4),
(75, 4, 4, 8, 75, 1),
(76, 4, 4, 8, 76, 3),
(77, 4, 4, 8, 77, 4),
(78, 4, 4, 8, 78, 5),
(79, 4, 4, 8, 79, 6),
(80, 4, 4, 7, 80, 5),
(81, 4, 4, 9, 82, 1),
(82, 4, 4, 9, 83, 2),
(83, 4, 4, 9, 84, 3),
(84, 4, 4, 10, 85, 1),
(85, 4, 4, 10, 86, 2),
(86, 4, 4, 10, 87, 3),
(87, 4, 4, 10, 88, 4),
(88, 4, 4, 7, 89, 6),
(89, 4, 4, 8, 90, 2),
(90, 4, 4, 8, 91, 7),
(91, 4, 4, 7, 93, 7),
(92, 4, 4, 7, 94, 8),
(93, 4, 4, 10, 95, 5),
(94, 4, 4, 7, 96, 9),
(95, 4, 4, 7, 97, 10),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(98, 4, 4, 11, 100, 1),
(99, 4, 4, 11, 101, 2),
(100, 4, 4, 7, 102, 12),
(101, 4, 4, 12, 103, 1),
(102, 4, 4, 12, 104, 2),
(103, 4, 4, 12, 105, 3),
(104, 4, 4, 12, 106, 4),
(105, 4, 4, 12, 107, 5),
(106, 4, 4, 7, 108, 13),
(107, 4, 4, 12, 109, 6),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(115, 4, 4, 7, 117, 21),
(116, 4, 4, 8, 118, 9),
(117, 4, 4, 8, 119, 10),
(118, 4, 4, 8, 120, 11),
(119, 4, 4, 8, 121, 12),
(120, 4, 4, 17, 122, 1),
(121, 4, 4, 7, 123, 22),
(122, 4, 4, 7, 124, 23),
(123, 4, 4, 7, 125, 24),
(124, 4, 4, 8, 126, 13),
(125, 4, 4, 7, 127, 25),
(126, 4, 4, 7, 128, 26),
(127, 4, 4, 7, 129, 27),
(128, 4, 4, 7, 130, 28),
(129, 4, 4, 7, 131, 29),
(130, 3, 3, 4, 132, 4),
(131, 1, 1, 1, 133, 113),
(132, 1, 1, 1, 135, 114),
(133, 1, 1, 1, 136, 115),
(134, 1, 1, 1, 137, 116),
(135, 1, 1, 1, 138, 117),
(136, 1, 1, 1, 140, 118),
(137, 1, 1, 1, 141, 119),
(138, 1, 1, 1, 142, 120),
(139, 1, 1, 1, 143, 121),
(140, 1, 1, 1, 144, 122);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `eav_entity_store`
--

INSERT INTO `eav_entity_store` (`entity_store_id`, `entity_type_id`, `store_id`, `increment_prefix`, `increment_last_id`) VALUES
(1, 5, 1, '1', '100000001');

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=53 ;

--
-- Dumping data for table `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 22, 1),
(3, 1, NULL, 24, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 25, 4),
(6, 1, NULL, 26, 5),
(7, 1, NULL, 28, 6),
(8, 1, NULL, 30, 7),
(9, 1, NULL, 27, 8),
(10, 1, NULL, 31, 9),
(11, 1, NULL, 32, 10),
(12, 2, NULL, 20, 0),
(13, 2, NULL, 22, 1),
(14, 2, NULL, 24, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 25, 4),
(17, 2, NULL, 26, 5),
(18, 2, NULL, 28, 6),
(19, 2, NULL, 30, 7),
(20, 2, NULL, 27, 8),
(21, 2, NULL, 31, 9),
(22, 2, NULL, 32, 10),
(23, 3, NULL, 20, 0),
(24, 3, NULL, 22, 1),
(25, 3, NULL, 24, 2),
(26, 3, NULL, 25, 3),
(27, 3, NULL, 26, 4),
(28, 3, NULL, 28, 5),
(29, 3, NULL, 30, 6),
(30, 3, NULL, 27, 7),
(31, 3, NULL, 31, 8),
(32, 3, NULL, 32, 9),
(33, 4, NULL, 20, 0),
(34, 4, NULL, 22, 1),
(35, 4, NULL, 24, 2),
(36, 4, NULL, 25, 3),
(37, 4, NULL, 26, 4),
(38, 4, NULL, 28, 5),
(39, 4, NULL, 30, 6),
(40, 4, NULL, 27, 7),
(41, 4, NULL, 31, 8),
(42, 4, NULL, 32, 9),
(43, 5, 1, 5, 0),
(44, 5, 1, 7, 1),
(45, 5, 1, 9, 2),
(46, 5, 2, 24, 0),
(47, 5, 2, 31, 1),
(48, 5, 2, 25, 2),
(49, 5, 2, 26, 3),
(50, 5, 2, 28, 4),
(51, 5, 2, 30, 5),
(52, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Dumping data for table `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fb_sociallogin_friends`
--

CREATE TABLE IF NOT EXISTS `fb_sociallogin_friends` (
  `f_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'Friend Id',
  `facebook_id` varchar(255) NOT NULL COMMENT 'Facebook Id',
  `customer_id` varchar(255) NOT NULL COMMENT 'Customer Id',
  `username` varchar(255) NOT NULL COMMENT 'Username',
  `profile_image` varchar(255) NOT NULL COMMENT 'Profile Image',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Facebook Modules' AUTO_INCREMENT=18 ;

--
-- Dumping data for table `fb_sociallogin_friends`
--

INSERT INTO `fb_sociallogin_friends` (`f_id`, `facebook_id`, `customer_id`, `username`, `profile_image`) VALUES
(1, '100008373675364', '11', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(2, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(3, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(4, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(5, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(6, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(7, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(8, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(9, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(10, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(11, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(12, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(13, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(14, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(15, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(16, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture'),
(17, '100008373675364', '', 'Jack Nguyen', 'https://graph.facebook.com/100008373675364/picture');

-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `index_event`
--

CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2014-08-29 16:33:30', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2014-08-29 16:33:32', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(3, 'save', 'catalog_category', 3, '2014-09-01 02:36:53', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(4, 'save', 'cataloginventory_stock_item', 1, '2014-09-01 02:38:02', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(5, 'save', 'catalog_product', 1, '2014-09-01 02:38:13', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(6, 'catalog_reindex_price', 'catalog_product', 1, '2014-09-01 02:38:15', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `index_process`
--

CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2014-09-05 08:34:33', '2014-09-05 08:34:36', 'real_time'),
(2, 'catalog_product_price', 'pending', '2014-09-05 08:34:37', '2014-09-05 08:34:43', 'real_time'),
(3, 'catalog_url', 'pending', '2014-09-05 08:34:43', '2014-09-05 08:34:44', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2014-09-05 08:34:44', '2014-09-05 08:34:52', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2014-09-05 08:34:52', '2014-09-05 08:34:54', 'real_time'),
(6, 'catalog_category_product', 'pending', '2014-09-05 08:34:58', '2014-09-05 08:35:04', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2014-09-05 08:35:05', '2014-09-05 08:35:06', 'real_time'),
(8, 'cataloginventory_stock', 'pending', '2014-09-05 08:34:30', '2014-09-05 08:34:31', 'real_time'),
(9, 'tag_summary', 'pending', '2014-09-05 08:35:06', '2014-09-05 08:35:06', 'real_time');

-- --------------------------------------------------------

--
-- Table structure for table `index_process_event`
--

CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Table structure for table `log_customer`
--

CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `log_customer`
--

INSERT INTO `log_customer` (`log_id`, `visitor_id`, `customer_id`, `login_at`, `logout_at`, `store_id`) VALUES
(1, 8, 1, '2014-09-07 17:05:16', NULL, 1),
(2, 11, 1, '2014-09-09 03:32:16', NULL, 1),
(3, 12, 1, '2014-09-09 07:06:34', NULL, 1),
(4, 22, 1, '2014-09-12 07:38:11', '2014-09-12 07:44:36', 1),
(5, 23, 1, '2014-09-13 03:13:56', '2014-09-13 04:06:21', 1),
(6, 23, 8, '2014-09-13 04:06:45', NULL, 1),
(7, 26, 11, '2014-09-14 03:58:24', NULL, 1),
(8, 27, 11, '2014-09-14 06:28:18', NULL, 1),
(9, 28, 11, '2014-09-14 08:19:57', NULL, 1),
(10, 30, 12, '2014-09-15 08:44:17', NULL, 1),
(11, 31, 11, '2014-09-15 08:46:38', NULL, 1),
(12, 32, 11, '2014-09-15 17:11:43', NULL, 1),
(13, 33, 11, '2014-09-16 09:03:23', NULL, 1),
(14, 34, 11, '2014-09-17 17:36:26', NULL, 1),
(15, 35, 11, '2014-09-18 06:15:27', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_quote`
--

CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- Dumping data for table `log_quote`
--

INSERT INTO `log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
(2, 9, '2014-09-08 23:52:06', NULL),
(3, 10, '2014-09-09 02:32:47', NULL),
(4, 11, '2014-09-09 02:44:29', NULL),
(5, 12, '2014-09-09 07:06:20', NULL),
(6, 13, '2014-09-09 07:18:15', NULL),
(9, 24, '2014-09-13 08:22:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_summary`
--

CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `log_summary_type`
--

CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`),
  KEY `url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- Dumping data for table `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2014-09-01 02:22:39'),
(2, 1, '2014-09-01 02:38:21'),
(3, 1, '2014-09-01 02:38:25'),
(4, 1, '2014-09-01 03:35:38'),
(5, 1, '2014-09-01 03:55:13'),
(6, 1, '2014-09-01 03:55:49'),
(7, 1, '2014-09-01 03:59:45'),
(8, 1, '2014-09-01 04:13:37'),
(9, 1, '2014-09-01 04:15:05'),
(10, 2, '2014-09-01 05:24:48'),
(11, 2, '2014-09-01 05:24:53'),
(12, 2, '2014-09-01 05:24:57'),
(13, 2, '2014-09-01 05:25:48'),
(14, 2, '2014-09-01 05:26:08'),
(15, 2, '2014-09-01 05:26:20'),
(16, 2, '2014-09-01 05:26:55'),
(17, 2, '2014-09-01 05:28:34'),
(18, 2, '2014-09-01 05:28:46'),
(19, 2, '2014-09-01 05:34:59'),
(20, 2, '2014-09-01 05:35:13'),
(21, 3, '2014-09-02 08:55:43'),
(22, 3, '2014-09-02 08:55:47'),
(23, 3, '2014-09-02 08:55:48'),
(24, 3, '2014-09-02 08:55:53'),
(25, 4, '2014-09-05 08:34:00'),
(26, 4, '2014-09-05 08:34:14'),
(27, 5, '2014-09-05 08:36:40'),
(28, 4, '2014-09-05 08:58:31'),
(29, 4, '2014-09-05 09:09:57'),
(30, 4, '2014-09-05 09:09:58'),
(31, 4, '2014-09-05 09:10:00'),
(32, 4, '2014-09-05 09:10:33'),
(33, 4, '2014-09-05 09:10:34'),
(34, 4, '2014-09-05 09:10:35'),
(35, 4, '2014-09-05 09:11:03'),
(36, 4, '2014-09-05 09:11:05'),
(37, 4, '2014-09-05 09:11:06'),
(38, 4, '2014-09-05 09:12:30'),
(39, 4, '2014-09-05 09:12:39'),
(40, 4, '2014-09-05 09:15:34'),
(41, 4, '2014-09-05 09:18:45'),
(42, 4, '2014-09-05 09:19:20'),
(43, 4, '2014-09-05 09:19:45'),
(44, 4, '2014-09-05 09:20:13'),
(45, 4, '2014-09-05 09:20:36'),
(46, 4, '2014-09-05 09:20:57'),
(47, 4, '2014-09-05 09:21:45'),
(48, 4, '2014-09-05 09:22:38'),
(49, 4, '2014-09-05 09:22:41'),
(50, 4, '2014-09-05 09:22:46'),
(51, 4, '2014-09-05 09:22:52'),
(52, 4, '2014-09-05 09:25:02'),
(53, 4, '2014-09-05 09:25:06'),
(54, 4, '2014-09-05 09:25:14'),
(55, 4, '2014-09-05 09:25:17'),
(56, 4, '2014-09-05 09:26:19'),
(57, 4, '2014-09-05 09:26:21'),
(58, 4, '2014-09-05 09:26:25'),
(59, 4, '2014-09-05 09:26:43'),
(60, 4, '2014-09-05 09:26:45'),
(61, 4, '2014-09-05 09:27:02'),
(62, 4, '2014-09-05 09:27:06'),
(63, 4, '2014-09-05 09:27:09'),
(64, 4, '2014-09-05 09:27:12'),
(65, 4, '2014-09-05 09:28:06'),
(66, 4, '2014-09-05 09:28:08'),
(67, 4, '2014-09-05 09:28:11'),
(68, 4, '2014-09-05 09:28:21'),
(69, 4, '2014-09-05 09:28:24'),
(70, 4, '2014-09-05 09:28:29'),
(71, 6, '2014-09-07 06:52:49'),
(72, 6, '2014-09-07 06:55:43'),
(73, 6, '2014-09-07 06:55:48'),
(74, 6, '2014-09-07 06:55:53'),
(75, 6, '2014-09-07 06:55:58'),
(76, 6, '2014-09-07 07:14:15'),
(77, 6, '2014-09-07 07:14:19'),
(78, 6, '2014-09-07 07:14:25'),
(79, 6, '2014-09-07 07:33:23'),
(80, 6, '2014-09-07 07:33:27'),
(81, 6, '2014-09-07 07:33:28'),
(82, 6, '2014-09-07 07:38:56'),
(83, 6, '2014-09-07 07:39:34'),
(84, 6, '2014-09-07 07:41:52'),
(85, 6, '2014-09-07 07:42:17'),
(86, 6, '2014-09-07 07:44:32'),
(87, 6, '2014-09-07 07:46:53'),
(88, 6, '2014-09-07 07:47:36'),
(89, 6, '2014-09-07 07:48:10'),
(90, 6, '2014-09-07 07:48:18'),
(91, 6, '2014-09-07 07:48:43'),
(92, 6, '2014-09-07 07:49:01'),
(93, 6, '2014-09-07 07:49:40'),
(94, 6, '2014-09-07 07:50:39'),
(95, 6, '2014-09-07 07:52:12'),
(96, 6, '2014-09-07 07:52:13'),
(97, 6, '2014-09-07 07:52:28'),
(98, 6, '2014-09-07 07:52:29'),
(99, 6, '2014-09-07 07:52:58'),
(100, 6, '2014-09-07 07:52:59'),
(101, 6, '2014-09-07 07:54:41'),
(102, 6, '2014-09-07 07:54:43'),
(103, 6, '2014-09-07 07:54:45'),
(104, 6, '2014-09-07 07:54:47'),
(105, 6, '2014-09-07 07:54:48'),
(106, 6, '2014-09-07 07:54:50'),
(107, 6, '2014-09-07 07:54:51'),
(108, 6, '2014-09-07 07:54:52'),
(109, 6, '2014-09-07 07:54:53'),
(110, 6, '2014-09-07 07:54:54'),
(111, 6, '2014-09-07 07:54:55'),
(112, 6, '2014-09-07 07:54:57'),
(113, 6, '2014-09-07 07:54:58'),
(114, 6, '2014-09-07 07:55:00'),
(115, 6, '2014-09-07 07:55:01'),
(116, 6, '2014-09-07 07:55:02'),
(117, 6, '2014-09-07 07:55:03'),
(118, 6, '2014-09-07 07:55:05'),
(119, 6, '2014-09-07 07:55:05'),
(120, 6, '2014-09-07 07:55:07'),
(121, 6, '2014-09-07 07:55:08'),
(122, 6, '2014-09-07 07:55:09'),
(123, 6, '2014-09-07 07:55:10'),
(124, 6, '2014-09-07 07:55:21'),
(125, 6, '2014-09-07 07:55:23'),
(126, 6, '2014-09-07 07:56:54'),
(127, 6, '2014-09-07 07:56:56'),
(128, 6, '2014-09-07 07:57:13'),
(129, 6, '2014-09-07 07:57:15'),
(130, 6, '2014-09-07 07:58:44'),
(131, 6, '2014-09-07 07:58:46'),
(132, 6, '2014-09-07 07:59:04'),
(133, 6, '2014-09-07 07:59:06'),
(134, 6, '2014-09-07 08:00:38'),
(135, 6, '2014-09-07 08:00:40'),
(136, 6, '2014-09-07 08:00:50'),
(137, 7, '2014-09-07 08:01:05'),
(138, 6, '2014-09-07 08:02:38'),
(139, 6, '2014-09-07 08:02:40'),
(140, 6, '2014-09-07 08:02:47'),
(141, 8, '2014-09-07 16:48:29'),
(142, 8, '2014-09-07 16:48:32'),
(143, 8, '2014-09-07 16:51:05'),
(144, 8, '2014-09-07 16:51:11'),
(145, 8, '2014-09-07 17:04:48'),
(146, 8, '2014-09-07 17:04:50'),
(147, 8, '2014-09-07 17:05:16'),
(148, 8, '2014-09-07 17:05:17'),
(149, 8, '2014-09-07 17:05:19'),
(150, 8, '2014-09-07 17:25:34'),
(151, 8, '2014-09-07 17:25:37'),
(152, 8, '2014-09-07 17:25:37'),
(153, 8, '2014-09-07 17:25:38'),
(154, 8, '2014-09-07 17:25:44'),
(155, 8, '2014-09-07 17:25:49'),
(156, 8, '2014-09-07 17:25:56'),
(157, 8, '2014-09-07 17:32:59'),
(158, 8, '2014-09-07 17:34:19'),
(159, 9, '2014-09-08 23:51:49'),
(160, 9, '2014-09-08 23:51:58'),
(161, 9, '2014-09-08 23:52:06'),
(162, 9, '2014-09-08 23:52:08'),
(163, 9, '2014-09-08 23:58:39'),
(164, 9, '2014-09-08 23:59:00'),
(165, 9, '2014-09-08 23:59:06'),
(166, 9, '2014-09-08 23:59:12'),
(167, 10, '2014-09-09 02:32:33'),
(168, 10, '2014-09-09 02:32:39'),
(169, 10, '2014-09-09 02:32:47'),
(170, 10, '2014-09-09 02:32:50'),
(171, 10, '2014-09-09 02:33:02'),
(172, 10, '2014-09-09 02:33:04'),
(173, 11, '2014-09-09 02:44:16'),
(174, 11, '2014-09-09 02:44:17'),
(175, 11, '2014-09-09 02:44:21'),
(176, 11, '2014-09-09 02:44:24'),
(177, 11, '2014-09-09 02:44:29'),
(178, 11, '2014-09-09 02:44:31'),
(179, 11, '2014-09-09 02:44:38'),
(180, 11, '2014-09-09 02:47:27'),
(181, 11, '2014-09-09 02:47:55'),
(182, 11, '2014-09-09 02:49:50'),
(183, 11, '2014-09-09 02:50:07'),
(184, 11, '2014-09-09 02:52:45'),
(185, 11, '2014-09-09 02:54:03'),
(186, 11, '2014-09-09 02:57:34'),
(187, 11, '2014-09-09 02:58:57'),
(188, 11, '2014-09-09 02:59:21'),
(189, 11, '2014-09-09 02:59:55'),
(190, 11, '2014-09-09 03:00:50'),
(191, 11, '2014-09-09 03:02:17'),
(192, 11, '2014-09-09 03:02:29'),
(193, 11, '2014-09-09 03:04:51'),
(194, 11, '2014-09-09 03:05:10'),
(195, 11, '2014-09-09 03:05:22'),
(196, 11, '2014-09-09 03:05:40'),
(197, 11, '2014-09-09 03:06:14'),
(198, 11, '2014-09-09 03:08:06'),
(199, 11, '2014-09-09 03:08:08'),
(200, 11, '2014-09-09 03:11:06'),
(201, 11, '2014-09-09 03:11:07'),
(202, 11, '2014-09-09 03:21:51'),
(203, 11, '2014-09-09 03:22:08'),
(204, 11, '2014-09-09 03:22:15'),
(205, 11, '2014-09-09 03:22:35'),
(206, 11, '2014-09-09 03:22:44'),
(207, 11, '2014-09-09 03:22:46'),
(208, 11, '2014-09-09 03:22:58'),
(209, 11, '2014-09-09 03:23:08'),
(210, 11, '2014-09-09 03:23:14'),
(211, 11, '2014-09-09 03:23:16'),
(212, 11, '2014-09-09 03:27:52'),
(213, 11, '2014-09-09 03:27:53'),
(214, 11, '2014-09-09 03:29:48'),
(215, 11, '2014-09-09 03:29:50'),
(216, 11, '2014-09-09 03:31:59'),
(217, 11, '2014-09-09 03:32:02'),
(218, 11, '2014-09-09 03:32:08'),
(219, 11, '2014-09-09 03:32:16'),
(220, 11, '2014-09-09 03:32:19'),
(221, 12, '2014-09-09 07:06:02'),
(222, 12, '2014-09-09 07:06:03'),
(223, 12, '2014-09-09 07:06:06'),
(224, 12, '2014-09-09 07:06:11'),
(225, 12, '2014-09-09 07:06:20'),
(226, 12, '2014-09-09 07:06:22'),
(227, 12, '2014-09-09 07:06:27'),
(228, 12, '2014-09-09 07:06:29'),
(229, 12, '2014-09-09 07:06:34'),
(230, 12, '2014-09-09 07:06:39'),
(231, 12, '2014-09-09 07:06:53'),
(232, 12, '2014-09-09 07:07:07'),
(233, 12, '2014-09-09 07:07:14'),
(234, 13, '2014-09-09 07:18:01'),
(235, 13, '2014-09-09 07:18:12'),
(236, 13, '2014-09-09 07:18:15'),
(237, 13, '2014-09-09 07:18:17'),
(238, 13, '2014-09-09 07:18:22'),
(239, 13, '2014-09-09 07:18:31'),
(240, 13, '2014-09-09 07:18:53'),
(241, 13, '2014-09-09 07:18:54'),
(242, 12, '2014-09-09 07:22:11'),
(243, 12, '2014-09-09 07:22:13'),
(244, 12, '2014-09-09 07:22:20'),
(245, 12, '2014-09-09 07:22:31'),
(246, 12, '2014-09-09 07:25:37'),
(247, 12, '2014-09-09 07:25:38'),
(248, 12, '2014-09-09 07:33:11'),
(249, 12, '2014-09-09 07:33:13'),
(250, 12, '2014-09-09 07:34:38'),
(251, 12, '2014-09-09 07:34:40'),
(252, 12, '2014-09-09 07:36:48'),
(253, 12, '2014-09-09 07:36:50'),
(254, 12, '2014-09-09 07:37:19'),
(255, 12, '2014-09-09 07:37:22'),
(256, 14, '2014-09-09 21:29:22'),
(257, 15, '2014-09-09 23:28:33'),
(258, 15, '2014-09-09 23:28:36'),
(259, 15, '2014-09-09 23:28:39'),
(260, 15, '2014-09-09 23:28:40'),
(261, 15, '2014-09-09 23:28:42'),
(262, 15, '2014-09-09 23:28:45'),
(263, 15, '2014-09-09 23:28:46'),
(264, 15, '2014-09-09 23:28:47'),
(265, 15, '2014-09-09 23:28:49'),
(266, 15, '2014-09-09 23:28:50'),
(267, 15, '2014-09-09 23:28:52'),
(268, 15, '2014-09-09 23:28:54'),
(269, 15, '2014-09-09 23:28:55'),
(270, 15, '2014-09-09 23:28:57'),
(271, 15, '2014-09-09 23:28:59'),
(272, 15, '2014-09-09 23:29:01'),
(273, 15, '2014-09-09 23:29:02'),
(274, 16, '2014-09-10 00:51:43'),
(275, 16, '2014-09-10 00:51:44'),
(276, 16, '2014-09-10 00:53:49'),
(277, 16, '2014-09-10 00:53:51'),
(278, 16, '2014-09-10 00:54:14'),
(279, 16, '2014-09-10 00:54:16'),
(280, 16, '2014-09-10 00:55:20'),
(281, 16, '2014-09-10 00:55:21'),
(282, 16, '2014-09-10 01:10:43'),
(283, 16, '2014-09-10 01:10:44'),
(284, 16, '2014-09-10 01:38:14'),
(285, 16, '2014-09-10 01:38:16'),
(286, 16, '2014-09-10 02:20:39'),
(287, 16, '2014-09-10 02:20:44'),
(288, 16, '2014-09-10 02:20:46'),
(289, 16, '2014-09-10 02:20:47'),
(290, 16, '2014-09-10 02:20:49'),
(291, 16, '2014-09-10 02:20:50'),
(292, 16, '2014-09-10 02:20:51'),
(293, 16, '2014-09-10 02:20:53'),
(294, 16, '2014-09-10 02:20:54'),
(295, 16, '2014-09-10 02:20:55'),
(296, 16, '2014-09-10 02:20:58'),
(297, 16, '2014-09-10 02:21:15'),
(298, 16, '2014-09-10 02:21:16'),
(299, 16, '2014-09-10 02:23:34'),
(300, 16, '2014-09-10 02:23:36'),
(301, 16, '2014-09-10 02:23:37'),
(302, 16, '2014-09-10 02:23:38'),
(303, 16, '2014-09-10 02:23:40'),
(304, 16, '2014-09-10 02:23:41'),
(305, 16, '2014-09-10 02:23:42'),
(306, 16, '2014-09-10 02:23:43'),
(307, 16, '2014-09-10 02:32:18'),
(308, 16, '2014-09-10 02:32:20'),
(309, 16, '2014-09-10 02:32:21'),
(310, 16, '2014-09-10 02:32:22'),
(311, 16, '2014-09-10 02:32:30'),
(312, 16, '2014-09-10 02:32:31'),
(313, 16, '2014-09-10 02:34:42'),
(314, 16, '2014-09-10 02:34:43'),
(315, 16, '2014-09-10 02:42:22'),
(316, 16, '2014-09-10 02:42:24'),
(317, 16, '2014-09-10 03:10:40'),
(318, 16, '2014-09-10 03:14:48'),
(319, 16, '2014-09-10 03:14:54'),
(320, 16, '2014-09-10 03:24:46'),
(321, 16, '2014-09-10 03:24:51'),
(322, 16, '2014-09-10 03:26:26'),
(323, 16, '2014-09-10 03:26:28'),
(324, 16, '2014-09-10 03:54:33'),
(325, 16, '2014-09-10 03:54:36'),
(326, 16, '2014-09-10 03:56:43'),
(327, 16, '2014-09-10 03:56:45'),
(328, 16, '2014-09-10 03:57:16'),
(329, 16, '2014-09-10 03:57:17'),
(330, 16, '2014-09-10 03:58:02'),
(331, 16, '2014-09-10 03:58:04'),
(332, 16, '2014-09-10 03:58:59'),
(333, 16, '2014-09-10 03:59:00'),
(334, 17, '2014-09-10 03:59:21'),
(335, 17, '2014-09-10 03:59:29'),
(336, 18, '2014-09-10 07:28:20'),
(337, 18, '2014-09-10 07:28:25'),
(338, 18, '2014-09-10 07:35:07'),
(339, 18, '2014-09-10 07:35:10'),
(340, 18, '2014-09-10 07:36:05'),
(341, 18, '2014-09-10 07:36:09'),
(342, 19, '2014-09-10 08:37:55'),
(343, 19, '2014-09-10 08:37:59'),
(344, 20, '2014-09-11 09:12:56'),
(345, 21, '2014-09-11 18:33:06'),
(346, 22, '2014-09-12 07:10:05'),
(347, 22, '2014-09-12 07:37:38'),
(348, 22, '2014-09-12 07:37:41'),
(349, 22, '2014-09-12 07:38:11'),
(350, 22, '2014-09-12 07:38:13'),
(351, 22, '2014-09-12 07:38:16'),
(352, 22, '2014-09-12 07:44:36'),
(353, 22, '2014-09-12 07:44:37'),
(354, 22, '2014-09-12 07:44:45'),
(355, 22, '2014-09-12 07:45:20'),
(356, 22, '2014-09-12 07:45:20'),
(357, 22, '2014-09-12 07:45:22'),
(358, 22, '2014-09-12 07:46:55'),
(359, 22, '2014-09-12 08:00:51'),
(360, 22, '2014-09-12 08:02:30'),
(361, 22, '2014-09-12 08:02:33'),
(362, 23, '2014-09-13 01:01:28'),
(363, 23, '2014-09-13 01:01:30'),
(364, 23, '2014-09-13 01:24:06'),
(365, 23, '2014-09-13 01:41:04'),
(366, 23, '2014-09-13 01:41:06'),
(367, 23, '2014-09-13 01:41:09'),
(368, 23, '2014-09-13 01:41:10'),
(369, 23, '2014-09-13 01:41:11'),
(370, 23, '2014-09-13 01:41:13'),
(371, 23, '2014-09-13 01:41:14'),
(372, 23, '2014-09-13 01:41:16'),
(373, 23, '2014-09-13 01:42:59'),
(374, 23, '2014-09-13 01:43:00'),
(375, 23, '2014-09-13 01:58:32'),
(376, 23, '2014-09-13 01:58:33'),
(377, 23, '2014-09-13 02:00:09'),
(378, 23, '2014-09-13 02:00:10'),
(379, 23, '2014-09-13 02:00:35'),
(380, 23, '2014-09-13 02:00:37'),
(381, 23, '2014-09-13 02:01:12'),
(382, 23, '2014-09-13 02:01:13'),
(383, 23, '2014-09-13 02:01:45'),
(384, 23, '2014-09-13 02:01:46'),
(385, 23, '2014-09-13 02:02:02'),
(386, 23, '2014-09-13 02:02:03'),
(387, 23, '2014-09-13 02:02:32'),
(388, 23, '2014-09-13 02:02:33'),
(389, 23, '2014-09-13 02:03:18'),
(390, 23, '2014-09-13 02:03:19'),
(391, 23, '2014-09-13 02:03:49'),
(392, 23, '2014-09-13 02:03:50'),
(393, 23, '2014-09-13 02:04:17'),
(394, 23, '2014-09-13 02:04:18'),
(395, 23, '2014-09-13 02:23:41'),
(396, 23, '2014-09-13 02:23:43'),
(397, 23, '2014-09-13 02:23:45'),
(398, 23, '2014-09-13 02:23:46'),
(399, 23, '2014-09-13 02:23:48'),
(400, 23, '2014-09-13 02:23:50'),
(401, 23, '2014-09-13 02:23:51'),
(402, 23, '2014-09-13 02:24:52'),
(403, 23, '2014-09-13 02:24:53'),
(404, 23, '2014-09-13 02:24:56'),
(405, 23, '2014-09-13 02:24:57'),
(406, 23, '2014-09-13 02:24:58'),
(407, 23, '2014-09-13 02:25:00'),
(408, 23, '2014-09-13 02:25:01'),
(409, 23, '2014-09-13 02:25:02'),
(410, 23, '2014-09-13 02:26:58'),
(411, 23, '2014-09-13 02:26:59'),
(412, 23, '2014-09-13 02:31:12'),
(413, 23, '2014-09-13 02:31:13'),
(414, 23, '2014-09-13 02:45:02'),
(415, 23, '2014-09-13 02:45:03'),
(416, 23, '2014-09-13 02:50:27'),
(417, 23, '2014-09-13 02:50:29'),
(418, 23, '2014-09-13 03:13:44'),
(419, 23, '2014-09-13 03:13:46'),
(420, 23, '2014-09-13 03:13:56'),
(421, 23, '2014-09-13 03:13:57'),
(422, 23, '2014-09-13 03:13:59'),
(423, 23, '2014-09-13 03:18:25'),
(424, 23, '2014-09-13 03:18:27'),
(425, 23, '2014-09-13 03:18:34'),
(426, 23, '2014-09-13 03:18:35'),
(427, 23, '2014-09-13 03:18:36'),
(428, 23, '2014-09-13 03:48:52'),
(429, 23, '2014-09-13 03:48:53'),
(430, 23, '2014-09-13 03:48:58'),
(431, 23, '2014-09-13 03:48:59'),
(432, 23, '2014-09-13 03:49:00'),
(433, 23, '2014-09-13 03:50:47'),
(434, 23, '2014-09-13 03:50:49'),
(435, 23, '2014-09-13 03:50:53'),
(436, 23, '2014-09-13 03:50:55'),
(437, 23, '2014-09-13 03:50:56'),
(438, 23, '2014-09-13 03:59:43'),
(439, 23, '2014-09-13 03:59:44'),
(440, 23, '2014-09-13 03:59:49'),
(441, 23, '2014-09-13 03:59:50'),
(442, 23, '2014-09-13 03:59:51'),
(443, 23, '2014-09-13 04:00:29'),
(444, 23, '2014-09-13 04:00:31'),
(445, 23, '2014-09-13 04:00:37'),
(446, 23, '2014-09-13 04:00:37'),
(447, 23, '2014-09-13 04:00:38'),
(448, 23, '2014-09-13 04:05:23'),
(449, 23, '2014-09-13 04:05:25'),
(450, 23, '2014-09-13 04:05:29'),
(451, 23, '2014-09-13 04:05:30'),
(452, 23, '2014-09-13 04:05:31'),
(453, 23, '2014-09-13 04:06:21'),
(454, 23, '2014-09-13 04:06:21'),
(455, 23, '2014-09-13 04:06:28'),
(456, 23, '2014-09-13 04:06:40'),
(457, 23, '2014-09-13 04:06:41'),
(458, 23, '2014-09-13 04:06:45'),
(459, 23, '2014-09-13 04:06:46'),
(460, 23, '2014-09-13 04:06:47'),
(461, 23, '2014-09-13 04:09:13'),
(462, 23, '2014-09-13 04:09:15'),
(463, 23, '2014-09-13 04:09:19'),
(464, 23, '2014-09-13 04:09:20'),
(465, 23, '2014-09-13 04:09:21'),
(466, 23, '2014-09-13 04:10:18'),
(467, 23, '2014-09-13 04:10:19'),
(468, 23, '2014-09-13 04:10:25'),
(469, 23, '2014-09-13 04:10:26'),
(470, 23, '2014-09-13 04:10:27'),
(471, 23, '2014-09-13 04:18:34'),
(472, 23, '2014-09-13 04:18:36'),
(473, 23, '2014-09-13 04:18:42'),
(474, 23, '2014-09-13 04:18:42'),
(475, 23, '2014-09-13 04:18:43'),
(476, 24, '2014-09-13 08:22:08'),
(477, 24, '2014-09-13 08:22:44'),
(478, 24, '2014-09-13 08:22:48'),
(479, 24, '2014-09-13 08:23:29'),
(480, 24, '2014-09-13 08:31:56'),
(481, 24, '2014-09-13 08:32:33'),
(482, 24, '2014-09-13 08:33:17'),
(483, 24, '2014-09-13 08:34:44'),
(484, 24, '2014-09-13 08:37:15'),
(485, 24, '2014-09-13 08:39:35'),
(486, 24, '2014-09-13 08:41:53'),
(487, 24, '2014-09-13 08:41:54'),
(488, 24, '2014-09-13 08:42:34'),
(489, 24, '2014-09-13 08:45:13'),
(490, 24, '2014-09-13 08:46:00'),
(491, 24, '2014-09-13 08:47:02'),
(492, 24, '2014-09-13 08:48:13'),
(493, 24, '2014-09-13 08:48:34'),
(494, 24, '2014-09-13 08:48:43'),
(495, 24, '2014-09-13 08:49:26'),
(496, 24, '2014-09-13 08:51:35'),
(497, 24, '2014-09-13 08:52:11'),
(498, 25, '2014-09-14 02:15:46'),
(499, 25, '2014-09-14 02:18:21'),
(500, 25, '2014-09-14 02:18:54'),
(501, 25, '2014-09-14 02:19:06'),
(502, 25, '2014-09-14 02:19:16'),
(503, 25, '2014-09-14 02:19:38'),
(504, 25, '2014-09-14 02:20:07'),
(505, 25, '2014-09-14 02:26:11'),
(506, 25, '2014-09-14 02:26:40'),
(507, 25, '2014-09-14 02:27:12'),
(508, 25, '2014-09-14 02:39:14'),
(509, 25, '2014-09-14 02:40:21'),
(510, 25, '2014-09-14 02:46:20'),
(511, 25, '2014-09-14 02:46:53'),
(512, 25, '2014-09-14 02:47:45'),
(513, 25, '2014-09-14 02:48:01'),
(514, 25, '2014-09-14 02:48:30'),
(515, 25, '2014-09-14 02:48:43'),
(516, 25, '2014-09-14 02:49:06'),
(517, 25, '2014-09-14 02:50:07'),
(518, 25, '2014-09-14 02:50:35'),
(519, 25, '2014-09-14 02:50:58'),
(520, 25, '2014-09-14 02:51:54'),
(521, 25, '2014-09-14 02:52:10'),
(522, 25, '2014-09-14 02:52:24'),
(523, 26, '2014-09-14 03:54:40'),
(524, 26, '2014-09-14 03:54:48'),
(525, 26, '2014-09-14 03:55:42'),
(526, 26, '2014-09-14 03:55:45'),
(527, 26, '2014-09-14 03:56:27'),
(528, 26, '2014-09-14 03:57:08'),
(529, 26, '2014-09-14 03:58:05'),
(530, 26, '2014-09-14 03:58:12'),
(531, 26, '2014-09-14 03:58:15'),
(532, 26, '2014-09-14 03:58:24'),
(533, 26, '2014-09-14 03:58:25'),
(534, 26, '2014-09-14 03:58:27'),
(535, 26, '2014-09-14 03:58:33'),
(536, 26, '2014-09-14 03:59:16'),
(537, 26, '2014-09-14 04:01:32'),
(538, 26, '2014-09-14 04:01:42'),
(539, 26, '2014-09-14 04:03:49'),
(540, 26, '2014-09-14 04:03:51'),
(541, 26, '2014-09-14 04:04:21'),
(542, 26, '2014-09-14 04:11:58'),
(543, 27, '2014-09-14 06:25:48'),
(544, 27, '2014-09-14 06:28:12'),
(545, 27, '2014-09-14 06:28:14'),
(546, 27, '2014-09-14 06:28:18'),
(547, 27, '2014-09-14 06:28:18'),
(548, 27, '2014-09-14 06:28:21'),
(549, 27, '2014-09-14 06:30:32'),
(550, 27, '2014-09-14 06:58:27'),
(551, 27, '2014-09-14 07:01:15'),
(552, 27, '2014-09-14 07:02:01'),
(553, 27, '2014-09-14 07:02:31'),
(554, 27, '2014-09-14 07:02:57'),
(555, 27, '2014-09-14 07:03:40'),
(556, 27, '2014-09-14 07:04:02'),
(557, 27, '2014-09-14 07:05:22'),
(558, 27, '2014-09-14 07:05:44'),
(559, 27, '2014-09-14 07:06:34'),
(560, 27, '2014-09-14 07:07:09'),
(561, 27, '2014-09-14 07:07:29'),
(562, 27, '2014-09-14 07:08:05'),
(563, 27, '2014-09-14 07:08:25'),
(564, 27, '2014-09-14 07:08:59'),
(565, 27, '2014-09-14 07:09:13'),
(566, 28, '2014-09-14 08:19:37'),
(567, 28, '2014-09-14 08:19:51'),
(568, 28, '2014-09-14 08:19:53'),
(569, 28, '2014-09-14 08:19:57'),
(570, 28, '2014-09-14 08:19:58'),
(571, 28, '2014-09-14 08:19:59'),
(572, 28, '2014-09-14 08:20:04'),
(573, 28, '2014-09-14 08:20:09'),
(574, 28, '2014-09-14 08:20:35'),
(575, 28, '2014-09-14 08:20:37'),
(576, 28, '2014-09-14 08:23:17'),
(577, 28, '2014-09-14 08:25:31'),
(578, 28, '2014-09-14 08:25:33'),
(579, 28, '2014-09-14 08:26:45'),
(580, 28, '2014-09-14 08:26:47'),
(581, 28, '2014-09-14 08:30:36'),
(582, 28, '2014-09-14 08:30:38'),
(583, 28, '2014-09-14 08:31:19'),
(584, 28, '2014-09-14 08:31:21'),
(585, 28, '2014-09-14 08:31:44'),
(586, 28, '2014-09-14 08:31:46'),
(587, 28, '2014-09-14 08:32:04'),
(588, 28, '2014-09-14 08:32:40'),
(589, 28, '2014-09-14 08:32:41'),
(590, 28, '2014-09-14 08:32:59'),
(591, 28, '2014-09-14 08:33:00'),
(592, 28, '2014-09-14 08:33:10'),
(593, 28, '2014-09-14 08:33:12'),
(594, 28, '2014-09-14 08:33:23'),
(595, 28, '2014-09-14 08:33:24'),
(596, 28, '2014-09-14 08:34:25'),
(597, 28, '2014-09-14 08:34:26'),
(598, 28, '2014-09-14 08:50:13'),
(599, 28, '2014-09-14 08:50:15'),
(600, 28, '2014-09-14 08:50:22'),
(601, 28, '2014-09-14 08:50:24'),
(602, 28, '2014-09-14 08:52:21'),
(603, 28, '2014-09-14 08:52:23'),
(604, 28, '2014-09-14 08:54:41'),
(605, 28, '2014-09-14 08:54:43'),
(606, 28, '2014-09-14 08:55:49'),
(607, 28, '2014-09-14 08:55:51'),
(608, 28, '2014-09-14 08:56:29'),
(609, 28, '2014-09-14 08:56:31'),
(610, 28, '2014-09-14 08:56:38'),
(611, 28, '2014-09-14 08:56:39'),
(612, 29, '2014-09-15 07:06:31'),
(613, 30, '2014-09-15 08:41:01'),
(614, 30, '2014-09-15 08:41:07'),
(615, 30, '2014-09-15 08:43:28'),
(616, 30, '2014-09-15 08:43:29'),
(617, 30, '2014-09-15 08:44:07'),
(618, 30, '2014-09-15 08:44:08'),
(619, 30, '2014-09-15 08:44:17'),
(620, 30, '2014-09-15 08:44:18'),
(621, 30, '2014-09-15 08:44:19'),
(622, 30, '2014-09-15 08:44:27'),
(623, 30, '2014-09-15 08:44:35'),
(624, 30, '2014-09-15 08:44:40'),
(625, 30, '2014-09-15 08:44:50'),
(626, 30, '2014-09-15 08:45:06'),
(627, 30, '2014-09-15 08:45:11'),
(628, 30, '2014-09-15 08:45:30'),
(629, 30, '2014-09-15 08:45:32'),
(630, 30, '2014-09-15 08:46:12'),
(631, 31, '2014-09-15 08:46:24'),
(632, 31, '2014-09-15 08:46:31'),
(633, 31, '2014-09-15 08:46:32'),
(634, 31, '2014-09-15 08:46:38'),
(635, 31, '2014-09-15 08:46:38'),
(636, 31, '2014-09-15 08:46:39'),
(637, 31, '2014-09-15 08:47:06'),
(638, 31, '2014-09-15 08:47:10'),
(639, 31, '2014-09-15 08:49:03'),
(640, 31, '2014-09-15 08:51:32'),
(641, 31, '2014-09-15 08:52:37'),
(642, 31, '2014-09-15 08:53:38'),
(643, 31, '2014-09-15 08:54:17'),
(644, 31, '2014-09-15 08:55:21'),
(645, 31, '2014-09-15 08:58:27'),
(646, 31, '2014-09-15 08:59:18'),
(647, 31, '2014-09-15 09:00:45'),
(648, 31, '2014-09-15 09:01:22'),
(649, 31, '2014-09-15 09:05:16'),
(650, 31, '2014-09-15 09:06:14'),
(651, 31, '2014-09-15 09:07:02'),
(652, 31, '2014-09-15 09:07:04'),
(653, 31, '2014-09-15 09:09:40'),
(654, 31, '2014-09-15 09:09:41'),
(655, 31, '2014-09-15 09:10:18'),
(656, 31, '2014-09-15 09:10:20'),
(657, 31, '2014-09-15 09:11:02'),
(658, 31, '2014-09-15 09:11:04'),
(659, 31, '2014-09-15 09:11:34'),
(660, 31, '2014-09-15 09:11:36'),
(661, 31, '2014-09-15 09:12:34'),
(662, 31, '2014-09-15 09:12:36'),
(663, 31, '2014-09-15 09:13:53'),
(664, 31, '2014-09-15 09:13:55'),
(665, 31, '2014-09-15 09:14:31'),
(666, 31, '2014-09-15 09:14:33'),
(667, 31, '2014-09-15 09:15:59'),
(668, 31, '2014-09-15 09:16:01'),
(669, 32, '2014-09-15 17:11:30'),
(670, 32, '2014-09-15 17:11:36'),
(671, 32, '2014-09-15 17:11:38'),
(672, 32, '2014-09-15 17:11:43'),
(673, 32, '2014-09-15 17:11:43'),
(674, 32, '2014-09-15 17:11:44'),
(675, 32, '2014-09-15 17:11:48'),
(676, 32, '2014-09-15 17:11:51'),
(677, 32, '2014-09-15 17:12:57'),
(678, 32, '2014-09-15 17:12:58'),
(679, 32, '2014-09-15 17:13:05'),
(680, 32, '2014-09-15 17:13:07'),
(681, 32, '2014-09-15 17:13:45'),
(682, 32, '2014-09-15 17:13:46'),
(683, 32, '2014-09-15 17:14:04'),
(684, 32, '2014-09-15 17:14:09'),
(685, 32, '2014-09-15 17:15:39'),
(686, 32, '2014-09-15 17:15:41'),
(687, 32, '2014-09-15 17:16:19'),
(688, 32, '2014-09-15 17:16:21'),
(689, 32, '2014-09-15 17:22:20'),
(690, 32, '2014-09-15 17:22:22'),
(691, 32, '2014-09-15 17:22:43'),
(692, 32, '2014-09-15 17:22:45'),
(693, 32, '2014-09-15 17:23:04'),
(694, 32, '2014-09-15 17:23:07'),
(695, 32, '2014-09-15 17:23:52'),
(696, 32, '2014-09-15 17:23:54'),
(697, 32, '2014-09-15 17:24:27'),
(698, 32, '2014-09-15 17:24:28'),
(699, 32, '2014-09-15 17:24:39'),
(700, 32, '2014-09-15 17:24:41'),
(701, 32, '2014-09-15 17:25:58'),
(702, 32, '2014-09-15 17:26:00'),
(703, 32, '2014-09-15 17:26:40'),
(704, 32, '2014-09-15 17:26:42'),
(705, 32, '2014-09-15 17:34:59'),
(706, 32, '2014-09-15 17:35:00'),
(707, 32, '2014-09-15 17:38:53'),
(708, 32, '2014-09-15 17:38:55'),
(709, 32, '2014-09-15 17:39:24'),
(710, 32, '2014-09-15 17:39:26'),
(711, 32, '2014-09-15 17:41:14'),
(712, 32, '2014-09-15 17:41:15'),
(713, 32, '2014-09-15 17:42:21'),
(714, 32, '2014-09-15 17:42:23'),
(715, 32, '2014-09-15 17:43:11'),
(716, 32, '2014-09-15 17:43:13'),
(717, 32, '2014-09-15 17:43:50'),
(718, 32, '2014-09-15 17:43:52'),
(719, 32, '2014-09-15 17:44:35'),
(720, 32, '2014-09-15 17:44:36'),
(721, 32, '2014-09-15 17:44:45'),
(722, 32, '2014-09-15 17:44:46'),
(723, 32, '2014-09-15 17:45:19'),
(724, 32, '2014-09-15 17:45:21'),
(725, 33, '2014-09-16 09:02:18'),
(726, 33, '2014-09-16 09:03:12'),
(727, 33, '2014-09-16 09:03:17'),
(728, 33, '2014-09-16 09:03:18'),
(729, 33, '2014-09-16 09:03:23'),
(730, 33, '2014-09-16 09:03:24'),
(731, 33, '2014-09-16 09:03:26'),
(732, 33, '2014-09-16 09:03:34'),
(733, 33, '2014-09-16 09:03:35'),
(734, 34, '2014-09-17 17:35:58'),
(735, 34, '2014-09-17 17:36:19'),
(736, 34, '2014-09-17 17:36:21'),
(737, 34, '2014-09-17 17:36:26'),
(738, 34, '2014-09-17 17:36:27'),
(739, 34, '2014-09-17 17:36:30'),
(740, 34, '2014-09-17 17:44:17'),
(741, 34, '2014-09-17 17:45:06'),
(742, 34, '2014-09-17 17:45:14'),
(743, 34, '2014-09-17 17:45:16'),
(744, 34, '2014-09-17 17:53:53'),
(745, 34, '2014-09-17 17:53:55'),
(746, 34, '2014-09-17 17:58:18'),
(747, 34, '2014-09-17 17:58:43'),
(748, 34, '2014-09-17 17:58:44'),
(749, 34, '2014-09-17 17:59:42'),
(750, 34, '2014-09-17 17:59:45'),
(751, 34, '2014-09-17 18:01:30'),
(752, 34, '2014-09-17 18:01:32'),
(753, 34, '2014-09-17 18:05:12'),
(754, 34, '2014-09-17 18:05:14'),
(755, 34, '2014-09-17 18:06:39'),
(756, 34, '2014-09-17 18:06:41'),
(757, 34, '2014-09-17 18:07:25'),
(758, 34, '2014-09-17 18:07:27'),
(759, 34, '2014-09-17 18:09:45'),
(760, 34, '2014-09-17 18:09:47'),
(761, 34, '2014-09-17 18:09:56'),
(762, 34, '2014-09-17 18:11:58'),
(763, 34, '2014-09-17 18:12:00'),
(764, 34, '2014-09-17 18:12:26'),
(765, 34, '2014-09-17 18:12:29'),
(766, 34, '2014-09-17 18:12:30'),
(767, 34, '2014-09-17 18:12:33'),
(768, 34, '2014-09-17 18:12:38'),
(769, 34, '2014-09-17 18:12:40'),
(770, 34, '2014-09-17 18:13:49'),
(771, 34, '2014-09-17 18:13:51'),
(772, 34, '2014-09-17 18:15:53'),
(773, 34, '2014-09-17 18:15:55'),
(774, 34, '2014-09-17 18:18:33'),
(775, 34, '2014-09-17 18:18:35'),
(776, 34, '2014-09-17 18:21:21'),
(777, 34, '2014-09-17 18:21:23'),
(778, 34, '2014-09-17 18:22:39'),
(779, 34, '2014-09-17 18:22:41'),
(780, 34, '2014-09-17 18:23:42'),
(781, 34, '2014-09-17 18:23:44'),
(782, 34, '2014-09-17 18:23:58'),
(783, 34, '2014-09-17 18:24:02'),
(784, 35, '2014-09-18 06:15:09'),
(785, 35, '2014-09-18 06:15:22'),
(786, 35, '2014-09-18 06:15:24'),
(787, 35, '2014-09-18 06:15:27'),
(788, 35, '2014-09-18 06:15:28'),
(789, 35, '2014-09-18 06:15:34'),
(790, 35, '2014-09-18 06:15:42'),
(791, 35, '2014-09-18 06:15:49'),
(792, 35, '2014-09-18 06:15:51'),
(793, 35, '2014-09-18 06:23:52'),
(794, 35, '2014-09-18 06:24:03'),
(795, 35, '2014-09-18 06:24:31'),
(796, 35, '2014-09-18 06:24:33'),
(797, 35, '2014-09-18 06:27:52'),
(798, 35, '2014-09-18 06:27:54'),
(799, 35, '2014-09-18 06:28:56'),
(800, 35, '2014-09-18 06:28:58'),
(801, 35, '2014-09-18 06:29:27'),
(802, 35, '2014-09-18 06:29:29'),
(803, 35, '2014-09-18 06:33:32'),
(804, 35, '2014-09-18 06:33:35'),
(805, 35, '2014-09-18 06:34:14'),
(806, 35, '2014-09-18 06:34:17'),
(807, 35, '2014-09-18 06:34:43'),
(808, 35, '2014-09-18 06:34:45'),
(809, 35, '2014-09-18 06:35:19'),
(810, 35, '2014-09-18 06:35:21'),
(811, 35, '2014-09-18 06:35:28'),
(812, 35, '2014-09-18 06:35:31'),
(813, 35, '2014-09-18 06:40:27'),
(814, 35, '2014-09-18 06:40:29'),
(815, 35, '2014-09-18 06:41:32'),
(816, 35, '2014-09-18 06:41:34'),
(817, 35, '2014-09-18 06:42:39'),
(818, 35, '2014-09-18 06:42:41'),
(819, 35, '2014-09-18 06:43:37'),
(820, 35, '2014-09-18 06:43:39'),
(821, 35, '2014-09-18 06:43:49'),
(822, 35, '2014-09-18 06:43:51'),
(823, 35, '2014-09-18 06:44:18'),
(824, 35, '2014-09-18 06:44:19'),
(825, 35, '2014-09-18 06:45:12'),
(826, 35, '2014-09-18 06:45:14'),
(827, 35, '2014-09-18 06:45:42'),
(828, 35, '2014-09-18 06:45:44'),
(829, 35, '2014-09-18 06:46:32'),
(830, 35, '2014-09-18 06:46:34'),
(831, 35, '2014-09-18 06:47:20'),
(832, 35, '2014-09-18 06:47:22'),
(833, 35, '2014-09-18 06:53:17'),
(834, 35, '2014-09-18 06:53:19'),
(835, 35, '2014-09-18 06:53:38'),
(836, 35, '2014-09-18 06:53:40'),
(837, 35, '2014-09-18 06:54:36'),
(838, 35, '2014-09-18 06:54:38'),
(839, 35, '2014-09-18 07:01:23'),
(840, 35, '2014-09-18 07:01:26'),
(841, 35, '2014-09-18 07:02:07'),
(842, 35, '2014-09-18 07:02:09'),
(843, 35, '2014-09-18 07:03:29'),
(844, 35, '2014-09-18 07:03:31'),
(845, 35, '2014-09-18 07:03:41'),
(846, 35, '2014-09-18 07:03:42'),
(847, 35, '2014-09-18 07:04:30'),
(848, 35, '2014-09-18 07:04:32'),
(849, 35, '2014-09-18 07:04:50'),
(850, 35, '2014-09-18 07:04:52'),
(851, 35, '2014-09-18 07:05:08'),
(852, 35, '2014-09-18 07:05:09'),
(853, 35, '2014-09-18 07:05:34'),
(854, 35, '2014-09-18 07:05:36'),
(855, 35, '2014-09-18 07:06:44'),
(856, 35, '2014-09-18 07:06:46'),
(857, 35, '2014-09-18 07:06:59'),
(858, 35, '2014-09-18 07:07:00'),
(859, 35, '2014-09-18 07:07:47'),
(860, 35, '2014-09-18 07:07:48'),
(861, 35, '2014-09-18 07:08:27'),
(862, 35, '2014-09-18 07:08:29'),
(863, 35, '2014-09-18 07:09:18'),
(864, 35, '2014-09-18 07:09:20'),
(865, 35, '2014-09-18 07:10:02'),
(866, 35, '2014-09-18 07:10:04'),
(867, 35, '2014-09-18 07:10:36'),
(868, 35, '2014-09-18 07:10:37'),
(869, 35, '2014-09-18 07:12:08'),
(870, 35, '2014-09-18 07:12:10'),
(871, 35, '2014-09-18 07:12:33'),
(872, 35, '2014-09-18 07:12:34'),
(873, 35, '2014-09-18 07:13:20'),
(874, 35, '2014-09-18 07:13:22'),
(875, 35, '2014-09-18 07:15:28'),
(876, 35, '2014-09-18 07:15:30'),
(877, 35, '2014-09-18 07:15:49'),
(878, 35, '2014-09-18 07:15:50'),
(879, 35, '2014-09-18 07:16:10'),
(880, 35, '2014-09-18 07:16:13'),
(881, 35, '2014-09-18 07:18:10'),
(882, 35, '2014-09-18 07:18:11'),
(883, 35, '2014-09-18 07:18:31'),
(884, 35, '2014-09-18 07:18:32'),
(885, 35, '2014-09-18 07:18:43'),
(886, 35, '2014-09-18 07:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=887 ;

--
-- Dumping data for table `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://127.0.0.1/magento19/', NULL),
(2, 'http://127.0.0.1/magento19/', NULL),
(3, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(4, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(5, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(6, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(7, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(8, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(9, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(10, 'http://127.0.0.1/magento19/', NULL),
(11, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(12, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(13, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(14, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(15, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(16, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(17, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(18, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(19, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(20, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(21, 'http://127.0.0.1/magento19/', NULL),
(22, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(23, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(24, 'http://127.0.0.1/magento19/index.php/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/index.php/test.html'),
(25, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/'),
(26, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(27, 'http://127.0.0.1/magento19/', NULL),
(28, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(29, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(30, 'http://127.0.0.1/magento19/skin/frontend/base/default/le_sociallogin/css/style.css', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(31, 'http://127.0.0.1/magento19/skin/frontend/base/default/le_sociallogin/js/sociallogin.js', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(32, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(33, 'http://127.0.0.1/magento19/skin/frontend/base/default/le_sociallogin/css/style.css', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(34, 'http://127.0.0.1/magento19/skin/frontend/base/default/le_sociallogin/js/sociallogin.js', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(35, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(36, 'http://127.0.0.1/magento19/skin/frontend/base/default/le_sociallogin/css/style.css', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(37, 'http://127.0.0.1/magento19/skin/frontend/base/default/le_sociallogin/js/sociallogin.js', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(38, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(39, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(40, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(41, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(42, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(43, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(44, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(45, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(46, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(47, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(48, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(49, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(50, 'http://127.0.0.1/magento19/index.php/le_sociallogin/google/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(51, 'http://127.0.0.1/magento19/index.php/le_sociallogin/linkedin/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(52, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(53, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(54, 'http://127.0.0.1/magento19/index.php/le_sociallogin/google/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(55, 'http://127.0.0.1/magento19/index.php/le_sociallogin/linkedin/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(56, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(57, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(58, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(59, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(60, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(61, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(62, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(63, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(64, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(65, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(66, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(67, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(68, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(69, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(70, 'http://127.0.0.1/magento19/index.php/le_sociallogin/google/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(71, 'http://127.0.0.1/magento19/', NULL),
(72, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(73, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(74, 'http://127.0.0.1/magento19/index.php/le_sociallogin/google/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(75, 'http://127.0.0.1/magento19/index.php/le_sociallogin/linkedin/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(76, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(77, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(78, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/connect/?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied&state=e972a2d526cbfda23f0cbb1e293df692', NULL),
(79, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(80, 'http://127.0.0.1/magento19/index.php/le_sociallogin/google/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(81, 'http://127.0.0.1/magento19/index.php/le_sociallogin/linkedin/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(82, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(83, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(84, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(85, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(86, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(87, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(88, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(89, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(90, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(91, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(92, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(93, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(94, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(95, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(96, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(97, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(98, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(99, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(100, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(101, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(102, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(103, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(104, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(105, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(106, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(107, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(108, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(109, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(110, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(111, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(112, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(113, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(114, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(115, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(116, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(117, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(118, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(119, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(120, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(121, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(122, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(123, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(124, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(125, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(126, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(127, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(128, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(129, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(130, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(131, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(132, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(133, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(134, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(135, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(136, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/connect/?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied&state=78123c6fb1e3a150ffdb2051e9e79978', NULL),
(137, 'http://127.0.0.1/magento19/index.php/customer/account/login/', NULL),
(138, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(139, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(140, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/connect/?error=access_denied&error_code=200&error_description=Permissions+error&error_reason=user_denied&state=6c0700f3f7c52eab52de9a99515d3076', NULL),
(141, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(142, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(143, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(144, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(145, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(146, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/index.php/customer/account/login/'),
(147, 'http://127.0.0.1/magento19/index.php/le_sociallogin/facebook/connect/?code=AQAAoeJ2mUrK3VI5IMJ-muBU8O1BlDgWuYp88ExiDVcG52jq3SjcECdgoOvFlaZldTvLkhEdx38SDK1Jw7q-uLVEm_eMJ-dbopoJpsOLJw5domFN7pAVCOtRMBpETYZH7u1AIsjBj83VU5Alk_rxG9vmeLw1hMnS1o6oZoRouXkNc9F', NULL),
(148, 'http://127.0.0.1/magento19/index.php/customer/account/login/', 'http://127.0.0.1/magento19/'),
(149, 'http://127.0.0.1/magento19/index.php/customer/account/', 'http://127.0.0.1/magento19/'),
(150, 'http://127.0.0.1/magento19/index.php/', 'http://127.0.0.1/magento19/index.php/customer/account/'),
(151, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/index.php/customer/account/'),
(152, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/index.php/customer/account/'),
(153, 'http://127.0.0.1/magento19/index.php/catalog/category/view/id/3', 'http://127.0.0.1/magento19/index.php/customer/account/'),
(154, 'http://127.0.0.1/magento19/index.php/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvaW5kZXgucGhwL3Rlc3QuaHRtbA,,/product/1/form_key/W4RANT7CZyFe2kQR/', 'http://127.0.0.1/magento19/index.php/test.html'),
(155, 'http://127.0.0.1/magento19/index.php/checkout/cart/', 'http://127.0.0.1/magento19/index.php/test.html'),
(156, 'http://127.0.0.1/magento19/index.php/checkout/onepage/', 'http://127.0.0.1/magento19/index.php/checkout/cart/'),
(157, 'http://127.0.0.1/magento19/index.php/checkout/onepage/', 'http://127.0.0.1/magento19/index.php/checkout/cart/'),
(158, 'http://127.0.0.1/magento19/index.php/checkout/onepage/', 'http://127.0.0.1/magento19/index.php/checkout/cart/'),
(159, 'http://mg.local/index.php/', 'http://mg.local/index.php/install/wizard/end/'),
(160, 'http://mg.local/catalog/category/view/id/3', 'http://mg.local/index.php/'),
(161, 'http://mg.local/checkout/cart/add/uenc/aHR0cDovL21nLmxvY2FsL3Rlc3QuaHRtbA,,/product/1/form_key/q9WMnt91L3odLahB/', 'http://mg.local/test.html'),
(162, 'http://mg.local/checkout/cart/', 'http://mg.local/test.html'),
(163, 'http://mg.local/checkout/cart/', 'http://mg.local/test.html'),
(164, 'http://mg.local/checkout/onepage/', 'http://mg.local/checkout/cart/'),
(165, 'http://mg.local/', 'http://mg.local/checkout/onepage/'),
(166, 'http://mg.local/firecheckout/', 'http://mg.local/'),
(167, 'http://127.0.0.1/magento19/', NULL),
(168, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(169, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s/product/1/form_key/yjP3apUur4AjVC7s/', 'http://127.0.0.1/magento19/test.html'),
(170, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/test.html'),
(171, 'http://127.0.0.1/magento19/checkout/onepage/', 'http://127.0.0.1/magento19/checkout/cart/'),
(172, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/checkout/onepage/'),
(173, 'http://127.0.0.1/magento19/checkout/onepage/', 'http://127.0.0.1/magento19/checkout/onepage/'),
(174, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/checkout/onepage/'),
(175, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/checkout/cart/'),
(176, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(177, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s/product/1/form_key/1b9PJXGiiPnbE8sA/', 'http://127.0.0.1/magento19/test.html'),
(178, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/test.html'),
(179, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(180, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(181, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(182, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(183, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(184, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(185, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(186, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(187, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(188, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(189, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(190, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(191, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(192, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(193, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(194, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(195, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(196, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(197, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(198, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(199, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(200, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(201, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(202, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(203, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(204, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(205, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(206, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(207, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(208, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(209, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(210, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(211, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(212, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(213, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(214, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(215, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(216, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(217, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(218, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(219, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQBJu47-xs2Ly6D6-PYipvA0E9h5KASzGE_pV-phTmvvCyW-_p-ZBJ-E050Bzmn7-6AvGFu7IGIwpPyMpqjzGgCVYKjht1xuNLbzOUqeYPoyNVSBE68O2CutwYvBf2_bTyiulHfpoGCu4EqHRYcHHb9DOtEl_E7BIuuU3g-oh_MTT3t-3vXGcJ7Q9', NULL),
(220, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(221, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(222, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/checkout/cart/'),
(223, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/checkout/cart/'),
(224, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(225, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s/product/1/form_key/Cm8dVBb4hKKQIzDV/', 'http://127.0.0.1/magento19/test.html'),
(226, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/test.html'),
(227, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(228, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(229, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCN-G3Ecp9EfpNpfAo99ggvNmvC1jnfujvJCQMJCRAXCGYPCxf4f8X8VI9GaHoefp5rucc9vP4yBbkKLIPVBBvVsY5we8WePW4sk4PwR43nv8Wtscx0zCd7MemGjHqLz8LEiHjubn3vOnjR2UPa4vKJVgOZNR5MqG_9VzKr2mJDTKngmLRnwoX1n', 'http://127.0.0.1/magento19/firecheckout/'),
(230, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(231, 'http://127.0.0.1/magento19/firecheckout/index/saveCart/', 'http://127.0.0.1/magento19/firecheckout/'),
(232, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/checkout/cart/'),
(233, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(234, 'http://127.0.0.1/magento19/', NULL),
(235, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(236, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s/product/1/form_key/RwBluXE1cKYqjsTg/', 'http://127.0.0.1/magento19/test.html'),
(237, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/test.html'),
(238, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(239, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(240, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(241, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(242, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(243, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(244, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQB0lk-VgG9NOLkwHFOJypHT_abbE15-XzGHxjJjLt19ysykh5Be2uD1WfBhNgdp9uFe4iQdXvSnfQJXj6o0MS_qVgFwDlNQZ9Q78EuwZ9Le3Lhm6IJlJRF5kjdhstVHXzi8QbshBdXQCmqDhQmpa3nvhUrl4X1aS1HXviTYUzfMGOkQjh0SH1KgC', 'http://127.0.0.1/magento19/firecheckout/'),
(245, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(246, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(247, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(248, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(249, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(250, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(251, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(252, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(253, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(254, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(255, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/firecheckout/'),
(256, 'http://127.0.0.1/magento19/', NULL),
(257, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(258, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(259, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQBDL9Sl5hNpjDE8hvsCjFITMJKIF_djjnW4EgQ9UN3YD6jKtLR_YOirgVtCy3i2k3obSSbjJub5_MOKR23N2C5qL2wNya0-sfAh4ff7J2vtJe7oTr85Bk65Cys6xG9ZpA7LF7cLcYlhNnksByMsQeoYOwIY7K1q8n6RFOmoHmMgLY6Uqa9Ls_O2c', 'http://127.0.0.1/magento19/customer/account/login/'),
(260, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(261, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(262, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQD_8BaCUdCAvF4ImVJQyIVGuQD_qgxbvkp9P_k1769qK2wGbYYxpgzBHzSy5XpmQpDK-PENL3UeF8m3ud8_bYokzuJz5g9Le8LuWP-vnMt6Bu6ZGE7w1pN31tvcdO1Qkp9UggDckNmxJkkpa_HGk5VYb8mOB0bo90Sxcmp-yJdOBKf8RhwfBxP_-', 'http://127.0.0.1/magento19/customer/account/login/'),
(263, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(264, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(265, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQAypuqr9sIoogzmKic0ki8v2PqV6lcltob4ltXAorUKZ-lL4m1gULC8UjcGy5su0Qejno3c41m7VHGMmohOMCfMeXxVGP_M3ZTonlwYT1Jzd0u2_M3BNCYrKPaMxhE32SWRaSZ4rfnh4dEvblXOe-mGUeprSUHLoaR7mmgNv2ydeWef5gr95QRBO', 'http://127.0.0.1/magento19/customer/account/login/'),
(266, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(267, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(268, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQBtynBWHuAjfW_RmuG9AuCrGGRLxXJ1J1KAthD_OqZW3ZyMVxUKyV3CUprDHTljT9QD39zD7jP7KCJw-54g-CHAv5ze-3Fhu-JAaIgQXfru5V9rYylT-UTMfD5rF8pSB1y54XZ_G6kz3HFqpCAHfscZChjbJ8JHLXy2qcx9PygiiuawGQ0uCTbBf', 'http://127.0.0.1/magento19/customer/account/login/'),
(269, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(270, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(271, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDS3XgpSLSTqRh280yBCVget3bm3XXqKWySZ4B-TQ4e_GcwSz05BMJ5ysAKBNl9IZwlGyiHAgKexx-bjiEv9fcm8-0myYBt0BtGjp_IPw-px5o8Vj9BAEdFA8rv9wsTytPanjuclxmoJL_9z94tzeyqCh4LfnoaAVSxIhghZrjmPCtfhXZq9lNHk', 'http://127.0.0.1/magento19/customer/account/login/'),
(272, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(273, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(274, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(275, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(276, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(277, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(278, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(279, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(280, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(281, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(282, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(283, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(284, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(285, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(286, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(287, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(288, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?error=invalid_scope&error_description=Unsupported+scope%3A+%27list_friends%27.+Supported+scopes%3A+email+manage_notifications+manage_pages+offline_access+publish_actions+read_friendlists+rea', 'http://127.0.0.1/magento19/customer/account/login/'),
(289, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(290, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(291, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?error=invalid_scope&error_description=Unsupported+scope%3A+%27list_friends%27.+Supported+scopes%3A+email+manage_notifications+manage_pages+offline_access+publish_actions+read_friendlists+rea', 'http://127.0.0.1/magento19/customer/account/login/'),
(292, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(293, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(294, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?error=invalid_scope&error_description=Unsupported+scope%3A+%27list_friends%27.+Supported+scopes%3A+email+manage_notifications+manage_pages+offline_access+publish_actions+read_friendlists+rea', 'http://127.0.0.1/magento19/customer/account/login/'),
(295, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(296, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(297, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(298, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(299, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(300, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(301, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?error=invalid_scope&error_description=Unsupported+scope%3A+%27friends%27.+Supported+scopes%3A+email+manage_notifications+manage_pages+offline_access+publish_actions+read_friendlists+read_ins', 'http://127.0.0.1/magento19/customer/account/login/'),
(302, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(303, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(304, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?error=invalid_scope&error_description=Unsupported+scope%3A+%27friends%27.+Supported+scopes%3A+email+manage_notifications+manage_pages+offline_access+publish_actions+read_friendlists+read_ins', 'http://127.0.0.1/magento19/customer/account/login/'),
(305, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(306, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(307, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(308, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(309, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?error=invalid_scope&error_description=Unsupported+scope%3A+%27friends%27.+Supported+scopes%3A+email+manage_notifications+manage_pages+offline_access+publish_actions+read_friendlists+read_ins', 'http://127.0.0.1/magento19/customer/account/login/'),
(310, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(311, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(312, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(313, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(314, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(315, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(316, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(317, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/customer/account/login/'),
(318, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(319, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(320, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(321, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(322, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(323, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(324, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(325, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(326, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(327, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(328, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(329, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(330, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(331, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(332, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(333, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(334, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(335, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(336, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(337, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(338, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(339, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(340, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(341, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(342, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(343, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(344, 'http://127.0.0.1/magento19/', NULL),
(345, 'http://127.0.0.1/magento19/', NULL),
(346, 'http://127.0.0.1/magento19/', NULL),
(347, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(348, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(349, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCBr55xUC73zTkBXt9D91yCvqG3VUvMNUkq3UCM84cYEr_sRUB0Cs3b-wvIVKIFOz2Y0zZly-wM7BHtDIDqizt2WtIQz2mA0WyOpsIizTxXKFTFU_-rwgpaI2rnJu8l2hMlgm7xFm4lIjJ5cqrcZTLH3Qa__h-RZzTm24ePerKN1qCO0HXDSLKAV', 'http://127.0.0.1/magento19/customer/account/login/'),
(350, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(351, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/'),
(352, 'http://127.0.0.1/magento19/customer/account/logout/', 'http://127.0.0.1/magento19/customer/account/'),
(353, 'http://127.0.0.1/magento19/customer/account/logoutSuccess/', 'http://127.0.0.1/magento19/customer/account/'),
(354, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/customer/account/logoutSuccess/'),
(355, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(356, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(357, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(358, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/customer/account/login/'),
(359, 'http://127.0.0.1/magento19/', NULL),
(360, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(361, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(362, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(363, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(364, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/customer/account/login/'),
(365, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(366, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(367, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQAwitUdSdiTZEU4Jza3hHYIN_XG71yxVQ2ziKSx2ZIHJlPQ3y4MyT4YtQuOp4QSyGfevdSrK3PGa2943zPskFYj9D64zHDUfhttwbet30qa-5MMNSudThbvHFCtMPeuzmd0yNmvXVs-oUqK5Ad7kGGKZwOF_DYy7_0cfZ7TCLggGqCpOAnMIRrSx', 'http://127.0.0.1/magento19/customer/account/login/'),
(368, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(369, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(370, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDZmU3DLXNIjEO-tc0BoI9ygBT2j_Th3Yg4wzwPuWC6XPnHlUlEPo1EuCtvWIe2LEgO7vm98sM1S5SN4dJ1W8hRrr9MxnTvbguI8AzG7xnnRbfcIfh0NkxgK2XvR-t86Rg65MGUZ1ykChr8pZ3w3SFjU16nTkxKVU002xTJB7dZKtdr_qDrQuDpL', 'http://127.0.0.1/magento19/customer/account/login/'),
(371, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(372, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(373, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(374, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(375, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(376, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(377, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(378, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(379, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(380, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(381, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(382, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(383, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(384, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(385, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(386, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(387, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(388, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(389, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(390, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(391, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(392, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(393, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(394, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(395, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(396, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(397, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCmnwmzRUQbRZKVqDhhLXVj4Ftp9x3J7GimbQqP74pf1A7vuAoFmMNrPBxw16Vu9OBjZpF3AmEkWJDY4tB_DRnJxMnzsaYyoHxDE4CoQuFZx-yjGQRqWTom09bc8gFDzojHmvcZHlaiSzjci7oYLxFoVz8gtSW4r2S5WOuysblvT8xStHsMIEoNT', 'http://127.0.0.1/magento19/customer/account/login/'),
(398, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(399, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(400, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQA6X8IltuES17L-1NVgTPHJhAPhKVDkSMIV-CynxdJR4m7v-Vc-AVKMirbBIDG_QQO_dMUEJ5El6waSYH28vMMxgbWjQgPmJrmqfGhxulVyYSsXXlwpwsSfIB1NgfKnRJYce3LiY6f9N6dj1Un2GhosWHrV4Iow-3IhUzXvRnOXuL-ohz1QIaJAk', 'http://127.0.0.1/magento19/customer/account/login/');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(401, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(402, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(403, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(404, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDwb_vS2QByOH0JxwLqTQUrDXr_iDvZmJc09wmQ-lSvOqp8PAVGaCeV47cUGlHpop0UQBJwUBTS9sXoOPQC0sglMwkoRjHoXywuR8KLxwDWSRHYx5SB2fxCmFCuLzMJAZAXvCA-VVgiMu98GfY9lbB9DSeDvFpob3fA73BMDgN7i6bZ8hyNsjHr0', 'http://127.0.0.1/magento19/customer/account/login/'),
(405, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(406, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(407, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQALHtTMMNgxtDKx3JazogSquJjDT8af63n4Z4k-v0_pciMIMU6tPvgjcD3wn6gfpCVXIQEuGn5-ScSYCTLcCqQ5968IFTz79exlM7Tx9yDkXnrQKlN_V_O7mVEPI4F53F8t_fI9ZVO9oT-hzIZ4fdrVIEs-iP6s_OoqFuSXbnQKzZ3CfGZGWu8TN', 'http://127.0.0.1/magento19/customer/account/login/'),
(408, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(409, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(410, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(411, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(412, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(413, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(414, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(415, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(416, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(417, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(418, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(419, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(420, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQABK5AKUq-hbD4mmAoAqC43eoH_2pMeSyC549qoWhEWXtk-IqCTW0NjhdCiepjFXU2GkRUb2pUH3HsN7JmyGoZ2mjrd-tTFPb932eZPClsZwAqZjqR7c1wYkwl4rTqzJmjwWJ6Ww8Jr2d5cl4sQH5vxMdmg42oLhgKuq7t9QBEZqAwdHa7bJXySo', 'http://127.0.0.1/magento19/customer/account/login/'),
(421, 'http://127.0.0.1/magento19/customer/account/login/', NULL),
(422, 'http://127.0.0.1/magento19/customer/account/', NULL),
(423, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(424, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(425, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQD-SmE_jOH-uipyjpO8G14Fc-2xx_42vXPk0c4lYxYCC-NzmzFUO66HWyZ0QpmKH6rWgCrqS2bEFbP0FGJqB6VWTFoBPZKvLYjkuukmv-Tvi-RwI9uNeYhMSQhpwhiPAB6_g4BvUHWtdmZwEE5i4sI7jVCaHxP0OZB6BAUhQsvrmhrGVLYijaXj3', 'http://127.0.0.1/magento19/customer/account/login/'),
(426, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(427, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(428, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(429, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(430, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQB35vyh2qPEJNgSSVIRPkDdc3g2JulSwRK945E0jMwNq0giCx5EM5gOgbOg0p-HaSfEFNDYzancA_TfDReifS2XGb6BO5UTyutfAAJrg7R-Dk0j493knVXo60Cl13xXXaJMmOnb9G3rldrOxdQeaavBaAv97Z_QfFJfPF1s1ahyvrieKZbg0bwyF', 'http://127.0.0.1/magento19/customer/account/login/'),
(431, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(432, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(433, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(434, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(435, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCpmcK3fhZfan7l6MURijLifG1FVVwocgfoggPQ8GWfEWzC3_UhKmpNS4gq6wrRtLvGwtSlCwzgchiKaw5Izm6yQLMHH3sSDmntyETFDUH8zYRNfsg5_J6YLrBwGx3jqVm8g_Sqo1VuXWSPo-vIo0q7em7mTRQzQdYmYX-N0W5L6oETE0_L0O0X6', 'http://127.0.0.1/magento19/customer/account/login/'),
(436, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(437, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(438, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(439, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(440, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQAUx6uHMtSjve4DQCvW0e0nBmkquRk4nCXSbDewLLaBc8Ah-A8j7-HGjHwFpJ-mdq-gIehPHQJTsTLpMn7Q4qB0X9tZ3VZb0-ScfUXpJpeMpkFO-fwq0AyloWDxuHFsKRz8d5_i81W43zsMn5ntFV8HQdJ_aEQ-iLlZLvNFxBMqtdGsWbtzuA45G', 'http://127.0.0.1/magento19/customer/account/login/'),
(441, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(442, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(443, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(444, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(445, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQBIbmWuOEe0Q__ZJT53n2EmN7p6Xlu2YcEGDxXCAqTXAYlSyiOTFsEO7cJmi3raz9FASkHo6zf7-s7mRI4zy3g_mR7zhw9Qerr8iWWDA6khGrhQZ9C9PF-VBaZlyFQcNH9OEsZsTJyacJMFqyT4W6p9DG6WC1YAUUkpInXrnWuis_eeH123IaCro', 'http://127.0.0.1/magento19/customer/account/login/'),
(446, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(447, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(448, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(449, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(450, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCQ7A6llC5skv_B9EU2_LVn8XVvQOLeh7ba6FXvwS0H8I1IeGKFyjwj7S8I7xyq8UINV-rgnwknxtJfyWNCZXLvob0EZw87tB78gwzpNfdc2bfzEM7tP1lmn1soy1K8q2UYNx4u-F0ER6CBg5tYvChKU4yq-AaxRbkGk_w4NWtCM45PJKKp6jPda', 'http://127.0.0.1/magento19/customer/account/login/'),
(451, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(452, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(453, 'http://127.0.0.1/magento19/customer/account/logout/', 'http://127.0.0.1/magento19/customer/account/'),
(454, 'http://127.0.0.1/magento19/customer/account/logoutSuccess/', 'http://127.0.0.1/magento19/customer/account/'),
(455, 'http://127.0.0.1/magento19/', 'http://127.0.0.1/magento19/customer/account/logoutSuccess/'),
(456, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(457, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(458, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQB0BuPP3sZkg8sN1tdDZM4wx-csUUDehkHxKTUYK1HtGI6___hZU-78vKPYH4cnqnRJ8T1RpXTMo6paHKZsQ8E5Wis6ExnRxbtN09rb-dpletK5nxqyBPQZ1Peit6xXs0csc27pzZilI9kCvaBhi4kdBCFhVZjdo5ZOLCJV_XYyzVhIDswocEl97', 'http://127.0.0.1/magento19/customer/account/login/'),
(459, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(460, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/'),
(461, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(462, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(463, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCx15x3wxDk_xU2RDda0-BDAsUSTl78dslcgz4a37TcOtLfIUk3uay38F4K6i7maPtdg9VLa-pur4bbgfcZbVuJd9wkRUOVLcsrRmkWqGY7qaQ8qmWKUBvds1-A8At8IEZXB-wY2ODsbcAUkAkcdEyqoVZjNtKxHftan3BOLOEQbdAJARPjWXfjW', 'http://127.0.0.1/magento19/customer/account/login/'),
(464, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(465, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(466, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(467, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(468, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQD_Hojd1LKT8lL6Dhye8zfbugFWDO-fdUNJvdPHbapfFGApLwAzwoem1VloNGVbXQG9RW44XsTWZgR_yrrWgTOdW44J-Xx0MKELX2Ld69j8OrFhn2Cvb6Q5wIQjPtf0cnXTHYnm1QqUgbgk8R0i4OyhHstAvZok6csb36g2Yu-FmFb-GPfIBofdG', 'http://127.0.0.1/magento19/customer/account/login/'),
(469, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(470, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(471, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(472, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(473, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDq03i9vIKqMbr5bmgw_rCZ4LRq-trxlQJNB-_EjGR2g_xlpRQcMREjAZIcNk9Xzokj3zPFdWdB_E7GbOF7qu97w9jL_WxxG-L5mwDjrM7pPRhLWTlyiBxzvdP3dy0QtyfOzPtMLl0kS6Y4BaCa7-6FArANK3OwZODBFA2SvDbmqZNOjvJHn86hb', 'http://127.0.0.1/magento19/customer/account/login/'),
(474, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/'),
(475, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/'),
(476, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(477, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s/product/1/form_key/cqC6vXg2HBjnwB8U/', 'http://127.0.0.1/magento19/test.html'),
(478, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(479, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(480, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(481, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(482, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(483, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(484, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(485, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(486, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(487, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(488, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(489, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(490, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(491, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(492, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(493, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(494, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(495, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(496, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(497, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(498, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(499, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(500, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(501, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(502, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(503, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(504, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(505, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(506, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(507, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(508, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(509, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(510, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(511, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(512, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(513, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(514, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(515, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(516, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(517, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(518, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(519, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(520, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(521, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(522, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(523, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(524, 'http://127.0.0.1/magento19/sociallogin/getUserFriendsAction/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(525, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(526, 'http://127.0.0.1/magento19/le_sociallogin/getUserFriendsAction/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(527, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(528, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(529, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(530, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(531, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(532, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDwNweuFCVjeYDKSbkgS_RVKiPKUnKm7aRsJovnfCmHX4iltTZSqF5JdOd-jizRVX0vssN_RUXPy1mzozWKNEsu1PR3harBDJWulBcRjcFirbZfFIqiHQx30t1MMVpaHHIQstEkqdn1ezQH_66UizN0pz5aAXlNSH_JT_hsGlgoeFnPkkcFHIxL-', 'http://127.0.0.1/magento19/customer/account/login/'),
(533, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(534, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(535, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(536, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(537, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(538, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(539, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(540, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(541, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(542, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(543, 'http://127.0.0.1/magento19/', NULL),
(544, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(545, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(546, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQB-_K0pMLm61oy3SyK1oejA3dGIKjbKlwtc6gZj0qFATNBhdAafssbIFpPbC_8aX-KMx-PYmuxhgpZBkP9NqvOwK2aUHYH_f_fXaWuOn4qFkoD2wS9CZ-VMIihm-AToPK5GyTqoMwtcY-O0i-e5jDgAWTugUsXuPcETKWa_A21XJZu8W-YxfY90_', 'http://127.0.0.1/magento19/customer/account/login/'),
(547, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(548, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/'),
(549, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(550, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(551, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(552, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(553, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(554, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(555, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(556, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(557, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(558, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(559, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(560, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(561, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(562, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(563, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(564, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(565, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(566, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(567, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(568, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(569, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQAcm0rhyhMiXEbfUzS2L9zvC69YiljBnqCs_tyhkD6Chz-fTz6ea5dRF_8ubI6nbt7PCsQHStMEBhI385KCskWgHM7D3AJSAEV7Ta6fEwVmXDsty8qtrK06NDfGgrc0NC8wScjharP-QrUDcwjXVXgUWyJj_SYs2bhWnwpLmUdWrPHigvTGwQ0Bw', 'http://127.0.0.1/magento19/customer/account/login/'),
(570, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(571, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(572, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(573, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(574, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(575, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(576, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(577, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(578, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(579, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(580, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(581, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(582, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(583, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(584, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(585, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(586, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(587, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(588, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(589, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(590, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(591, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(592, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(593, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(594, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(595, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(596, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(597, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(598, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(599, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(600, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(601, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(602, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(603, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(604, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(605, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(606, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(607, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(608, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(609, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(610, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(611, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(612, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(613, 'http://127.0.0.1/magento19/', NULL),
(614, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(615, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(616, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(617, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(618, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(619, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDeZSvBmvxicB77FXXoJ_y0g8CJGkXfHYURx1-MG-DOzxFaooI9oXEFz4rsrnqI_gkGKpdVzcWafM2QP33dv7QoRr0Tv9FWA32q87BrGGz-ZcBilGJ6SXYwxBMZ4lmwRqNaACB395WYTtwTbIyKO16l9gfOaa_-QbJvMVd7P61_weD9qh_yCF3nQ', 'http://127.0.0.1/magento19/customer/account/login/'),
(620, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/customer/account/login/'),
(621, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/customer/account/login/'),
(622, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(623, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s/product/1/form_key/f7wuUi4MwsT7aKWm/', 'http://127.0.0.1/magento19/test.html'),
(624, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/test.html'),
(625, 'http://127.0.0.1/magento19/firecheckout/', 'http://127.0.0.1/magento19/checkout/cart/'),
(626, 'http://127.0.0.1/magento19/firecheckout/index/saveBilling/', 'http://127.0.0.1/magento19/firecheckout/'),
(627, 'http://127.0.0.1/magento19/firecheckout/index/saveBilling/', 'http://127.0.0.1/magento19/firecheckout/'),
(628, 'http://127.0.0.1/magento19/firecheckout/index/saveOrder/form_key/f7wuUi4MwsT7aKWm/', 'http://127.0.0.1/magento19/firecheckout/'),
(629, 'http://127.0.0.1/magento19/checkout/onepage/success/', 'http://127.0.0.1/magento19/firecheckout/'),
(630, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/checkout/onepage/success/'),
(631, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(632, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(633, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(634, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCLbR1Et7ZPza0lFQsFH2P3TqhchmbQ6ZMxiCf0BZaYhrk--9OzXnujdSJvJsAP6HVnB5-uzOX-t6BTjWYnhUiCoDZ44tfYU0mI680e8pRYBxpbcI2foYuknxmWX53wtyE85o-JKw0t5xdw0u6cOt2QR1ZW-2E3p0IJKsGywuZ5gcRi6a4zIHH7N', 'http://127.0.0.1/magento19/customer/account/login/'),
(635, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(636, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(637, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(638, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(639, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(640, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(641, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(642, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(643, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(644, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(645, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(646, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(647, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(648, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(649, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(650, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(651, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(652, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(653, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(654, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(655, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(656, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(657, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(658, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(659, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(660, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(661, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(662, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(663, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(664, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(665, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(666, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(667, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(668, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(669, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(670, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(671, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(672, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQBY31G_Jb1y9rEkLEpotTvOhymtZDwH6CnjVptD6JgVtdkxf5d2bHqCg_0L1-uorB_Q_tJ-W9AL-fjIqFTNJsPxNwKWf-fqUx-vsLe4d5LSAGlI3jb8evPgTJ8UQgR9XZzCb3wGK1e-C6bS46ve-lpjPz44_78WKupoi4oL5vvZUNyBAeaI0q3UT', 'http://127.0.0.1/magento19/customer/account/login/'),
(673, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(674, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(675, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(676, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(677, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(678, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(679, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(680, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(681, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(682, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(683, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(684, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(685, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(686, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(687, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(688, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(689, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(690, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(691, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(692, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(693, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(694, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(695, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(696, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(697, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(698, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(699, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(700, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(701, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(702, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(703, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(704, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(705, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(706, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(707, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(708, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(709, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(710, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(711, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(712, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(713, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(714, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(715, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(716, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(717, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(718, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(719, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(720, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(721, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(722, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(723, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(724, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(725, 'http://127.0.0.1/magento19/', NULL),
(726, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/'),
(727, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test.html'),
(728, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(729, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQDNcqOTkUtBAMYhbb6tHfooYvmGwc8n8kOydCliKpXdMa_rZ4zp9EKbsQtlgS7uP7vUjTP1_ZLeItxdETITBks_2iYIAVXHpBL3koEQrmm6WOl2dchzML7eVZVQ4YLycH87aH4cSHcUizFUK6g-A25U1UQGH4JoYqWA6xJJnNGUBoVn2WEF12iuJ', 'http://127.0.0.1/magento19/customer/account/login/'),
(730, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/test.html'),
(731, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/test.html'),
(732, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(733, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(734, 'http://127.0.0.1/magento19/', NULL),
(735, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(736, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(737, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQCqVSk9SDcu7BV957dytffvYQ5sN3FLmh40gcAI9gRuIU0F1o372pQ2nFI2IsCDWnwBkDQllCeDqnVkvNvX1P8KBlyRInc62BepH2GA9Qr_V9LDm4HFFjJWWbqVg7n8JFHTTyzVa9bBkiweUdYPEeQpYyt8Tla3pGazlpYwSmK69HViWchrO0obC', 'http://127.0.0.1/magento19/customer/account/login/'),
(738, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(739, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/'),
(740, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/'),
(741, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(742, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(743, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(744, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(745, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(746, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(747, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(748, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(749, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(750, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(751, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(752, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(753, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(754, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(755, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(756, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(757, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(758, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(759, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(760, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(761, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC9uZXctcHJvMS5odG1s/product/1/form_key/ioCrglosKdgoSIYR/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(762, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(763, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(764, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(765, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(766, 'http://127.0.0.1/magento19/checkout/cart/add/uenc/aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC9uZXctcHJvMS5odG1s/product/1/form_key/ioCrglosKdgoSIYR/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(767, 'http://127.0.0.1/magento19/checkout/cart/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(768, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(769, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(770, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(771, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(772, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(773, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(774, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(775, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(776, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(777, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(778, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(779, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(780, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(781, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(782, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', NULL),
(783, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(784, 'http://127.0.0.1/magento19/', NULL),
(785, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(786, 'http://127.0.0.1/magento19/le_sociallogin/facebook/request/mainw_protocol/http/', 'http://127.0.0.1/magento19/customer/account/login/'),
(787, 'http://127.0.0.1/magento19/le_sociallogin/facebook/connect/?code=AQA1IVJW-b83qA461Q3CLI0QU2DC0md_l_-C38LN1aNfizmoU405LOuR9CH2Lcfb-Ty9mzTE9SZz66JXlG0P5ebMGHvcZ6z8uZaHuZHvFDzqjFgycMBX18BDcMnet27DgMpvHfG29Cas3EC70DX808MG-nADN8zyabKoGJwd08T8C4Vc2-EVxO2e2', 'http://127.0.0.1/magento19/customer/account/login/'),
(788, 'http://127.0.0.1/magento19/customer/account/login/', 'http://127.0.0.1/magento19/'),
(789, 'http://127.0.0.1/magento19/customer/account/', 'http://127.0.0.1/magento19/'),
(790, 'http://127.0.0.1/magento19/catalog/category/view/id/3', 'http://127.0.0.1/magento19/customer/account/'),
(791, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(792, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(793, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(794, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(795, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(796, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(797, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(798, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(799, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(800, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(801, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(802, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(803, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(804, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(805, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(806, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html');
INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(807, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(808, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(809, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(810, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(811, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(812, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(813, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(814, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(815, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(816, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(817, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(818, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(819, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(820, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(821, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(822, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(823, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(824, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(825, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(826, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(827, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(828, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(829, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(830, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(831, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(832, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(833, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(834, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(835, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(836, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(837, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(838, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(839, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(840, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(841, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(842, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(843, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(844, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(845, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(846, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(847, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(848, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(849, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(850, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(851, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(852, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(853, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(854, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(855, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(856, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(857, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(858, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(859, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(860, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(861, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(862, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(863, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(864, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(865, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(866, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(867, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(868, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(869, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(870, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(871, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(872, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(873, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(874, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(875, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(876, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(877, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(878, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(879, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(880, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(881, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(882, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(883, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(884, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html'),
(885, 'http://127.0.0.1/magento19/catalog/product/view/id/1/category/3', 'http://127.0.0.1/magento19/test.html'),
(886, 'http://127.0.0.1/magento19/le_sociallogin/facebook/getUserFriends/', 'http://127.0.0.1/magento19/test/new-pro1.html');

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, 'afrrjju5qc6mvhd0h6s94onjb5', '2014-09-01 02:22:36', '2014-09-01 04:15:05', 9, 1),
(2, 'gmftpgacvis295lti9l9vnmaa7', '2014-09-01 05:24:47', '2014-09-01 05:35:13', 20, 1),
(3, 't4o234nfqg0r4ictg4munkvqr2', '2014-09-02 08:55:40', '2014-09-02 08:55:53', 24, 1),
(4, '4kk85eh81n0eek2h5o249hk3s6', '2014-09-05 08:33:48', '2014-09-05 09:28:29', 70, 1),
(5, 'lpf1106985647qf4jeucfr3ke7', '2014-09-05 08:36:39', '2014-09-05 08:36:40', 27, 1),
(6, 'mbl0j7u8n1ov7kdisod1kks1v3', '2014-09-07 06:52:43', '2014-09-07 08:02:47', 140, 1),
(7, 'cbvdhdno1ldtr18eih30eptc15', '2014-09-07 08:01:04', '2014-09-07 08:01:05', 137, 1),
(8, '6v16t1vo42k5qgl18c08i1hmi3', '2014-09-07 16:48:25', '2014-09-07 17:34:19', 158, 1),
(9, '0o1i62gjor4d664mgfadnj1771', '2014-09-08 23:51:46', '2014-09-08 23:59:12', 166, 1),
(10, 'vhmku3rjvu74d50g27q1bu04c5', '2014-09-09 02:32:29', '2014-09-09 02:33:04', 172, 1),
(11, 'i82pd611jsp5ct9mabfbttotg7', '2014-09-09 02:44:15', '2014-09-09 03:32:19', 220, 1),
(12, 'rdm55jli6g2c93usv8hiap1be7', '2014-09-09 07:06:02', '2014-09-09 07:37:22', 255, 1),
(13, '1cjvddk3h9o26bln4lqb93cub1', '2014-09-09 07:18:00', '2014-09-09 07:18:54', 241, 1),
(14, 'v45r13j8ia1a8bchhurmabl5v6', '2014-09-09 21:29:14', '2014-09-09 21:29:21', 256, 1),
(15, 'dfg7ck09gdub5rd0k4sv9a4q22', '2014-09-09 23:28:31', '2014-09-09 23:29:02', 273, 1),
(16, 'r2378a18k82nqj3rba1qlipjq5', '2014-09-10 00:51:42', '2014-09-10 03:59:00', 333, 1),
(17, 'j2eoqebri46i8ml5rp7pabr1j2', '2014-09-10 03:59:20', '2014-09-10 03:59:29', 335, 1),
(18, 'ijqg90sndb1tumumu18bmgbbj1', '2014-09-10 07:28:10', '2014-09-10 07:36:08', 341, 1),
(19, 'h9p3hq272t8r0akk8jmn29uqt6', '2014-09-10 08:37:54', '2014-09-10 08:37:59', 343, 1),
(20, 'rnqgag942fl3vj7pal2joolut2', '2014-09-11 09:12:49', '2014-09-11 09:12:56', 344, 1),
(21, 'c659amfs1gj1rlll8qa534qgb6', '2014-09-11 18:32:54', '2014-09-11 18:33:06', 345, 1),
(22, '8cilsgdaun6hpbtp50ihcsb3r1', '2014-09-12 07:10:00', '2014-09-12 08:02:33', 361, 1),
(23, 'u83fdi7ft7ciggv2cn9i4pd707', '2014-09-13 01:01:25', '2014-09-13 04:18:43', 475, 1),
(24, 'ub2p27nmbjg0jc0eho3ui49d44', '2014-09-13 08:22:01', '2014-09-13 08:52:11', 497, 1),
(25, '3sd2vq8rvbolmh3van3k7k1695', '2014-09-14 02:15:40', '2014-09-14 02:52:24', 522, 1),
(26, 'plajssj18mu0ov556fp6pjq5v1', '2014-09-14 03:54:31', '2014-09-14 04:11:58', 542, 1),
(27, 'r8eoo0l2k2h43f2kpr3sr8dp36', '2014-09-14 06:25:38', '2014-09-14 07:09:13', 565, 1),
(28, '35hqa1ag5pibqkoudsvfgbem50', '2014-09-14 08:19:36', '2014-09-14 08:56:39', 611, 1),
(29, 'q0fsgo28p55et8gqe24smodd25', '2014-09-15 07:06:20', '2014-09-15 07:06:31', 612, 1),
(30, 'ocsscsc5k9br5so2iqskt5jvn0', '2014-09-15 08:41:00', '2014-09-15 08:46:12', 630, 1),
(31, 'biturj16a713sa588pfs3bu122', '2014-09-15 08:46:23', '2014-09-15 09:16:01', 668, 1),
(32, 'sv2peg2s4ltegc5dsqhq0rlm77', '2014-09-15 17:11:28', '2014-09-15 17:45:21', 724, 1),
(33, 'lf04p2ldbt589eo0g1t4uj7uk4', '2014-09-16 09:02:10', '2014-09-16 09:03:35', 733, 1),
(34, 'pa6d15emh85k3168avv34a9g92', '2014-09-17 17:35:51', '2014-09-17 18:24:02', 783, 1),
(35, 'kg6k9818qjnokvo5rup3sd71l2', '2014-09-18 06:15:03', '2014-09-18 07:18:45', 886, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Dumping data for table `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(2, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(3, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(4, 'http://127.0.0.1/magento19/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(5, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(6, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(7, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', NULL, 'en-US,en;q=0.8,vi;q=0.6', 2130706433, 2130706433),
(8, 'http://127.0.0.1/magento19/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(9, 'http://mg.local/index.php/install/wizard/end/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:32.0) Gecko/20100101 Firefox/32.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(10, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(11, 'http://127.0.0.1/magento19/checkout/onepage/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(12, 'http://127.0.0.1/magento19/checkout/cart/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(13, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', NULL, 'en-US,en;q=0.8,vi;q=0.6', 2130706433, 2130706433),
(14, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(15, 'http://127.0.0.1/magento19/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(16, 'http://127.0.0.1/magento19/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(17, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', NULL, 'en-US,en;q=0.8,vi;q=0.6', 2130706433, 2130706433),
(18, 'http://127.0.0.1/magento19/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(19, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(20, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(21, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(22, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(23, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(24, 'http://127.0.0.1/magento19/customer/account/', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(25, 'http://127.0.0.1/magento19/test.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(26, 'http://127.0.0.1/magento19/test.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(27, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(28, 'http://127.0.0.1/magento19/test.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(29, 'http://127.0.0.1/magento19/test.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(30, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', NULL, 'en-US,en;q=0.8,vi;q=0.6', 2130706433, 2130706433),
(31, 'http://127.0.0.1/magento19/test.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(32, 'http://127.0.0.1/magento19/test.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(33, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(34, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(35, NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433);

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE IF NOT EXISTS `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_cert`
--

CREATE TABLE IF NOT EXISTS `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `persistent_session`
--

CREATE TABLE IF NOT EXISTS `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2014-08-29 16:33:57', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `poll_store`
--

CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- Dumping data for table `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `poll_vote`
--

CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ratings' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Table' AUTO_INCREMENT=251 ;

--
-- Dumping data for table `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2014-09-01 03:55:11', 1, 1, 1, 1, 1),
(2, '2014-09-01 03:55:49', 1, 1, 1, 1, 1),
(3, '2014-09-01 03:59:45', 1, 1, 1, 1, 1),
(4, '2014-09-01 04:13:36', 1, 1, 1, 1, 1),
(5, '2014-09-01 04:15:05', 1, 1, 1, 1, 1),
(6, '2014-09-01 05:24:56', 1, 1, 2, 1, 1),
(7, '2014-09-01 05:25:48', 1, 1, 2, 1, 1),
(8, '2014-09-01 05:26:07', 1, 1, 2, 1, 1),
(9, '2014-09-01 05:26:20', 1, 1, 2, 1, 1),
(10, '2014-09-01 05:26:55', 1, 1, 2, 1, 1),
(11, '2014-09-01 05:28:34', 1, 1, 2, 1, 1),
(12, '2014-09-01 05:28:45', 1, 1, 2, 1, 1),
(13, '2014-09-01 05:34:58', 1, 1, 2, 1, 1),
(14, '2014-09-01 05:35:13', 1, 1, 2, 1, 1),
(15, '2014-09-02 08:55:51', 1, 1, 3, 1, 1),
(16, '2014-09-07 17:25:44', 4, 1, 1, 0, 1),
(17, '2014-09-08 23:52:05', 4, 1, 9, 1, 1),
(18, '2014-09-09 02:32:44', 4, 1, 10, 1, 1),
(19, '2014-09-09 02:44:27', 4, 1, 11, 1, 1),
(20, '2014-09-09 07:06:20', 4, 1, 12, 1, 1),
(21, '2014-09-09 07:18:15', 4, 1, 13, 1, 1),
(22, '2014-09-13 08:22:43', 4, 1, 24, 1, 1),
(23, '2014-09-13 08:22:45', 1, 1, 24, 1, 1),
(24, '2014-09-13 08:23:28', 1, 1, 24, 1, 1),
(25, '2014-09-13 08:31:55', 1, 1, 24, 1, 1),
(26, '2014-09-13 08:32:32', 1, 1, 24, 1, 1),
(27, '2014-09-13 08:33:16', 1, 1, 24, 1, 1),
(28, '2014-09-13 08:34:44', 1, 1, 24, 1, 1),
(29, '2014-09-13 08:37:14', 1, 1, 24, 1, 1),
(30, '2014-09-13 08:39:34', 1, 1, 24, 1, 1),
(31, '2014-09-13 08:41:52', 1, 1, 24, 1, 1),
(32, '2014-09-13 08:41:53', 1, 1, 24, 1, 1),
(33, '2014-09-13 08:42:33', 1, 1, 24, 1, 1),
(34, '2014-09-13 08:45:12', 1, 1, 24, 1, 1),
(35, '2014-09-13 08:45:59', 1, 1, 24, 1, 1),
(36, '2014-09-13 08:47:02', 1, 1, 24, 1, 1),
(37, '2014-09-13 08:48:12', 1, 1, 24, 1, 1),
(38, '2014-09-13 08:48:33', 1, 1, 24, 1, 1),
(39, '2014-09-13 08:48:43', 1, 1, 24, 1, 1),
(40, '2014-09-13 08:49:25', 1, 1, 24, 1, 1),
(41, '2014-09-13 08:51:34', 1, 1, 24, 1, 1),
(42, '2014-09-13 08:52:10', 1, 1, 24, 1, 1),
(43, '2014-09-14 02:15:42', 1, 1, 25, 1, 1),
(44, '2014-09-14 02:18:20', 1, 1, 25, 1, 1),
(45, '2014-09-14 02:18:53', 1, 1, 25, 1, 1),
(46, '2014-09-14 02:19:06', 1, 1, 25, 1, 1),
(47, '2014-09-14 02:19:16', 1, 1, 25, 1, 1),
(48, '2014-09-14 02:19:37', 1, 1, 25, 1, 1),
(49, '2014-09-14 02:20:06', 1, 1, 25, 1, 1),
(50, '2014-09-14 02:26:10', 1, 1, 25, 1, 1),
(51, '2014-09-14 02:26:40', 1, 1, 25, 1, 1),
(52, '2014-09-14 02:27:11', 1, 1, 25, 1, 1),
(53, '2014-09-14 02:39:13', 1, 1, 25, 1, 1),
(54, '2014-09-14 02:40:21', 1, 1, 25, 1, 1),
(55, '2014-09-14 02:46:20', 1, 1, 25, 1, 1),
(56, '2014-09-14 02:46:52', 1, 1, 25, 1, 1),
(57, '2014-09-14 02:47:44', 1, 1, 25, 1, 1),
(58, '2014-09-14 02:48:00', 1, 1, 25, 1, 1),
(59, '2014-09-14 02:48:30', 1, 1, 25, 1, 1),
(60, '2014-09-14 02:48:43', 1, 1, 25, 1, 1),
(61, '2014-09-14 02:49:05', 1, 1, 25, 1, 1),
(62, '2014-09-14 02:50:06', 1, 1, 25, 1, 1),
(63, '2014-09-14 02:50:35', 1, 1, 25, 1, 1),
(64, '2014-09-14 02:50:57', 1, 1, 25, 1, 1),
(65, '2014-09-14 02:51:53', 1, 1, 25, 1, 1),
(66, '2014-09-14 02:52:10', 1, 1, 25, 1, 1),
(67, '2014-09-14 02:52:24', 1, 1, 25, 1, 1),
(68, '2014-09-14 03:54:35', 1, 1, 26, 1, 1),
(69, '2014-09-14 03:55:35', 1, 1, 26, 1, 1),
(70, '2014-09-14 03:56:26', 1, 1, 26, 1, 1),
(71, '2014-09-14 03:57:08', 1, 1, 26, 1, 1),
(72, '2014-09-14 03:58:04', 1, 1, 26, 1, 1),
(73, '2014-09-14 03:58:32', 1, 1, 11, 0, 1),
(74, '2014-09-14 03:59:15', 1, 1, 11, 0, 1),
(75, '2014-09-14 04:01:29', 1, 1, 11, 0, 1),
(76, '2014-09-14 04:01:42', 1, 1, 11, 0, 1),
(77, '2014-09-14 04:03:49', 1, 1, 11, 0, 1),
(78, '2014-09-14 04:04:20', 1, 1, 11, 0, 1),
(79, '2014-09-14 04:11:57', 1, 1, 11, 0, 1),
(80, '2014-09-14 06:30:35', 1, 1, 11, 0, 1),
(81, '2014-09-14 06:32:47', 1, 1, 11, 0, 1),
(82, '2014-09-14 06:36:06', 1, 1, 11, 0, 1),
(83, '2014-09-14 06:36:47', 1, 1, 11, 0, 1),
(84, '2014-09-14 06:39:45', 1, 1, 11, 0, 1),
(85, '2014-09-14 06:40:03', 1, 1, 11, 0, 1),
(86, '2014-09-14 06:42:07', 1, 1, 11, 0, 1),
(87, '2014-09-14 06:49:06', 1, 1, 11, 0, 1),
(88, '2014-09-14 06:50:23', 1, 1, 11, 0, 1),
(89, '2014-09-14 06:52:11', 1, 1, 11, 0, 1),
(90, '2014-09-14 06:52:34', 1, 1, 11, 0, 1),
(91, '2014-09-14 06:58:24', 1, 1, 11, 0, 1),
(92, '2014-09-14 07:01:14', 1, 1, 11, 0, 1),
(93, '2014-09-14 07:02:01', 1, 1, 11, 0, 1),
(94, '2014-09-14 07:02:30', 1, 1, 11, 0, 1),
(95, '2014-09-14 07:02:57', 1, 1, 11, 0, 1),
(96, '2014-09-14 07:03:39', 1, 1, 11, 0, 1),
(97, '2014-09-14 07:04:01', 1, 1, 11, 0, 1),
(98, '2014-09-14 07:05:21', 1, 1, 11, 0, 1),
(99, '2014-09-14 07:05:44', 1, 1, 11, 0, 1),
(100, '2014-09-14 07:06:34', 1, 1, 11, 0, 1),
(101, '2014-09-14 07:07:08', 1, 1, 11, 0, 1),
(102, '2014-09-14 07:07:28', 1, 1, 11, 0, 1),
(103, '2014-09-14 07:08:04', 1, 1, 11, 0, 1),
(104, '2014-09-14 07:08:24', 1, 1, 11, 0, 1),
(105, '2014-09-14 07:08:59', 1, 1, 11, 0, 1),
(106, '2014-09-14 07:09:13', 1, 1, 11, 0, 1),
(107, '2014-09-14 08:19:36', 1, 1, 28, 1, 1),
(108, '2014-09-14 08:20:08', 1, 1, 11, 0, 1),
(109, '2014-09-14 08:20:35', 1, 1, 11, 0, 1),
(110, '2014-09-14 08:23:16', 1, 1, 11, 0, 1),
(111, '2014-09-14 08:25:30', 1, 1, 11, 0, 1),
(112, '2014-09-14 08:26:45', 1, 1, 11, 0, 1),
(113, '2014-09-14 08:30:35', 1, 1, 11, 0, 1),
(114, '2014-09-14 08:31:18', 1, 1, 11, 0, 1),
(115, '2014-09-14 08:31:43', 1, 1, 11, 0, 1),
(116, '2014-09-14 08:32:03', 1, 1, 11, 0, 1),
(117, '2014-09-14 08:32:39', 1, 1, 11, 0, 1),
(118, '2014-09-14 08:32:58', 1, 1, 11, 0, 1),
(119, '2014-09-14 08:33:10', 1, 1, 11, 0, 1),
(120, '2014-09-14 08:33:22', 1, 1, 11, 0, 1),
(121, '2014-09-14 08:34:24', 1, 1, 11, 0, 1),
(122, '2014-09-14 08:50:13', 1, 1, 11, 0, 1),
(123, '2014-09-14 08:50:21', 1, 1, 11, 0, 1),
(124, '2014-09-14 08:52:20', 1, 1, 11, 0, 1),
(125, '2014-09-14 08:54:40', 1, 1, 11, 0, 1),
(126, '2014-09-14 08:55:49', 1, 1, 11, 0, 1),
(127, '2014-09-14 08:56:29', 1, 1, 11, 0, 1),
(128, '2014-09-14 08:56:37', 1, 1, 11, 0, 1),
(129, '2014-09-15 07:06:24', 1, 1, 29, 1, 1),
(130, '2014-09-15 08:44:35', 4, 1, 12, 0, 1),
(131, '2014-09-15 08:46:23', 1, 1, 31, 1, 1),
(132, '2014-09-15 08:47:10', 1, 1, 11, 0, 1),
(133, '2014-09-15 08:49:02', 1, 1, 11, 0, 1),
(134, '2014-09-15 08:51:31', 1, 1, 11, 0, 1),
(135, '2014-09-15 08:52:37', 1, 1, 11, 0, 1),
(136, '2014-09-15 08:53:37', 1, 1, 11, 0, 1),
(137, '2014-09-15 08:54:17', 1, 1, 11, 0, 1),
(138, '2014-09-15 08:55:21', 1, 1, 11, 0, 1),
(139, '2014-09-15 08:58:27', 1, 1, 11, 0, 1),
(140, '2014-09-15 08:59:17', 1, 1, 11, 0, 1),
(141, '2014-09-15 09:00:45', 1, 1, 11, 0, 1),
(142, '2014-09-15 09:01:22', 1, 1, 11, 0, 1),
(143, '2014-09-15 09:05:16', 1, 1, 11, 0, 1),
(144, '2014-09-15 09:06:14', 1, 1, 11, 0, 1),
(145, '2014-09-15 09:07:01', 1, 1, 11, 0, 1),
(146, '2014-09-15 09:09:39', 1, 1, 11, 0, 1),
(147, '2014-09-15 09:10:18', 1, 1, 11, 0, 1),
(148, '2014-09-15 09:11:01', 1, 1, 11, 0, 1),
(149, '2014-09-15 09:11:33', 1, 1, 11, 0, 1),
(150, '2014-09-15 09:12:33', 1, 1, 11, 0, 1),
(151, '2014-09-15 09:13:53', 1, 1, 11, 0, 1),
(152, '2014-09-15 09:14:31', 1, 1, 11, 0, 1),
(153, '2014-09-15 09:15:59', 1, 1, 11, 0, 1),
(154, '2014-09-15 17:11:29', 1, 1, 32, 1, 1),
(155, '2014-09-15 17:11:47', 1, 1, 11, 0, 1),
(156, '2014-09-15 17:12:56', 1, 1, 11, 0, 1),
(157, '2014-09-15 17:13:05', 1, 1, 11, 0, 1),
(158, '2014-09-15 17:13:44', 1, 1, 11, 0, 1),
(159, '2014-09-15 17:14:03', 1, 1, 11, 0, 1),
(160, '2014-09-15 17:15:39', 1, 1, 11, 0, 1),
(161, '2014-09-15 17:16:18', 1, 1, 11, 0, 1),
(162, '2014-09-15 17:22:20', 1, 1, 11, 0, 1),
(163, '2014-09-15 17:22:43', 1, 1, 11, 0, 1),
(164, '2014-09-15 17:23:03', 1, 1, 11, 0, 1),
(165, '2014-09-15 17:23:52', 1, 1, 11, 0, 1),
(166, '2014-09-15 17:24:26', 1, 1, 11, 0, 1),
(167, '2014-09-15 17:24:39', 1, 1, 11, 0, 1),
(168, '2014-09-15 17:25:57', 1, 1, 11, 0, 1),
(169, '2014-09-15 17:26:40', 1, 1, 11, 0, 1),
(170, '2014-09-15 17:34:58', 1, 1, 11, 0, 1),
(171, '2014-09-15 17:38:52', 1, 1, 11, 0, 1),
(172, '2014-09-15 17:39:23', 1, 1, 11, 0, 1),
(173, '2014-09-15 17:41:13', 1, 1, 11, 0, 1),
(174, '2014-09-15 17:42:21', 1, 1, 11, 0, 1),
(175, '2014-09-15 17:43:11', 1, 1, 11, 0, 1),
(176, '2014-09-15 17:43:49', 1, 1, 11, 0, 1),
(177, '2014-09-15 17:44:34', 1, 1, 11, 0, 1),
(178, '2014-09-15 17:44:44', 1, 1, 11, 0, 1),
(179, '2014-09-15 17:45:19', 1, 1, 11, 0, 1),
(180, '2014-09-16 09:03:31', 1, 1, 11, 0, 1),
(181, '2014-09-17 17:45:11', 1, 1, 11, 0, 1),
(182, '2014-09-17 17:53:53', 1, 1, 11, 0, 1),
(183, '2014-09-17 17:58:18', 1, 1, 11, 0, 1),
(184, '2014-09-17 17:58:42', 1, 1, 11, 0, 1),
(185, '2014-09-17 17:59:41', 1, 1, 11, 0, 1),
(186, '2014-09-17 18:01:30', 1, 1, 11, 0, 1),
(187, '2014-09-17 18:05:12', 1, 1, 11, 0, 1),
(188, '2014-09-17 18:06:39', 1, 1, 11, 0, 1),
(189, '2014-09-17 18:07:24', 1, 1, 11, 0, 1),
(190, '2014-09-17 18:09:44', 1, 1, 11, 0, 1),
(191, '2014-09-17 18:09:56', 4, 1, 11, 0, 1),
(192, '2014-09-17 18:11:57', 1, 1, 11, 0, 1),
(193, '2014-09-17 18:12:26', 1, 1, 11, 0, 1),
(194, '2014-09-17 18:12:38', 1, 1, 11, 0, 1),
(195, '2014-09-17 18:13:48', 1, 1, 11, 0, 1),
(196, '2014-09-17 18:15:52', 1, 1, 11, 0, 1),
(197, '2014-09-17 18:18:33', 1, 1, 11, 0, 1),
(198, '2014-09-17 18:21:20', 1, 1, 11, 0, 1),
(199, '2014-09-17 18:22:38', 1, 1, 11, 0, 1),
(200, '2014-09-17 18:23:41', 1, 1, 11, 0, 1),
(201, '2014-09-17 18:23:57', 1, 1, 11, 0, 1),
(202, '2014-09-18 06:15:46', 1, 1, 11, 0, 1),
(203, '2014-09-18 06:23:51', 1, 1, 11, 0, 1),
(204, '2014-09-18 06:24:02', 1, 1, 11, 0, 1),
(205, '2014-09-18 06:24:30', 1, 1, 11, 0, 1),
(206, '2014-09-18 06:27:52', 1, 1, 11, 0, 1),
(207, '2014-09-18 06:28:56', 1, 1, 11, 0, 1),
(208, '2014-09-18 06:29:27', 1, 1, 11, 0, 1),
(209, '2014-09-18 06:33:31', 1, 1, 11, 0, 1),
(210, '2014-09-18 06:34:14', 1, 1, 11, 0, 1),
(211, '2014-09-18 06:34:42', 1, 1, 11, 0, 1),
(212, '2014-09-18 06:35:18', 1, 1, 11, 0, 1),
(213, '2014-09-18 06:35:28', 1, 1, 11, 0, 1),
(214, '2014-09-18 06:40:27', 1, 1, 11, 0, 1),
(215, '2014-09-18 06:41:32', 1, 1, 11, 0, 1),
(216, '2014-09-18 06:42:39', 1, 1, 11, 0, 1),
(217, '2014-09-18 06:43:36', 1, 1, 11, 0, 1),
(218, '2014-09-18 06:43:49', 1, 1, 11, 0, 1),
(219, '2014-09-18 06:44:17', 1, 1, 11, 0, 1),
(220, '2014-09-18 06:45:11', 1, 1, 11, 0, 1),
(221, '2014-09-18 06:45:42', 1, 1, 11, 0, 1),
(222, '2014-09-18 06:46:32', 1, 1, 11, 0, 1),
(223, '2014-09-18 06:47:19', 1, 1, 11, 0, 1),
(224, '2014-09-18 06:53:17', 1, 1, 11, 0, 1),
(225, '2014-09-18 06:53:37', 1, 1, 11, 0, 1),
(226, '2014-09-18 06:54:36', 1, 1, 11, 0, 1),
(227, '2014-09-18 07:01:23', 1, 1, 11, 0, 1),
(228, '2014-09-18 07:02:07', 1, 1, 11, 0, 1),
(229, '2014-09-18 07:03:28', 1, 1, 11, 0, 1),
(230, '2014-09-18 07:03:40', 1, 1, 11, 0, 1),
(231, '2014-09-18 07:04:30', 1, 1, 11, 0, 1),
(232, '2014-09-18 07:04:50', 1, 1, 11, 0, 1),
(233, '2014-09-18 07:05:07', 1, 1, 11, 0, 1),
(234, '2014-09-18 07:05:33', 1, 1, 11, 0, 1),
(235, '2014-09-18 07:06:43', 1, 1, 11, 0, 1),
(236, '2014-09-18 07:06:58', 1, 1, 11, 0, 1),
(237, '2014-09-18 07:07:46', 1, 1, 11, 0, 1),
(238, '2014-09-18 07:08:26', 1, 1, 11, 0, 1),
(239, '2014-09-18 07:09:17', 1, 1, 11, 0, 1),
(240, '2014-09-18 07:10:01', 1, 1, 11, 0, 1),
(241, '2014-09-18 07:10:35', 1, 1, 11, 0, 1),
(242, '2014-09-18 07:12:08', 1, 1, 11, 0, 1),
(243, '2014-09-18 07:12:32', 1, 1, 11, 0, 1),
(244, '2014-09-18 07:13:19', 1, 1, 11, 0, 1),
(245, '2014-09-18 07:15:28', 1, 1, 11, 0, 1),
(246, '2014-09-18 07:15:48', 1, 1, 11, 0, 1),
(247, '2014-09-18 07:16:10', 1, 1, 11, 0, 1),
(248, '2014-09-18 07:18:09', 1, 1, 11, 0, 1),
(249, '2014-09-18 07:18:30', 1, 1, 11, 0, 1),
(250, '2014-09-18 07:18:42', 1, 1, 11, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table' AUTO_INCREMENT=104 ;

--
-- Dumping data for table `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 1, NULL, 1, 1, '2014-09-01 04:15:05'),
(6, 2, NULL, 1, 1, '2014-09-01 05:35:13'),
(7, 3, NULL, 1, 1, '2014-09-02 08:55:50'),
(8, 24, NULL, 1, 1, '2014-09-13 08:52:10'),
(28, 25, NULL, 1, 1, '2014-09-14 02:52:23'),
(53, 35, 11, 1, 1, '2014-09-18 07:18:42'),
(54, 29, NULL, 1, 1, '2014-09-15 07:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_website`
--

CREATE TABLE IF NOT EXISTS `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `firecheckout_delivery_date` date DEFAULT NULL,
  `firecheckout_delivery_timerange` varchar(13) DEFAULT NULL,
  `firecheckout_customer_comment` text,
  `tm_field1` text,
  `tm_field2` text,
  `tm_field3` text,
  `tm_field4` text,
  `tm_field5` text,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sales_flat_order`
--

INSERT INTO `sales_flat_order` (`entity_id`, `state`, `status`, `coupon_code`, `protect_code`, `shipping_description`, `is_virtual`, `store_id`, `customer_id`, `base_discount_amount`, `base_discount_canceled`, `base_discount_invoiced`, `base_discount_refunded`, `base_grand_total`, `base_shipping_amount`, `base_shipping_canceled`, `base_shipping_invoiced`, `base_shipping_refunded`, `base_shipping_tax_amount`, `base_shipping_tax_refunded`, `base_subtotal`, `base_subtotal_canceled`, `base_subtotal_invoiced`, `base_subtotal_refunded`, `base_tax_amount`, `base_tax_canceled`, `base_tax_invoiced`, `base_tax_refunded`, `base_to_global_rate`, `base_to_order_rate`, `base_total_canceled`, `base_total_invoiced`, `base_total_invoiced_cost`, `base_total_offline_refunded`, `base_total_online_refunded`, `base_total_paid`, `base_total_qty_ordered`, `base_total_refunded`, `discount_amount`, `discount_canceled`, `discount_invoiced`, `discount_refunded`, `grand_total`, `shipping_amount`, `shipping_canceled`, `shipping_invoiced`, `shipping_refunded`, `shipping_tax_amount`, `shipping_tax_refunded`, `store_to_base_rate`, `store_to_order_rate`, `subtotal`, `subtotal_canceled`, `subtotal_invoiced`, `subtotal_refunded`, `tax_amount`, `tax_canceled`, `tax_invoiced`, `tax_refunded`, `total_canceled`, `total_invoiced`, `total_offline_refunded`, `total_online_refunded`, `total_paid`, `total_qty_ordered`, `total_refunded`, `can_ship_partially`, `can_ship_partially_item`, `customer_is_guest`, `customer_note_notify`, `billing_address_id`, `customer_group_id`, `edit_increment`, `email_sent`, `forced_shipment_with_invoice`, `payment_auth_expiration`, `quote_address_id`, `quote_id`, `shipping_address_id`, `adjustment_negative`, `adjustment_positive`, `base_adjustment_negative`, `base_adjustment_positive`, `base_shipping_discount_amount`, `base_subtotal_incl_tax`, `base_total_due`, `payment_authorization_amount`, `shipping_discount_amount`, `subtotal_incl_tax`, `total_due`, `weight`, `customer_dob`, `increment_id`, `applied_rule_ids`, `base_currency_code`, `customer_email`, `customer_firstname`, `customer_lastname`, `customer_middlename`, `customer_prefix`, `customer_suffix`, `customer_taxvat`, `discount_description`, `ext_customer_id`, `ext_order_id`, `global_currency_code`, `hold_before_state`, `hold_before_status`, `order_currency_code`, `original_increment_id`, `relation_child_id`, `relation_child_real_id`, `relation_parent_id`, `relation_parent_real_id`, `remote_ip`, `shipping_method`, `store_currency_code`, `store_name`, `x_forwarded_for`, `customer_note`, `created_at`, `updated_at`, `total_item_count`, `customer_gender`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `shipping_incl_tax`, `base_shipping_incl_tax`, `coupon_rule_name`, `paypal_ipn_customer_notified`, `gift_message_id`, `firecheckout_delivery_date`, `firecheckout_delivery_timerange`, `firecheckout_customer_comment`, `tm_field1`, `tm_field2`, `tm_field3`, `tm_field4`, `tm_field5`) VALUES
(1, 'new', 'pending', NULL, '970ecd', 'Flat Rate - Fixed', 0, 1, 12, '0.0000', NULL, NULL, NULL, '4239.0000', '5.0000', NULL, NULL, NULL, '0.0000', NULL, '4234.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '4239.0000', '5.0000', NULL, NULL, NULL, '0.0000', NULL, '1.0000', '1.0000', '4234.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, 0, 1, 1, 1, NULL, 1, NULL, NULL, NULL, 11, 2, NULL, NULL, NULL, NULL, '0.0000', '4234.0000', NULL, NULL, '0.0000', '4234.0000', NULL, '1.0000', NULL, '100000001', NULL, 'USD', 'eblue.tens@gmail.com', 'Jack', 'Nguyen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'flatrate_flatrate', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2014-09-15 08:45:21', '2014-09-15 08:45:25', 1, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '5.0000', '5.0000', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sales_flat_order_address`
--

INSERT INTO `sales_flat_order_address` (`entity_id`, `parent_id`, `customer_address_id`, `quote_address_id`, `region_id`, `customer_id`, `fax`, `region`, `postcode`, `lastname`, `street`, `city`, `email`, `telephone`, `country_id`, `firstname`, `address_type`, `prefix`, `middlename`, `suffix`, `company`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`) VALUES
(1, 1, 1, NULL, 12, 12, NULL, 'California', '92274', 'Nguyen', 'california', 'california', 'eblue.tens@gmail.com', '9654646', 'US', 'Jack', 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, 12, 12, NULL, 'California', '92274', 'Nguyen', 'california', 'california', 'eblue.tens@gmail.com', '9654646', 'US', 'Jack', 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Dumping data for table `sales_flat_order_grid`
--

INSERT INTO `sales_flat_order_grid` (`entity_id`, `status`, `store_id`, `store_name`, `customer_id`, `base_grand_total`, `base_total_paid`, `grand_total`, `total_paid`, `increment_id`, `base_currency_code`, `order_currency_code`, `shipping_name`, `billing_name`, `created_at`, `updated_at`) VALUES
(1, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 12, '4239.0000', NULL, '4239.0000', NULL, '100000001', 'USD', 'USD', 'Jack Nguyen', 'Jack Nguyen', '2014-09-15 08:45:21', '2014-09-15 08:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sales_flat_order_item`
--

INSERT INTO `sales_flat_order_item` (`item_id`, `order_id`, `parent_item_id`, `quote_item_id`, `store_id`, `created_at`, `updated_at`, `product_id`, `product_type`, `product_options`, `weight`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `qty_backordered`, `qty_canceled`, `qty_invoiced`, `qty_ordered`, `qty_refunded`, `qty_shipped`, `base_cost`, `price`, `base_price`, `original_price`, `base_original_price`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_invoiced`, `base_tax_invoiced`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `amount_refunded`, `base_amount_refunded`, `row_total`, `base_row_total`, `row_invoiced`, `base_row_invoiced`, `row_weight`, `base_tax_before_discount`, `tax_before_discount`, `ext_order_item_id`, `locked_do_invoice`, `locked_do_ship`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `is_nominal`, `tax_canceled`, `hidden_tax_canceled`, `tax_refunded`, `base_tax_refunded`, `discount_refunded`, `base_discount_refunded`, `gift_message_id`, `gift_message_available`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_applied`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(1, 1, NULL, 8, 1, '2014-09-15 08:45:22', '2014-09-15 08:45:22', 1, 'simple', 'a:1:{s:15:"info_buyRequest";a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"f7wuUi4MwsT7aKWm";s:3:"qty";i:1;}}', '1.0000', 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, NULL, '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sales_flat_order_payment`
--

INSERT INTO `sales_flat_order_payment` (`entity_id`, `parent_id`, `base_shipping_captured`, `shipping_captured`, `amount_refunded`, `base_amount_paid`, `amount_canceled`, `base_amount_authorized`, `base_amount_paid_online`, `base_amount_refunded_online`, `base_shipping_amount`, `shipping_amount`, `amount_paid`, `amount_authorized`, `base_amount_ordered`, `base_shipping_refunded`, `shipping_refunded`, `base_amount_refunded`, `amount_ordered`, `base_amount_canceled`, `quote_payment_id`, `additional_data`, `cc_exp_month`, `cc_ss_start_year`, `echeck_bank_name`, `method`, `cc_debug_request_body`, `cc_secure_verify`, `protection_eligibility`, `cc_approval`, `cc_last4`, `cc_status_description`, `echeck_type`, `cc_debug_response_serialized`, `cc_ss_start_month`, `echeck_account_type`, `last_trans_id`, `cc_cid_status`, `cc_owner`, `cc_type`, `po_number`, `cc_exp_year`, `cc_status`, `echeck_routing_number`, `account_status`, `anet_trans_method`, `cc_debug_response_body`, `cc_ss_issue`, `echeck_account_name`, `cc_avs_status`, `cc_number_enc`, `cc_trans_id`, `paybox_request_number`, `address_status`, `additional_information`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.0000', '5.0000', NULL, NULL, '4239.0000', NULL, NULL, NULL, '4239.0000', NULL, NULL, NULL, '0', '0', NULL, 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sales_flat_order_status_history`
--

INSERT INTO `sales_flat_order_status_history` (`entity_id`, `parent_id`, `is_customer_notified`, `is_visible_on_front`, `comment`, `status`, `created_at`, `entity_name`) VALUES
(1, 1, 1, 0, NULL, 'pending', '2014-09-15 08:45:25', 'order');

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  `firecheckout_delivery_date` date DEFAULT NULL,
  `firecheckout_delivery_timerange` varchar(13) DEFAULT NULL,
  `firecheckout_customer_comment` text,
  `tm_field1` text,
  `tm_field2` text,
  `tm_field3` text,
  `tm_field4` text,
  `tm_field5` text,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sales_flat_quote`
--

INSERT INTO `sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`, `firecheckout_delivery_date`, `firecheckout_delivery_timerange`, `firecheckout_customer_comment`, `tm_field1`, `tm_field2`, `tm_field3`, `tm_field4`, `tm_field5`) VALUES
(1, 1, '2014-09-07 17:05:14', '2014-09-09 07:37:18', NULL, 1, 0, 0, 1, '2.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '8478.0000', '8478.0000', 'guest', NULL, 3, 1, 'easier.web@gmail.com', NULL, 'Sun', NULL, 'Nguyen', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '8468.0000', '8468.0000', '8468.0000', '8468.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2014-09-08 23:52:05', '2014-09-08 23:59:11', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '4239.0000', '4239.0000', 'guest', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, '2014-09-09 02:32:44', '2014-09-09 02:33:01', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '4234.0000', '4234.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, '2014-09-09 07:18:15', '2014-09-09 07:18:52', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '4239.0000', '4239.0000', 'guest', NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, '2014-09-12 07:38:11', '2014-09-12 07:38:11', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, 1, 3, 1, 'easier.web@gmail.com', NULL, 'Sun', NULL, 'Nguyen', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, '2014-09-13 04:06:45', '2014-09-13 04:06:45', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, 8, 3, 1, 'easier.web@gmail.com', NULL, 'Sun', NULL, 'Nguyen', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, '2014-09-13 08:22:41', '2014-09-13 08:22:41', NULL, 1, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '4234.0000', '4234.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, '2014-09-14 03:58:21', '2014-09-17 18:12:31', NULL, 1, 0, 0, 1, '2.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '8468.0000', '8468.0000', NULL, 11, 3, 1, 'easier.web@gmail.com', NULL, 'Sun', NULL, 'Nguyen', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '8468.0000', '8468.0000', '8468.0000', '8468.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, '2014-09-15 08:44:16', '2014-09-15 08:45:30', NULL, 0, 0, 0, 1, '1.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '4239.0000', '4239.0000', 'customer', 12, 3, 1, 'eblue.tens@gmail.com', NULL, 'Jack', NULL, 'Nguyen', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000001', NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address' AUTO_INCREMENT=23 ;

--
-- Dumping data for table `sales_flat_quote_address`
--

INSERT INTO `sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(1, 1, '2014-09-07 17:05:14', '2014-09-09 07:37:18', NULL, 0, NULL, 'billing', 'easier.web@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2014-09-07 17:05:14', '2014-09-09 07:37:19', NULL, 0, NULL, 'shipping', 'easier.web@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '2.0000', '8468.0000', '8468.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '8478.0000', '8478.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '8468.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '10.0000', '10.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2014-09-08 23:52:05', '2014-09-08 23:59:10', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2014-09-08 23:52:05', '2014-09-08 23:59:11', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4239.0000', '4239.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '5.0000', '5.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2014-09-09 02:32:44', '2014-09-09 02:33:01', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, '2014-09-09 02:32:44', '2014-09-09 02:33:01', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, '2014-09-09 02:44:27', '2014-09-09 03:31:58', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, '2014-09-09 02:44:27', '2014-09-09 03:31:59', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4239.0000', '4239.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '5.0000', '5.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, '2014-09-09 07:06:20', '2014-09-09 07:06:26', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, '2014-09-09 07:06:20', '2014-09-09 07:06:27', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4239.0000', '4239.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '5.0000', '5.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, '2014-09-09 07:18:15', '2014-09-09 07:18:52', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, '2014-09-09 07:18:15', '2014-09-09 07:18:53', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'US', NULL, NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4239.0000', '4239.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '5.0000', '5.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 7, '2014-09-12 07:38:11', '2014-09-12 07:38:11', 1, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, '2014-09-12 07:38:11', '2014-09-12 07:38:11', 1, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 8, '2014-09-13 04:06:45', '2014-09-13 04:06:45', 8, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 8, '2014-09-13 04:06:45', '2014-09-13 04:06:45', 8, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 9, '2014-09-13 08:22:42', '2014-09-13 08:22:42', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 9, '2014-09-13 08:22:42', '2014-09-13 08:22:42', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 10, '2014-09-14 03:58:22', '2014-09-17 18:12:31', 11, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 10, '2014-09-14 03:58:22', '2014-09-17 18:12:31', 11, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '2.0000', '8468.0000', '8468.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '8468.0000', '8468.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '8468.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 11, '2014-09-15 08:44:17', '2014-09-15 08:45:21', 12, 1, 1, 'billing', 'eblue.tens@gmail.com', NULL, 'Jack', NULL, 'Nguyen', NULL, NULL, 'california', 'california', 'California', 12, '92274', 'US', '9654646', NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 11, '2014-09-15 08:44:17', '2014-09-15 08:45:21', 12, 0, NULL, 'shipping', 'eblue.tens@gmail.com', NULL, 'Jack', NULL, 'Nguyen', NULL, NULL, 'california', 'california', 'California', 12, '92274', 'US', '9654646', NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '1.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', '0.0000', '0.0000', '5.0000', '5.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4239.0000', '4239.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '5.0000', '5.0000', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sales_flat_quote_item`
--

INSERT INTO `sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
(1, 1, '2014-09-07 17:25:44', '2014-09-09 07:06:52', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '2.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '8468.0000', '8468.0000', '0.0000', '2.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '8468.0000', '8468.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(2, 2, '2014-09-08 23:52:05', '2014-09-08 23:52:05', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(3, 3, '2014-09-09 02:32:46', '2014-09-09 02:32:46', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(4, 4, '2014-09-09 02:44:29', '2014-09-09 02:44:29', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(5, 5, '2014-09-09 07:06:20', '2014-09-09 07:06:20', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(6, 6, '2014-09-09 07:18:15', '2014-09-09 07:18:15', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(7, 9, '2014-09-13 08:22:43', '2014-09-13 08:22:43', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(8, 11, '2014-09-15 08:44:35', '2014-09-15 08:44:35', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '1.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '4234.0000', '4234.0000', '0.0000', '1.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '4234.0000', '4234.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(9, 10, '2014-09-17 18:09:56', '2014-09-17 18:12:30', 1, 1, NULL, 0, 'new pro1', 'new pro1', NULL, NULL, NULL, 0, 0, 0, '1.0000', '2.0000', '4234.0000', '4234.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '8468.0000', '8468.0000', '0.0000', '2.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '4234.0000', '4234.0000', '8468.0000', '8468.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sales_flat_quote_item_option`
--

INSERT INTO `sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:64:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvaW5kZXgucGhwL3Rlc3QuaHRtbA,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"W4RANT7CZyFe2kQR";s:3:"qty";i:1;}'),
(2, 2, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:36:"aHR0cDovL21nLmxvY2FsL3Rlc3QuaHRtbA,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"q9WMnt91L3odLahB";s:3:"qty";i:1;}'),
(3, 3, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"yjP3apUur4AjVC7s";s:3:"qty";i:1;}'),
(4, 4, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"1b9PJXGiiPnbE8sA";s:3:"qty";i:1;}'),
(5, 5, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"Cm8dVBb4hKKQIzDV";s:3:"qty";i:1;}'),
(6, 6, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"RwBluXE1cKYqjsTg";s:3:"qty";i:1;}'),
(7, 7, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"cqC6vXg2HBjnwB8U";s:3:"qty";i:1;}'),
(8, 8, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:48:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"f7wuUi4MwsT7aKWm";s:3:"qty";i:1;}'),
(9, 9, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:60:"aHR0cDovLzEyNy4wLjAuMS9tYWdlbnRvMTkvdGVzdC9uZXctcHJvMS5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"ioCrglosKdgoSIYR";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment' AUTO_INCREMENT=51 ;

--
-- Dumping data for table `sales_flat_quote_payment`
--

INSERT INTO `sales_flat_quote_payment` (`payment_id`, `quote_id`, `created_at`, `updated_at`, `method`, `cc_type`, `cc_number_enc`, `cc_last4`, `cc_cid_enc`, `cc_owner`, `cc_exp_month`, `cc_exp_year`, `cc_ss_owner`, `cc_ss_start_month`, `cc_ss_start_year`, `po_number`, `additional_data`, `cc_ss_issue`, `additional_information`, `paypal_payer_id`, `paypal_payer_status`, `paypal_correlation_id`) VALUES
(3, 2, '2014-09-08 23:59:11', '2014-09-08 23:59:11', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, '2014-09-09 02:33:01', '2014-09-09 02:33:01', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 4, '2014-09-09 03:31:59', '2014-09-09 03:31:59', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 5, '2014-09-09 07:06:27', '2014-09-09 07:06:27', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 6, '2014-09-09 07:18:52', '2014-09-09 07:18:52', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 1, '2014-09-09 07:37:18', '2014-09-09 07:37:18', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 11, '2014-09-15 08:44:48', '2014-09-15 08:45:21', 'checkmo', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate' AUTO_INCREMENT=54 ;

--
-- Dumping data for table `sales_flat_quote_shipping_rate`
--

INSERT INTO `sales_flat_quote_shipping_rate` (`rate_id`, `address_id`, `created_at`, `updated_at`, `carrier`, `carrier_title`, `code`, `method`, `method_description`, `price`, `error_message`, `method_title`) VALUES
(1, 4, '2014-09-08 23:59:10', '2014-09-08 23:59:10', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '5.0000', NULL, 'Fixed'),
(33, 8, '2014-09-09 03:31:57', '2014-09-09 03:31:57', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '5.0000', NULL, 'Fixed'),
(35, 10, '2014-09-09 07:06:26', '2014-09-09 07:06:26', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '5.0000', NULL, 'Fixed'),
(42, 12, '2014-09-09 07:18:52', '2014-09-09 07:18:52', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '5.0000', NULL, 'Fixed'),
(49, 2, '2014-09-09 07:37:17', '2014-09-09 07:37:17', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '10.0000', NULL, 'Fixed'),
(53, 22, '2014-09-15 08:45:19', '2014-09-15 08:45:19', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '5.0000', NULL, 'Fixed');

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status`
--

CREATE TABLE IF NOT EXISTS `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tag_properties`
--

CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Table structure for table `tag_relation`
--

CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tag_summary`
--

CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--

CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Class' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tm_core_module`
--

CREATE TABLE IF NOT EXISTS `tm_core_module` (
  `code` varchar(50) NOT NULL COMMENT 'Code',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data_version',
  `identity_key` text,
  `store_ids` varchar(64) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tm_core_module';

-- --------------------------------------------------------

--
-- Table structure for table `weee_discount`
--

CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Table structure for table `weee_tax`
--

CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, '4a26d7d7196ba7e412606aa3a947a65f', '2014-09-09 07:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_application`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_application` (
  `application_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Application Id',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  `type` varchar(32) NOT NULL COMMENT 'Device Type',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `active_from` date DEFAULT NULL COMMENT 'Active From',
  `active_to` date DEFAULT NULL COMMENT 'Active To',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `browsing_mode` smallint(5) unsigned DEFAULT '0' COMMENT 'Browsing Mode',
  PRIMARY KEY (`application_id`),
  UNIQUE KEY `UNQ_XMLCONNECT_APPLICATION_CODE` (`code`),
  KEY `FK_XMLCONNECT_APPLICATION_STORE_ID_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Application' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_config_data`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_config_data` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `category` varchar(60) NOT NULL DEFAULT 'default' COMMENT 'Category',
  `path` varchar(250) NOT NULL COMMENT 'Path',
  `value` text NOT NULL COMMENT 'Value',
  UNIQUE KEY `UNQ_XMLCONNECT_CONFIG_DATA_APPLICATION_ID_CATEGORY_PATH` (`application_id`,`category`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Configuration Data';

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_history`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `params` blob COMMENT 'Params',
  `title` varchar(200) NOT NULL COMMENT 'Title',
  `activation_key` varchar(255) NOT NULL COMMENT 'Activation Key',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  PRIMARY KEY (`history_id`),
  KEY `FK_8F08B9513373BC19F49EE3EF8340E270` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_images`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Image Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `image_file` varchar(255) NOT NULL COMMENT 'Image File',
  `image_type` varchar(255) NOT NULL COMMENT 'Image Type',
  `order` int(10) unsigned NOT NULL COMMENT 'Order',
  PRIMARY KEY (`image_id`),
  KEY `FK_6C55A623A089E4FEA9201FFE01693167` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Images' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_notification_template`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_notification_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `name` varchar(255) NOT NULL COMMENT 'Template Name',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) NOT NULL COMMENT 'Message Title',
  `content` text NOT NULL COMMENT 'Message Content',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  PRIMARY KEY (`template_id`),
  KEY `FK_F9927C7518A907CF5C350942FD296DC3` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `xmlconnect_queue`
--

CREATE TABLE IF NOT EXISTS `xmlconnect_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `exec_time` timestamp NULL DEFAULT NULL COMMENT 'Scheduled Execution Time',
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) DEFAULT '' COMMENT 'Message Title',
  `content` text COMMENT 'Message Content',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `type` varchar(12) NOT NULL COMMENT 'Type of Notification',
  PRIMARY KEY (`queue_id`),
  KEY `FK_2019AEC5FC55A516965583447CA26B14` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Queue' AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  ADD CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
  ADD CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `belvg_facebook_customer`
--
ALTER TABLE `belvg_facebook_customer`
  ADD CONSTRAINT `belvg_facebook_customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `belvg_facebook_customer_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `FK_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_FLAT_STORE_1_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DF909D22C11B60B1E5E3EE64AB220ECE` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
