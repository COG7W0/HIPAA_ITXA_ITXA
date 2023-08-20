<HTML>
<HEAD>
	<link href="$MQAROUTEURL$/plugin/jquery/themes/smoothness/jquery-ui.min.css" rel="stylesheet">
	<link href="$MQAROUTEURL$/styles/css/compliance_check_tack_mod.css" rel="stylesheet" type="text/css">
	<script src="$MQAROUTEURL$/plugin/jquery/dist/jquery.min.js"></script>	
	<script src="$MQAROUTEURL$/plugin/jquery-ui/jquery-ui.min.js"></script>	
	<SCRIPT TYPE="TEXT/JAVASCRIPT">
		var lastElement = null;
		function openShut(gif, list)	
		{	
			var style = document.getElementById(list).style;	
			if (style.display == "none")	
			{
				style.display = "block";	
				document.getElementById(gif).src="$MQAROUTEURL$/styles/img/minus.png";	
				document.getElementById(gif).alt="Close";	
			}
			else
			{	
				style.display="none";	
				document.getElementById(gif).src="$MQAROUTEURL$/styles/img/plus.png";	
				document.getElementById(gif).alt="Open";	
			}	
		}
		function openDialog(anchor)	
		{	
			jQuery("#dialog").data("anchor", anchor).dialog('open');
		};
		var onOpenDialog = function()
		{
			// routine to manage the dialog open - this will happen after the animation
			jQuery(this).parent().promise().done(function () 
			{
				if (lastElement != null)
					lastElement.css('background', 'none');
						
				var container = jQuery("#dialog");
				var anchor = container.data("anchor");
				var target = jQuery(jQuery(container).find('[name="' + anchor + '"]')[0]);
				var myContainer = jQuery(container);
				
				target.css('background', 'yellow');
				myContainer.scrollTop(target.offset().top - myContainer.offset().top + myContainer.scrollTop());

				lastElement = target;
			});
		};
		var onLoad = function()
		{
			var content = jQuery('#payload').html();
			var title = 'EDI Payload';
			jQuery("#dialog").attr('title', title).html(content).dialog({
				modal: true,
				width: "auto",
				height: 400,
				resizable: true,
				open: onOpenDialog,
				position: { my: "center bottom", at: "center center", of: window },
				autoOpen: false,
				show: {
					effect: "slide",
					duration: 500
				},
				hide: {
				effect: "fade",
				duration: 500
				},
				
				buttons : {
					"Cancel" : function() {
						jQuery(this).dialog("close");
					} 
				}
			});
		};
		jQuery(document).ready(onLoad);
	</SCRIPT>
	<TITLE>Compliance Check HTML Readable Results</TITLE> 
	
</HEAD>
<BODY>
$SUMMARY_BODY$
<div id="dialog">	
<div id="payload">
	$DETAIL_BODY$
</div>
</BODY>
</HTML>