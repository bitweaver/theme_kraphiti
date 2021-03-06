{include file="bitpackage:kernel/header.tpl"}

{if $print_page ne "y"}

{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
<div dir="rtl">
{/if}

<div id="tikibody">

	{include file="bitpackage:kernel/top.tpl"}

	{if $gBitSystem->isFeatureActive( 'site_top_bar' )}
		{include file="bitpackage:kernel/top_bar.tpl"}
	{/if}

	{if $gBitSystem->isFeatureActive( 'site_top_column' ) && $t_modules && !$gHideModules}
		{section name=homeix loop=$t_modules}
			{$t_modules[homeix].data}
		{/section}
	{/if}

	{if $gBitSystem->isFeatureActive( 'site_left_column' ) && $l_modules && !$gHideModules}
	<div id="bitleft">
		{section name=homeix loop=$l_modules}
		{$l_modules[homeix].data}
		{/section}
	</div>
	{/if}
  
	<div id="tikimain">
		{include file="bitpackage:liberty/display_structure.tpl"}
		{include file=$mid}
    </div>

	{if $gBitSystem->isFeatureActive( 'site_right_column' ) && $r_modules && !$gHideModules}
	<div id="bitright">
		{section name=homeix loop=$r_modules}
		{$r_modules[homeix].data}
		{/section}
	</div>
	{/if}

	{if $gBitSystem->isFeatureActive( 'site_bot_bar' )}
	<div id="tikibottom">
		{include file="bitpackage:kernel/bot_bar.tpl"}
	</div>
	{/if}

</div> <!-- end #tikibody -->

{if $gBitSystem->isFeatureActive( 'bidirectional_text' )}
</div>
{/if}

{include file="bitpackage:kernel/footer.tpl"}

{/if}
