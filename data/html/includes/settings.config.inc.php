<?php
	// Require the localsetting.inc.php
	require_once('../../settings.local.inc.php');
	
	// Check that the required settings for the system to function have been defined
	// Initialise an $errors array to store any errors
	$errors = array();
	
	// Check that constants are defined
	if(!defined('DB_SERVER')) 	{ $errors[] = "DB_SERVER is not defined. Please add the following as a new line to your includes/settings.local.inc.php file: <b>define('DB_SERVER', 'YOUR DATABASE IP/HOSTNAME');</b>"; };
	if(!defined('DB_USER')) 	{ $errors[] = "DB_USER is not defined. Please add the following as a new line to your includes/settings.local.inc.php file: <b>define('DB_USER', 'YOUR DATABASE USERNAME');</b>"; };
	if(!defined('DB_PASS')) 	{ $errors[] = "DB_PASS is not defined. Please add the following as a new line to your includes/settings.local.inc.php file: <b>define('DB_PASS', 'YOUR DATABASE USER PASSWORD');</b>"; };
	if(!defined('DB_NAME')) 	{ $errors[] = "DB_NAME is not defined. Please add the following as a new line to your includes/settings.local.inc.php file: <b>define('DB_NAME', 'YOUR DATABASE NAME');</b>"; };
	if(!defined('SITE_URL')) 	{ $errors[] = "SITE_URL is not defined. Please add the following as a new line to your includes/settings.local.inc.php file: <b>define('SITE_URL', 'YOUR SITE URL');</b>"; };

	// Output the errors to screen if any are present
	if(!empty($errors)) {
		echo '<p>There appear to be some issues with your configuration. Please review the following errors:</p>';
		echo '<ul>';
		foreach($errors as $error) {
			echo '- '. $error . '<br>';
		};
		echo '</ul>';
		echo '<p>Please remember to include all of the example line but replacing the key information with that which relates to your system. Also ensure that the settings.local.inc.php file starts with the first line with <b>' . htmlspecialchars("<?php ") . '</b>. Without this then any setting you set won\'t work!</p>';
		die();
	}; // Close if(!empty($errors))
	
	// Set the database driver to MySQL
	define("DB_TYPE", "mysql");

	// Set page names
	defined("PAGENAME_INDEX")						?	null	:	define("PAGENAME_INDEX", "Persons");
	defined("PAGENAME_ORG")							?	null	:	define("PAGENAME_ORG", "Organisations");
	defined("PAGENAME_NEWS")						?	null	:	define("PAGENAME_NEWS", "News");
	defined("PAGENAME_LOGIN")						?	null	:	define("PAGENAME_LOGIN", "Login");
	defined("PAGENAME_LOGOUT")						?	null	:	define("PAGENAME_LOGOUT", "Exit");
	defined("PAGENAME_USERS")						?	null	:	define("PAGENAME_USERS", "Admins");
	defined("PAGENAME_USERSADD")					?	null	:	define("PAGENAME_USERSADD", "Add admin");
	defined("PAGENAME_USERSDELETE")					?	null	:	define("PAGENAME_USERSDELETE", "Delete admin");
	defined("PAGENAME_USERSUPDATE")					?	null	:	define("PAGENAME_USERSUPDATE", "Update admin");
	defined("PAGENAME_LOGS")						?	null	:	define("PAGENAME_LOGS", "Log");
	defined("PAGENAME_CONTACTS")					?	null	:	define("PAGENAME_CONTACTS", "Persons");
	defined("PAGENAME_ORG")							?	null	:	define("PAGENAME_ORG", "Organisations");
	defined("PAGENAME_CONTACTSADD")					?	null	:	define("PAGENAME_CONTACTSADD", "Add person");
	defined("PAGENAME_ORGADD")						?	null	:	define("PAGENAME_ORGADD", "Add organisation");
	defined("PAGENAME_CONTACTSDELETE")				?	null	:	define("PAGENAME_CONTACTSDELETE", "Delete person");
	defined("PAGENAME_ORGDELETE")					?	null	:	define("PAGENAME_ORGDELETE", "Delete organisation");
	defined("PAGENAME_CONTACTSUPDATE")				?	null	:	define("PAGENAME_CONTACTSUPDATE", "Update person");
	defined("PAGENAME_ORGUPDATE")					?	null	:	define("PAGENAME_ORGUPDATE", "Update organisation");
	defined("PAGENAME_CONTACTSVIEW")				?	null	:	define("PAGENAME_CONTACTSVIEW", "View person");
	defined("PAGENAME_ORGVIEW")						?	null	:	define("PAGENAME_ORGVIEW", "View organisation");
	defined("PAGENAME_API")							?	null	:	define("PAGENAME_API", "API");
	defined("PAGENAME_APIADD")						?	null	:	define("PAGENAME_APIADD", "Add API Token");
	defined("PAGENAME_APIDELETE")					?	null	:	define("PAGENAME_APIDELETE", "Delete API Token");
	defined("PAGENAME_APIUPDATE")					?	null	:	define("PAGENAME_APIUPDATE", "Update API Token");
	
	// Set page links
	defined("PAGELINK_INDEX")						?	null	:	define("PAGELINK_INDEX", "index.php");
	defined("PAGELINK_ORG")							?	null	:	define("PAGELINK_ORG", "org.php");
	defined("PAGELINK_NEWS")						?	null	:	define("PAGELINK_NEWS", "news.php");
	defined("PAGELINK_LOGIN")						?	null	:	define("PAGELINK_LOGIN", "login.php");
	defined("PAGELINK_LOGOUT")						?	null	:	define("PAGELINK_LOGOUT", "logout.php");
	defined("PAGELINK_USERS")						?	null	:	define("PAGELINK_USERS", "users.php");
	defined("PAGELINK_USERSDELETE")					?	null	:	define("PAGELINK_USERSDELETE", "delete-user.php");
	defined("PAGELINK_USERSUPDATE")					?	null	:	define("PAGELINK_USERSUPDATE", "update-user.php");
	defined("PAGELINK_LOGS")						?	null	:	define("PAGELINK_LOGS", "logs.php");
	defined("PAGELINK_CONTACTSADD")					?	null	:	define("PAGELINK_CONTACTSADD", "add-contact.php");
	defined("PAGELINK_ORGADD")						?	null	:	define("PAGELINK_ORGADD", "add-org.php");
	defined("PAGELINK_CONTACTSDELETE")				?	null	:	define("PAGELINK_CONTACTSDELETE", "delete-contact.php");
	defined("PAGELINK_ORGDELETE")					?	null	:	define("PAGELINK_ORGDELETE", "delete-org.php");
	defined("PAGELINK_CONTACTSUPDATE")				?	null	:	define("PAGELINK_CONTACTSUPDATE", "update-contact.php");
	defined("PAGELINK_ORGUPDATE")					?	null	:	define("PAGELINK_ORGUPDATE", "update-org.php");
	defined("PAGELINK_CONTACTSVIEW")				?	null	:	define("PAGELINK_CONTACTSVIEW", "view-contact.php");
	defined("PAGELINK_ORGVIEW")						?	null	:	define("PAGELINK_ORGVIEW", "view-org.php");
	defined("PAGELINK_API")							?	null	:	define("PAGELINK_API", "api.php");
	defined("PAGELINK_APIADD")						?	null	:	define("PAGELINK_APIADD", "add-api.php");
	defined("PAGELINK_APIDELETE")					?	null	:	define("PAGELINK_APIDELETE", "delete-api.php");
	defined("PAGELINK_APIUPDATE")					?	null	:	define("PAGELINK_APIUPDATE", "update-api.php");
	
	// Server time zone
	date_default_timezone_set("Europe/Moscow");
	
	// Autoload classes so that they are called as and when they are required
	spl_autoload_register(function($class_name) { 
		$class_name = strtolower($class_name);
		include('class.' . $class_name . '.inc.php');
	});
	
	// Begin running the Session as items in constructor are required for the system to function correctly
	$session = new Session();
	
	// Begin a new User instance as will automatically check details of the user if they are logged in etc
	$user = new User();
	
	// Site functions
	require_once("functions.inc.php");
?>