#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, +AlwaysOnTop -MinimizeBox -MaximizeBox
Gui, Show, w230 h130, Salesforce Helper

Gui, Add, Button, x10 y10 w100 h30 gTab, Copy Tab Code
Gui, Add, Button, x10 y50 w100 h30 gCollapse, Copy Collapsible Code
Gui, Add, Button, x10 y90 w100 h30 gDrop, Copy Dropdown Code
Gui, Add, Button, x120 y10 w100 h30 gButton, Copy Button Code
Gui, Add, Button, x120 y50 w100 h30 gError, Copy Error Code

return

Tab:
{
	clipboard = <div class="c-tabs-container"> `n
			<ul class="c-tabs-menu"> `n
			<li class="c-current"><a href="#c-tab-windows">Windows</a></li> `n
			<li><a href="#c-tab-mac">Mac</a></li> `n
			</ul> `n
			<div class="c-tab"> `n
			<div class="c-tab-content" id="c-tab-windows"> `n
			<p>CONTENT</p> `n
			</div> `n
			<div class="c-tab-content c-hidden" id="c-tab-mac"> `n
			<p>CONTENT</p> `n
			</div> `n
			</div> `n
			</div> `n
}
return

Collapse:
{
	clipboard = <div class="c-collapsible"> `n
				<div class="c-collapsible-title">Collapsible Title</div> `n
				<div class="c-collapsible-content"> `n
				<p>CONTENT</p> `n
				</div> `n
				</div> `n
}
return

Drop:
{
	clipboard = <div class="dropdown-block"> `n
				<ul class="c-nav"> `n
				<li class="c-button-dropdown"><span class="c-dropdown-toggle">Please select your OS</span> `n
				<ul class="c-dropdown-menu"> `n
				<li><a href="#" id="section-one">Windows</a></li> `n
				<li><a href="#" id="section-two">Mac</a></li> `n
				<li><a href="#" id="section-three">iOS</a></li> `n
				<li><a href="#" id="section-four">Android</a></li> `n
				</ul> `n
				</li> `n
				</ul> `n
				<div class="c-dropdown-section section-one">OPTION 1 CONTENT</div> `n
				<div class="c-dropdown-section c-hidden section-two">OPTION 2 CONTENT</div> `n
				<div class="c-dropdown-section c-hidden section-three">OPTION 3 CONTENT</div> `n
				<div class="c-dropdown-section c-hidden section-four">OPTION 4 CONTENT</div> `n
</div>
}
return

Button:
{
	clipboard = <a class="st-btn st-btn-primary st-btn-lg" href="#">CONTENT</a>
}
return

Error:
{
	clipboard = <div class="error-message">CONTENT</div>
}
return

GuiClose:
ExitApp