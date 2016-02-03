<?php
// Allow List - returns false if not found

if (!defined('ABSPATH')) exit;

class chkdisp {
	public function process($ip,&$stats=array(),&$options=array(),&$post=array()) {
		
		if (empty($options['em'])) return false;

		$disposables=array(
		'0815.ru','0clickemail.com','0wnd.net','0wnd.org','10minutemail.com',
		'1chuan.com','1zhuan.com','20minutemail.com','2prong.com','3d-painting.com',
		'4warding.com','4warding.net','4warding.org','675hosting.com',
		'675hosting.net','675hosting.org','6url.com','75hosting.com',
		'75hosting.net','75hosting.org','9ox.net','a-bc.net','afrobacon.com',
		'ajaxapp.net','amilegit.com','amiri.net','amiriindustries.com',
		'anonbox.net','anonymail.dk','anonymbox.com','antichef.com',
		'antichef.net','antispam.de','baxomale.ht.cx','beefmilk.com','binkmail.com',
		'bio-muesli.net','blogmyway.org','bobmail.info','bodhi.lawlita.com',
		'bofthew.com','brefmail.com','bsnow.net','bugmenot.com','bumpymail.com',
		'buyusedlibrarybooks.org','casualdx.com','centermail.com','centermail.net',
		'chogmail.com','choicemail1.com','cool.fr.nf','correo.blogos.net',
		'cosmorph.com','courriel.fr.nf','courrieltemporaire.com','curryworld.de',
		'cust.in','dacoolest.com','dandikmail.com','deadaddress.com','deadspam.com',
		'despam.it','despammed.com','devnullmail.com','dfgh.net',
		'digitalsanctuary.com','discardmail.com','discardmail.de',
		'disposableaddress.com','disposeamail.com','disposemail.com',
		'dispostable.com','dm.w3internet.co.uk example.com','dodgeit.com',
		'dodgit.com','dodgit.org','dontreg.com','dontsendmespam.de','dotmsg.com',
		'dresssmall.com','dump-email.info','dumpandjunk.com','dumpmail.de',
		'dumpyemail.com','e4ward.com','email60.com','emaildienst.de','emailias.com',
		'emailinfive.com','emailmiser.com','emailtemporario.com.br','emailto.de',
		'emailwarden.com','emailxfer.com','emz.net','enterto.com','ephemail.net',
		'etranquil.com','etranquil.net','etranquil.org','explodemail.com',
		'fakeinbox.com','fakeinformation.com','fakemailz.com','fastacura.com',
		'fastchevy.com','fastchrysler.com','fastkawasaki.com','fastmazda.com',
		'fastmitsubishi.com','fastnissan.com','fastsubaru.com','fastsuzuki.com',
		'fasttoyota.com','fastyamaha.com','filzmail.com','fizmail.com','footard.com',
		'forgetmail.com','frapmail.com','front14.org','fux0ringduh.com',
		'garliclife.com','get1mail.com','getonemail.com','getonemail.net',
		'ghosttexter.de','girlsundertheinfluence.com','gishpuppy.com',
		'gowikibooks.com','gowikicampus.com','gowikicars.com','gowikifilms.com',
		'gowikigames.com','gowikimusic.com','gowikinetwork.com','gowikitravel.com',
		'gowikitv.com','great-host.in','greensloth.com','gsrv.co.uk',
		'guerillamail.biz','guerillamail.com','guerillamail.net','guerillamail.org',
		'guerrillamail.com','guerrillamail.net','guerrillamailblock.com','h8s.org',
		'haltospam.com','hatespam.org','hidemail.de','hotpop.com','ieatspam.eu',
		'ieatspam.info','ihateyoualot.info','iheartspam.org','imails.info',
		'imstations.com','inboxclean.com','inboxclean.org','incognitomail.com',
		'incognitomail.net','ipoo.org','irish2me.com','iwi.net','jetable.com',
		'jetable.fr.nf','jetable.net','jetable.org','jnxjn.com','junk1e.com',
		'kasmail.com','kaspop.com','killmail.com','killmail.net','klassmaster.com',
		'klassmaster.net','klzlk.com','kulturbetrieb.info','kurzepost.de',
		'lifebyfood.com','link2mail.net','litedrop.com','lookugly.com','lopl.co.cc',
		'lortemail.dk','lovemeleaveme.com','lr78.com','maboard.com','mail.by',
		'mail.mezimages.net','mail2rss.org','mail333.com','mail4trash.com',
		'mailbidon.com','mailblocks.com','mailcatch.com','maileater.com',
		'mailexpire.com','mailfreeonline.com','mailin8r.com','mailinater.com',
		'mailinator.com','mailinator.net','mailinator2.com','mailincubator.com',
		'mailme.lv','mailmoat.com','mailnator.com','mailnull.com','mailquack.com',
		'mailshell.com','mailsiphon.com','mailslapping.com','mailzilla.com',
		'mailzilla.org','mbx.cc','mega.zik.dj','meinspamschutz.de','meltmail.com',
		'messagebeamer.de','mierdamail.com','mintemail.com','moncourrier.fr.nf',
		'monemail.fr.nf','monmail.fr.nf','mt2009.com','mx0.wwwnew.eu',
		'mycleaninbox.net','myspaceinc.com','myspaceinc.net','myspaceinc.org',
		'myspacepimpedup.com','myspamless.com','mytrashmail.com','neomailbox.com',
		'nervmich.net','nervtmich.net','netmails.com','netmails.net','netzidiot.de',
		'neverbox.com','no-spam.ws','nobulk.com','noclickemail.com','nogmailspam.info',
		'nomail.xl.cx','nomail2me.com','nospam.ze.tc','nospam4.us','nospamfor.us',
		'nowmymail.com','nurfuerspam.de','objectmail.com','obobbo.com',
		'oneoffemail.com','oneoffmail.com','onewaymail.com','oopi.org',
		'ordinaryamerican.net','ourklips.com','outlawspam.com','owlpic.com',
		'pancakemail.com','pimpedupmyspace.com','poofy.org','pookmail.com',
		'privacy.net','proxymail.eu','punkass.com','putthisinyourspamdatabase.com',
		'quickinbox.com','rcpt.at','recode.me','recursor.net','recyclemail.dk',
		'regbypass.comsafe-mail.net','rejectmail.com','rklips.com','safersignup.de',
		'safetymail.info','sandelf.de','saynotospams.com','selfdestructingmail.com',
		'sendspamhere.com','shiftmail.com','shitmail.me','shortmail.net',
		'sibmail.com','skeefmail.com','slaskpost.se','slopsbox.com','smellfear.com',
		'snakemail.com','sneakemail.com','sofort-mail.de','sogetthis.com',
		'soodonims.com','spam.la','spamavert.com','spambob.com','spambob.net',
		'spambob.org','spambog.com','spambog.de','spambog.ru','spambox.info',
		'spambox.us','spamcannon.com','spamcannon.net','spamcero.com','spamcon.org',
		'spamcorptastic.com','spamcowboy.com','spamcowboy.net','spamcowboy.org',
		'spamday.com','spamex.com','spamfree24.com','spamfree24.de','spamfree24.eu',
		'spamfree24.info','spamfree24.net','spamfree24.org','spamgourmet.com',
		'spamgourmet.net','spamgourmet.org','spamherelots.com','spamhereplease.com',
		'spamhole.com','spamify.com','spaminator.de','spamkill.info','spaml.com',
		'spaml.de','spammotel.com','spamobox.com','spamoff.de','spamslicer.com',
		'spamspot.com','spamthis.co.uk','spamthisplease.com','spamtrail.com',
		'speed.1s.fr','suremail.info','tempalias.com','tempe-mail.com',
		'tempemail.biz','tempemail.com','tempemail.net','tempinbox.co.uk',
		'tempinbox.com','tempomail.fr','temporarily.de','temporaryemail.net',
		'temporaryforwarding.com','temporaryinbox.com','thankyou2010.com',
		'thisisnotmyrealemail.com','throwawayemailaddress.com','tilien.com',
		'tmailinator.com','tradermail.info','trash-amil.com','trash-mail.at',
		'trash-mail.com','trash-mail.de','trash2009.com','trashdevil.com',
		'trashdevil.de','trashmail.at','trashmail.com','trashmail.de','trashmail.me',
		'trashmail.net','trashmail.org','trashmailer.com','trashymail.com',
		'trashymail.net','turual.com','twinmail.de','tyldd.com','uggsrock.com',
		'upliftnow.com','uplipht.com','venompen.com','viditag.com','viewcastmedia.com',
		'viewcastmedia.net','viewcastmedia.org','walala.org','wegwerfadresse.de',
		'wegwerfmail.de','wegwerfmail.net','wegwerfmail.org','wetrainbayarea.com',
		'wetrainbayarea.org','wh4f.org','whopy.com','whyspam.me','wilemail.com',
		'willselfdestruct.com','winemaven.info','wronghead.com','wuzup.net',
		'wuzupmail.net','wwwnew.eu','xagloo.com','xemaps.com','xents.com','xmaily.com',
		'xoxy.net','yep.it','yogamaven.com','yopmail.com','yopmail.fr','yopmail.net',
		'yuurok.com','zippymail.info','zoemail.org');
		$emdomain=explode('@',$options['em']);
		if (count($emdomain)==2&&in_array(strtolower($emdomain[1]),$disposables)) {
			// the email is a disposable email address
			// do you really want this guy????
			return 'Disposable em:'.$options['em'];
		}
		return false;

	}
}
?>