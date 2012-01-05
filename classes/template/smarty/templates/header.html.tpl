<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="de" dir="ltr">
	<head>
		<meta name="Content-Type" content="text/html; charset={$CHARSET}" />
		<link rel="stylesheet" href="styles/default.css" type="text/css" />
		<link rel="icon" type="image/png" href="images/favicon.png" />
		<title>Junge Piraten &bull; {$title|escape:html}</title>
		{literal}
		<script type="text/javascript">
		<!--
		function showLoginBar() {
			document.getElementById('login').style.display = "block";
			document.getElementById('login').getElementsByTagName('input')[0].focus();
		}
		//-->
		</script>
		{/literal}
	</head>
<body>
	<div class="seite">
		<div class="headerdiv">
			<div class="buttondiv">
				<a href="index.php" class="start">Start</a>
				| <a href="unread.php">Alle als gelesen markieren</a> 
				| <a href="https://ucp.junge-piraten.de/index.php?module=lists" class="lists">Mailinglisten</a>
				{if $ISANONYMOUS}
				| <a href="login.php" class="login" onClick="showLoginBar(); return false;">Anmelden</a>
				| <a class="register" href="https://ucp.junge-piraten.de/index.php?module=register">Registrieren</a>
				{else}
				| <a href="https://ucp.junge-piraten.de/" class="editprofile">{$ADDRESS}</a>
				| <a class="logout" href="logout.php">Abmelden</a>
				{/if}
			</div>
			<a href="index.php"><img src="images/logo.png" class="logo" alt="Zur Forenübersicht"/></a>
		</div>
		<form class="headerLogin" style="display:none;" id="login" action="login.php" method="post">
			<fieldset>
				<input type="hidden" name="redirect" value="{$smarty.server.REQUEST_ADDRESS}" />
				<label for="username" class="username">Benutzername:</label>
				<input type="text" class="username" name="username" value="{if isset($smarty.request.username)}{$smarty.request.username|stripslashes|escape:html}{/if}" />
				<label for="password" class="password">Passwort:</label>
				<input type="password" class="password" name="password" id="password"/>
				<input type="checkbox" class="permanent" name="permanent" id="permanent"/> <label for="permanent">Dauerhaft anmelden?</label>

				<input type="submit" class="submit" name="login" value="Login" />
			</fieldset>
		</form>
		<a href="http://piratenpad.de/jupis-nntpboard-vorschlaege">Bitte hilf mit, NNTPBoard zu verbessern!</a>
		<h1 class="mainname">{$title|escape:html}</h1>
