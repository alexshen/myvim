" Menu Translations:	Simplified Chinese <i18n-translation@lists.linux.net.cn>
" Translated By:	Yuheng Xie <elephant@linux.net.cn>
" Last Change:		Tue Apr 18 22:00:00 2006

" vim: ts=8 sw=8 noet

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding cp936

" Help menu
menutrans &Help			    (&H)
menutrans &Overview<Tab><F1>	    (&O)<Tab><F1>
menutrans &User\ Manual		        (&U)
menutrans &How-to\ links	How-to\    x(&H)
menutrans &Find\.\.\.		    (&F)\.\.\.
menutrans &Credits		    (&C)
menutrans Co&pying		    (&P)
menutrans &Sponsor/Register	    /    (&S)
menutrans O&rphans		    (&R)
menutrans &Version		    (&V)
menutrans &About		    (&A)

" File menu
menutrans &File				    (&F)
menutrans &Open\.\.\.<Tab>:e		    (&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	          (&L)\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	        \.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		    (&N)<Tab>:enew
menutrans &Close<Tab>:close		    (&C)<Tab>:close
menutrans &Save<Tab>:w			    (&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	      (&A)\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	        (Diff)(&D)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	          (Patch)(&B)\.\.\.
menutrans &Print			    (&P)
menutrans Sa&ve-Exit<Tab>:wqa		          (&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			    (&X)<Tab>:qa

" Edit menu
menutrans &Edit				    (&E)
menutrans &Undo<Tab>u			    (&U)<Tab>u
menutrans &Redo<Tab>^R			    (&R)<Tab>^R
menutrans Rep&eat<Tab>\.		            (&E)<Tab>\.
menutrans Cu&t<Tab>"+x			    (&T)<Tab>"+x
menutrans &Copy<Tab>"+y			    (&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		    (&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		            (&B)<Tab>[p
menutrans Put\ &After<Tab>]p		            (&A)<Tab>]p
menutrans &Delete<Tab>x			   x(&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		    (&S)<Tab>ggVG
menutrans &Find\.\.\.			    (&F)\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	          (&L)\.\.\.
menutrans &Find<Tab>/			    (&F)<Tab>/
menutrans Find\ and\ Rep&lace<Tab>:%s	          (&L)<Tab>:%s
menutrans Settings\ &Window		        (&W)
menutrans Startup\ &Settings		        (&S)
menutrans &Global\ Settings		        (&G)

" Edit/Global Settings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!	  /          (&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		  /            (&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		  /          (&S)<Tab>:set\ sm!
menutrans &Context\ lines			         x(&C)

menutrans &Virtual\ Edit			        (&V)
menutrans Never					    
menutrans Block\ Selection			      
menutrans Insert\ mode				        
menutrans Block\ and\ Insert			                
menutrans Always				    

menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	  /          (&M)<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!	  /  \ Vi\     <Tab>:set\ cp!
menutrans Search\ &Path\.\.\.			        (&P)\.\.\.
menutrans Ta&g\ Files\.\.\.			Tag\     (&T)\.\.\.

" GUI options
menutrans Toggle\ &Toolbar			  /        (&T)
menutrans Toggle\ &Bottom\ Scrollbar		  /            (&B)
menutrans Toggle\ &Left\ Scrollbar		  /            (&L)
menutrans Toggle\ &Right\ Scrollbar		  /            (&R)

" Edit/File Settings
menutrans F&ile\ Settings			        (&I)

" Boolean options
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	  /          (&N)<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		  /  \ list\     (&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		  /      (&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	  /          (&R)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		  /      \ tab(&E)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		  /          (&A)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		  /  \ C\     (&C)<Tab>:set\ cin!

" other options
menutrans &Shiftwidth			        (&S)
menutrans Soft\ &Tabstop		Soft\ Tab\     (&T)
menutrans Te&xt\ Width\.\.\.		        (&X)\.\.\.
menutrans &File\ Format\.\.\.		        (&F)\.\.\.
menutrans C&olor\ Scheme		        (&O)
menutrans Select\ Fo&nt\.\.\.		        (&N)\.\.\.
menutrans &Keymap			 �      (&K)

" Programming menu
menutrans &Tools			    (&T)
menutrans &Jump\ to\ this\ tag<Tab>g^]	          \ tag(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		        (&B)<Tab>^T
menutrans Build\ &Tags\ File		    \ Tags\     (&T)

" Tools.Spelling Menu
menutrans &Spelling				        (&S)
menutrans &Spell\ Check\ On			            (&S)
menutrans Spell\ Check\ &Off			            (&O)
menutrans To\ &Next\ error<Tab>]s		          (&N)<Tab>]s
menutrans To\ &Previous\ error<Tab>[s		          (&P)<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=		   x    (&C)<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	       x(&R)<Tab>:spellrepall
menutrans Set\ language\ to\ "en"		          \ "en"
menutrans Set\ language\ to\ "en_au"		          \ "en_au"
menutrans Set\ language\ to\ "en_ca"		          \ "en_ca"
menutrans Set\ language\ to\ "en_gb"		          \ "en_gb"
menutrans Set\ language\ to\ "en_nz"		          \ "en_nz"
menutrans Set\ language\ to\ "en_us"		          \ "en_us"
menutrans &Find\ More\ Languages		     �      (&F)

" Tools.Fold Menu
" open close folds
menutrans &Folding				    (&F)
menutrans &Enable/Disable\ folds<Tab>zi		    /        (&E)<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv		        (&V)<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	          (&W)<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm		     �      (&L)<Tab>zm
menutrans &Close\ all\ folds<Tab>zM		            (&C)<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr		     �      (&P)<Tab>zr
menutrans &Open\ all\ folds<Tab>zR		            (&O)<Tab>zR
" fold method
menutrans Fold\ Met&hod			        (&H)
menutrans M&anual			    (&A)
menutrans I&ndent			    (&N)
menutrans E&xpression			      (&X)
menutrans S&yntax			    (&Y)
menutrans &Diff				    (Diff)(&D)
menutrans Ma&rker			    (&R)
" create and delete folds
menutrans Create\ &Fold<Tab>zf		        (&F)<Tab>zf
menutrans &Delete\ Fold<Tab>zd		   x    (&D)<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	   x        (&A)<Tab>zD
" moving around in folds
menutrans Fold\ column\ &width		          (&W)

" Tools.Diff Menu
menutrans &Diff				    (Diff)(&D)
menutrans &Update			 �  (&U)
menutrans &Get\ Block			      (&G)
menutrans &Put\ Block			      (&P)

menutrans &Make<Tab>:make		Make(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		        (&L)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	        (&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		          (&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	          (&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	 �            (&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	 �            (&E)<Tab>:cnew
menutrans Error\ &Window		        (&W)
menutrans &Update<Tab>:cwin		 �  (&U)<Tab>:cwin
menutrans &Open<Tab>:copen		    (&O)<Tab>:copen
menutrans &Close<Tab>:cclose		    (&C)<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	              <Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	        <Tab>:%!xxd\ -r
menutrans Se&T\ Compiler		          (&T)

" Names for buffer menu.
menutrans &Buffers		      (&B)
menutrans &Refresh\ menu	 �      (&R)
menutrans &Delete		   x(&D)
menutrans &Alternate		    (&A)
menutrans &Next			      (&N)
menutrans &Previous		      (&P)

" Window menu
menutrans &Window			    (&W)
menutrans &New<Tab>^Wn			    (&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		    (&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	      \ #(&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	        (&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	              (&X)
menutrans &Close<Tab>^Wc		    (&C)<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	       �    (&O)<Tab>^Wo
menutrans Move\ &To			      (&T)
menutrans &Top<Tab>^WK			    (&T)<Tab>^WK
menutrans &Bottom<Tab>^WJ		    (&B)<Tab>^WJ
menutrans &Left\ side<Tab>^WH		    (&L)<Tab>^WH
menutrans &Right\ side<Tab>^WL		    (&R)<Tab>^WL
" menutrans Ne&xt<Tab>^Ww		      (&X)<Tab>^Ww
" menutrans P&revious<Tab>^WW		      (&R)<Tab>^WW
menutrans Rotate\ &Up<Tab>^WR		        (&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		        (&D)<Tab>^Wr
menutrans &Equal\ Size<Tab>^W=		    (&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		        (&M)<Tab>^W
menutrans M&in\ Height<Tab>^W1_		        (&I)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		        (&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		        (&H)<Tab>^W1\|
"
" The popup menu
menutrans &Undo			    (&U)
menutrans Cu&t			    (&T)
menutrans &Copy			    (&C)
menutrans &Paste		    (&P)
menutrans &Delete		   x(&D)
menutrans Select\ Blockwise	      
menutrans Select\ &Word		        (&W)
menutrans Select\ &Sentence	        (&S)
menutrans Select\ Pa&ragraph	        (&R)
menutrans Select\ &Line		      (&L)
menutrans Select\ &Block	      (&B)
menutrans Select\ &All		    (&A)
"
" The GUI toolbar
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		        
    tmenu ToolBar.Save		            
    tmenu ToolBar.SaveAll	            
    tmenu ToolBar.Print		    
    tmenu ToolBar.Undo		    
    tmenu ToolBar.Redo		    
    tmenu ToolBar.Cut		            
    tmenu ToolBar.Copy		            
    tmenu ToolBar.Paste		            
    tmenu ToolBar.Find		    ...
    tmenu ToolBar.FindNext	          
    tmenu ToolBar.FindPrev	          
    tmenu ToolBar.Replace	          ...
    tmenu ToolBar.LoadSesn	        
    tmenu ToolBar.SaveSesn	            
    tmenu ToolBar.RunScript	     Vim     
    tmenu ToolBar.Make		     Make (:make)
    tmenu ToolBar.RunCtags	               tags (!ctags -R .)
    tmenu ToolBar.TagJump	                 tag
    tmenu ToolBar.Help		Vim     
    tmenu ToolBar.FindHelp	     Vim     
  endfun
endif

" Syntax menu
menutrans &Syntax			    (&S)
menutrans &Show\ filetypes\ in\ menu	                    (&S)
menutrans &Off				    (&O)
menutrans &Manual			    (&M)
menutrans A&utomatic			    (&U)
menutrans on/off\ for\ &This\ file	              /  (&T)
menutrans Co&lor\ test			        (&L)
menutrans &Highlight\ test		        (&H)
menutrans &Convert\ to\ HTML		      \ HTML(&C)
menutrans Set\ '&syntax'\ only		      \ 'syntax'(&S)
menutrans Set\ '&filetype'\ too		      \ 'filetype'(&F)

let &cpo = s:keepcpo
unlet s:keepcpo
