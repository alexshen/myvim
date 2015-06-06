" Menu Translations:	Traditional Chinese
" Translated By:	Hung-Te Lin	<piaip@csie.ntu.edu.tw>
" Last Change:		2012 May 01

" {{{ Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
" }}}

let s:keepcpo= &cpo
set cpo&vim

scriptencoding utf-8

" {{{ Help menu: complete
menutrans &Help			            (&H)
" ------------------------------------------------------------------------
menutrans &Overview<Tab><F1>	                  (&O)<Tab><F1>
menutrans &User\ Manual		               (&U)
menutrans &How-to\ links	         \.\.\.(&H)
menutrans &GUI			            (&G)
menutrans &Credits		      (&C)
menutrans Co&pying		      (&P)
menutrans &Sponsor/Register		      /      (&S)
menutrans O&rphans		            (&R)
" ------------------------------------------------------------------------
menutrans &Version		                  (&V)
menutrans &About		      \ Vim(&A)
" }}}

" {{{ File menu: complete
menutrans &File				      (&F)
" ------------------------------------------------------------------------
menutrans &Open\.\.\.<Tab>:e		      (&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	                     (&L)<Tab>:sp
menutrans &New<Tab>:enew		               (&N)<Tab>:enew
menutrans &Close<Tab>:close		            (&C)<Tab>:close
" ------------------------------------------------------------------------
menutrans &Save<Tab>:w			      (&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	            (&A)\.\.\.<Tab>:sav
" ------------------------------------------------------------------------
menutrans Split\ &Diff\ with\.\.\.	      (&Diff)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	      Patch(&B)\.\.\.
" ------------------------------------------------------------------------
menutrans &Print			      (&P)
" ------------------------------------------------------------------------
menutrans Sa&ve-Exit<Tab>:wqa		               (&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			      (&X)<Tab>:qa
" }}}

" {{{ Edit menu
menutrans &Edit				      (&E)
" ------------------------------------------------------------------------
menutrans &Undo<Tab>u			      (&U)<Tab>u
menutrans &Redo<Tab>^R			                  (&R)<Tab>^R
menutrans Rep&eat<Tab>\.		                  (&E)<Tab>\.
" ------------------------------------------------------------------------
menutrans Cu&t<Tab>"+x			      (&T)<Tab>"+x
menutrans &Copy<Tab>"+y			      (&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		      (&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		               (&B)<Tab>[p
menutrans Put\ &After<Tab>]p		               (&A)<Tab>]p
menutrans &Delete<Tab>x			      (&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		      (&S)<Tab>ggvG
" ------------------------------------------------------------------------
menutrans &Find\.\.\.			      (&F)\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	               (&L)\.\.\.
" ------------------------------------------------------------------------
menutrans Settings\ &Window		            (&W)
menutrans &Global\ Settings		            (&G)
menutrans F&ile\ Settings		               (&I)
menutrans C&olor\ Scheme		            (&O)
menutrans &Keymap			            (&K)
    " "{{{ Keymap:
    menutrans None			   
    " }}}
menutrans Select\ Fo&nt\.\.\.		            (&N)\.\.\.
" }}}

" {{{ Edit.FileSettings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!                      (&N)<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!	                         TAB(&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!	                            (&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!                                     (&R)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!	                TAB(&E)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!	                      (&A)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!	                         (&C)<Tab>:set\ cin!
" ------------------------------------------------------------------------
menutrans &Shiftwidth				                (shiftwidth)(&S)
menutrans Soft\ &Tabstop			                TAB(softtabstop)(&T)
menutrans Te&xt\ Width\.\.\.			                      (textwidth)(&X)\.\.\.
menutrans &File\ Format\.\.\.			                      (                  )(&F)\.\.\.
" }}}

" {{{ Edit.GlobalSettings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!                            (&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!	                          (&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!	                             (&S)<Tab>:set\ sm!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!	                 Vi            (&O)<Tab>:set\ cp!
menutrans &Context\ lines			                             (scrolloff)(&C)
menutrans &Virtual\ Edit			                       (virtualedit)(&V)
    " {{{ Edit.GlobalSettings.VirtualEdit
    menutrans Never				              
    menutrans Block\ Selection			                    
    menutrans Insert\ mode			                    
    menutrans Block\ and\ Insert		                          
    menutrans Always				                 
    " }}}
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	                       (&M)<Tab>:set\ im!
menutrans Search\ &Path\.\.\.			                 (&P)\.\.\.
menutrans Ta&g\ Files\.\.\.			     Tag\                   (&G)\.\.\.
" ------------------------------------------------------------------------
menutrans Toggle\ &Toolbar			                          (&T)
menutrans Toggle\ &Bottom\ Scrollbar		                                (&B)
menutrans Toggle\ &Left\ Scrollbar		                                (&L)
menutrans Toggle\ &Right\ Scrollbar		                                (&R)
" }}}

" {{{ Tools menu: complete
menutrans &Tools			      (&T)
" ------------------------------------------------------------------------
menutrans &Jump\ to\ this\ tag<Tab>g^]	                                 (tag)(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		                        (&B)<Tab>^T
menutrans Build\ &Tags\ File		                     \ Tags(&T)
" ------------------------------------------------------------------------
menutrans &Folding			      (Fold)      (&F)
    " {{{ Tools.Fold
    menutrans &Enable/Disable\ folds<Tab>zi	                \ Folding(&E)<Tab>zi
    menutrans &View\ Cursor\ Line<Tab>zv	                \ Fold(&V)<Tab>zv
    menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx                \ Fold(&W)<Tab>zMzx
    menutrans C&lose\ more\ folds<Tab>zm	                \ Folds(&L)<Tab>zm
    menutrans &Close\ all\ folds<Tab>zM		                \ Folds(&C)<Tab>zM
    menutrans O&pen\ more\ folds<Tab>zr		                \ Folds(&P)<Tab>zr
    menutrans &Open\ all\ folds<Tab>zR		                \ Folds(&O)<Tab>zR
    menutrans Fold\ Met&hod			    Folding\       (&H)
	" {{{ Tools.Fold.Method
	menutrans M&anual		            (&A)
	menutrans I&ndent		            (&N)
	menutrans E&xpression		               (&X)
	menutrans S&yntax		                  (&Y)
	menutrans &Diff			Diff(&D)
	menutrans Ma&rker		      (Marker)(&R)
	" }}}
    " ------------------------------------------------------------------------
    menutrans Create\ &Fold<Tab>zf		          \ Fold(&F)<Tab>zf
    menutrans &Delete\ Fold<Tab>zd		          \ Fold(&D)<Tab>zd
    menutrans Delete\ &All\ Folds<Tab>zD	                \ Fold(&A)<Tab>zD
    " ------------------------------------------------------------------------
    menutrans Fold\ column\ &width		          \ Fold      (&W)
    " }}}
menutrans &Diff				Diff(&D)
    " {{{ Tools.Diff
    menutrans &Update			      (&U)
    menutrans &Get\ Block		            (&G)
    menutrans &Put\ Block		            (&P)
    " }}}
" ------------------------------------------------------------------------
menutrans &Make<Tab>:make		      \ Make(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		                  (&E)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	                  (&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		                        (&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	                        (&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	                     (&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	                     (&E)<Tab>:cnew
menutrans Error\ &Window		                  (&W)
    " {{{ Tools.ErrorWindow
    menutrans &Update<Tab>:cwin		      (&U)<Tab>:cwin
    menutrans &Open<Tab>:copen		      (&O)<Tab>:copen
    menutrans &Close<Tab>:cclose	      (&C)<Tab>:cclose
    " }}}
menutrans &Set\ Compiler		               Compiler(&S)
" ------------------------------------------------------------------------
menutrans &Convert\ to\ HEX<Tab>:%!xxd	         16         (&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	   16                        (&R)<Tab>:%!xxd\ -r
" }}}

" {{{ Syntax menu: compete
menutrans &Syntax		                (&S)
" ------------------------------------------------------------------------
menutrans &Show\ filetypes\ in\ menu	                              (&S)
menutrans Set\ '&syntax'\ only	             \ 'syntax'(&S)
menutrans Set\ '&filetype'\ too	          \ 'syntax'+'filetype'(&F)
menutrans &Off			                (&O)
menutrans &Manual		                (&M)
menutrans A&utomatic		                (&U)
menutrans on/off\ for\ &This\ file                                (&T)
" ------------------------------------------------------------------------
menutrans Co&lor\ test		                      (&L)
menutrans &Highlight\ test	                      (&H)
menutrans &Convert\ to\ HTML	             \ HTML\       (&C)
" }}}

" {{{ Buffers menu: complete
menutrans &Buffers			         (&B)
" ------------------------------------------------------------------------
menutrans &Refresh\ menu		      (&R)
menutrans &Delete			      (&D)
menutrans &Alternate			                           (&A)
menutrans &Next				         (&N)
menutrans &Previous			         (&P)
" ------------------------------------------------------------------------
" menutrans [No\ file]			[         ]
" }}}

" {{{ Window menu: complete
menutrans &Window			      (&W)
" ------------------------------------------------------------------------
menutrans &New<Tab>^Wn			            (&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		            (&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	         #(&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	            (&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	                     (&X)
" ------------------------------------------------------------------------
menutrans &Close<Tab>^Wc		            (&C)<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	                  (&O)<Tab>^Wo
" ------------------------------------------------------------------------
menutrans Move\ &To			      (&T)
    " {{{ Window.MoveTo
    menutrans &Top<Tab>^WK		      (&T)<Tab>^WK
    menutrans &Bottom<Tab>^WJ		      (&B)<Tab>^WJ
    menutrans &Left\ side<Tab>^WH	      (&L)<Tab>^WH
    menutrans &Right\ side<Tab>^WL	      (&R)<Tab>^WL
    " }}}
menutrans Rotate\ &Up<Tab>^WR		            (&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		            (&D)<Tab>^Wr
" ------------------------------------------------------------------------
menutrans &Equal\ Size<Tab>^W=		                  (&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		            (&M)<Tab>^W
menutrans M&in\ Height<Tab>^W1_		            (&I)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		            (&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		            (&H)<Tab>^W1\|
" }}}

" {{{ The popup menu: complete
menutrans &Undo				      (&U)
" ------------------------------------------------------------------------
menutrans Cu&t				      (&T)
menutrans &Copy				      (&C)
menutrans &Paste			      (&P)
menutrans &Delete			      (&D)
" ------------------------------------------------------------------------
menutrans Select\ Blockwise		Blockwise         
menutrans Select\ &Word			            (&W)
menutrans Select\ &Line			         (&L)
menutrans Select\ &Block		            (&B)
menutrans Select\ &All			      (&A)
" }}}

" {{{ The GUI toolbar: complete
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		            
    tmenu ToolBar.Save		                              
    tmenu ToolBar.SaveAll	                  
    tmenu ToolBar.Print		  �   
" ------------------------------------------------------------------------
    tmenu ToolBar.Undo		                  
    tmenu ToolBar.Redo		                        
" ------------------------------------------------------------------------
    tmenu ToolBar.Cut		                  
    tmenu ToolBar.Copy		                  
    tmenu ToolBar.Paste		                  
" ------------------------------------------------------------------------
    tmenu ToolBar.Find		      ...
    tmenu ToolBar.FindNext	            
    tmenu ToolBar.FindPrev	            
    tmenu ToolBar.Replace	      ...
" ------------------------------------------------------------------------
    tmenu ToolBar.LoadSesn	       Session
    tmenu ToolBar.SaveSesn	                Session
    tmenu ToolBar.RunScript	       Vim          
" ------------------------------------------------------------------------
    tmenu ToolBar.Make		       Make
    tmenu ToolBar.Shell		                            DosBox
    tmenu ToolBar.RunCtags	       ctags
    tmenu ToolBar.TagJump	                            tag
    tmenu ToolBar.Help		Vim             
    tmenu ToolBar.FindHelp	       Vim             
  endfun
endif
" }}}

let &cpo = s:keepcpo
unlet s:keepcpo

" vim:foldmethod=marker:nowrap:foldcolumn=2:foldlevel=1
