<table class="table table-striped">
<thead>
<tr>
 <th colspan=2>{if isset($boardid)}<a class="name" href="viewboard.php?boardid={$boardid|escape:url}" title="{$subboard.desc|escape:html}">{$name}</a>{else}{$name}{/if}</th>
 <th>Themen</th>
 <th>Beitr&auml;ge</th>
 <th>Letzte Antwort</th>
</tr>
</thead>
<tbody>
{foreach from=$boards item=board name=counter}
{if $zeigekategorien || $board.hasthreads}
 <tr onClick="document.location.href = document.getElementById('board{$boardid}.{$smarty.foreach.counter.iteration}').href;">
  <td class="span1">{if $board.unread}<a href="unread.php?markread={$boardid|escape:url}">{/if}<img src="images/flagge{if $board.unread}_unread{/if}.png" />{if $board.unread}</a>{/if}</td>
  <td>
  <a class="name" id="board{$boardid}.{$smarty.foreach.counter.iteration}" href="viewboard.php?boardid={$board.boardid|escape:url}" title="{$subboard.desc|escape:html}">{$board.name|escape:html}</a><br>
	  <span>{$board.desc}</span>
   </td>
   <td class="span2">
  {if isset($board.threadcount)}
  <span>{$board.threadcount|escape:html}</span>
  {else}
  <span> - </span>
  {/if}
  </td>
   <td class="span2">
  {if isset($board.messagecount)}
  <span>{$board.messagecount|escape:html}</span>
  {else}
  <span> - </span>
  {/if}
  </td>
  <td class="span4">
  {if isset($board.lastpostmessageid)}
  <a class="subject" href="viewthread.php?boardid={$board.lastpostboardid|escape:url}&amp;threadid={$board.lastpostthreadid|encodeMessageID|escape:url}">{$board.lastpostsubject|escape:html}</a>
  <span class="info">von </span><span class="author">{include file=address.html.tpl address=$board.lastpostauthor}</span><br>
  <span class="info">am </span><a class="date" href="viewthread.php?boardid={$board.lastpostboardid|escape:url}&amp;messageid={$board.lastpostmessageid|encodeMessageID|escape:url}">{$board.lastpostdate|date_format:"%d.%m.%Y %H:%M"}</a>
  {else}
  <span> - </span>
  {/if}
  </td>
  </tr>
{/if}
{/foreach}
</tbody>
</table>
