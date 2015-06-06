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

scriptencoding cp950

" {{{ Help menu: complete
menutrans &Help			   U    (&H)
" ------------------------------------------------------------------------
menutrans &Overview<Tab><F1>	         ` x(&O)<Tab><F1>
menutrans &User\ Manual		         U(&U)
menutrans &How-to\ links	 p   @\.\.\.(&H)
menutrans &GUI			        (&G)
menutrans &Credits		 P  (&C)
menutrans Co&pying		   v(&P)
menutrans &Sponsor/Register		   U/   U(&S)
menutrans O&rphans		 @   t  (&R)
" ------------------------------------------------------------------------
menutrans &Version		 {         T(&V)
menutrans &About		    \ Vim(&A)
" }}}

" {{{ File menu: complete
menutrans &File				    (&F)
" ------------------------------------------------------------------------
menutrans &Open\.\.\.<Tab>:e		 }  (&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	           }  (&L)<Tab>:sp
menutrans &New<Tab>:enew		 s   s    (&N)<Tab>:enew
menutrans &Close<Tab>:close		        (&C)<Tab>:close
" ------------------------------------------------------------------------
menutrans &Save<Tab>:w			 x s(&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	 t s s  (&A)\.\.\.<Tab>:sav
" ------------------------------------------------------------------------
menutrans Split\ &Diff\ with\.\.\.	    (&Diff)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	    Patch(&B)\.\.\.
" ------------------------------------------------------------------------
menutrans &Print			 C L(&P)
" ------------------------------------------------------------------------
menutrans Sa&ve-Exit<Tab>:wqa		 x s     }(&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			   }(&X)<Tab>:qa
" }}}

" {{{ Edit menu
menutrans &Edit				 s  (&E)
" ------------------------------------------------------------------------
menutrans &Undo<Tab>u			 _  (&U)<Tab>u
menutrans &Redo<Tab>^R			     W   _  (&R)<Tab>^R
menutrans Rep&eat<Tab>\.		     W     @(&E)<Tab>\.
" ------------------------------------------------------------------------
menutrans Cu&t<Tab>"+x			   U(&T)<Tab>"+x
menutrans &Copy<Tab>"+y			   s(&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		 K W(&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		 K       e(&B)<Tab>[p
menutrans Put\ &After<Tab>]p		 K        (&A)<Tab>]p
menutrans &Delete<Tab>x			 R  (&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		    (&S)<Tab>ggvG
" ------------------------------------------------------------------------
menutrans &Find\.\.\.			 M  (&F)\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	 M       N(&L)\.\.\.
" ------------------------------------------------------------------------
menutrans Settings\ &Window		 ] w    (&W)
menutrans &Global\ Settings		     ] w(&G)
menutrans F&ile\ Settings		 ] w      (&I)
menutrans C&olor\ Scheme		 t   ] w(&O)
menutrans &Keymap			   L    (&K)
    " "{{{ Keymap:
    menutrans None			 L
    " }}}
menutrans Select\ Fo&nt\.\.\.		 ] w r  (&N)\.\.\.
" }}}

" {{{ Edit.FileSettings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!                (&N)<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!	                  TAB(&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!	                    (&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!                 i   N _ y(&R)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!	         i }TAB(&E)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!	             Y  (&A)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!	           y   Y  (&C)<Tab>:set\ cin!
" ------------------------------------------------------------------------
menutrans &Shiftwidth				     Y   e  (shiftwidth)(&S)
menutrans Soft\ &Tabstop			     n      TAB(softtabstop)(&T)
menutrans Te&xt\ Width\.\.\.			       r     e  (textwidth)(&X)\.\.\.
menutrans &File\ Format\.\.\.			     ] w        (     @ ~ t  )(&F)\.\.\.
" }}}

" {{{ Edit.GlobalSettings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!        G   j M r  (&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!	              j p g(&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!	                  A  (&S)<Tab>:set\ sm!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!	             Vi   e    (&O)<Tab>:set\ cp!
menutrans &Context\ lines			          e   O d    (scrolloff)(&C)
menutrans &Virtual\ Edit			            N    (virtualedit)(&V)
    " {{{ Edit.GlobalSettings.VirtualEdit
    menutrans Never				           
    menutrans Block\ Selection			               
    menutrans Insert\ mode			        J      
    menutrans Block\ and\ Insert		          P   J    
    menutrans Always				      @   }  
    " }}}
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!	            J    (&M)<Tab>:set\ im!
menutrans Search\ &Path\.\.\.			      j M   |(&P)\.\.\.
menutrans Ta&g\ Files\.\.\.			     Tag\             (&G)\.\.\.
" ------------------------------------------------------------------------
menutrans Toggle\ &Toolbar			              u   C(&T)
menutrans Toggle\ &Bottom\ Scrollbar		                      b(&B)
menutrans Toggle\ &Left\ Scrollbar		                      b(&L)
menutrans Toggle\ &Right\ Scrollbar		              k       b(&R)
" }}}

" {{{ Tools menu: complete
menutrans &Tools			 u  (&T)
" ------------------------------------------------------------------------
menutrans &Jump\ to\ this\ tag<Tab>g^]	         B           r(tag)(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		   ^     e     m(&B)<Tab>^T
menutrans Build\ &Tags\ File		              \ Tags(&T)
" ------------------------------------------------------------------------
menutrans &Folding			   |(Fold) ] w(&F)
    " {{{ Tools.Fold
    menutrans &Enable/Disable\ folds<Tab>zi	            \ Folding(&E)<Tab>zi
    menutrans &View\ Cursor\ Line<Tab>zv	           h\ Fold(&V)<Tab>zv
    menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx     u      \ Fold(&W)<Tab>zMzx
    menutrans C&lose\ more\ folds<Tab>zm	       _ @ h\ Folds(&L)<Tab>zm
    menutrans &Close\ all\ folds<Tab>zM		       _    \ Folds(&C)<Tab>zM
    menutrans O&pen\ more\ folds<Tab>zr		       } @ h\ Folds(&P)<Tab>zr
    menutrans &Open\ all\ folds<Tab>zR		       }    \ Folds(&O)<Tab>zR
    menutrans Fold\ Met&hod			    Folding\     (&H)
	" {{{ Tools.Fold.Method
	menutrans M&anual		        (&A)
	menutrans I&ndent		     Y  (&N)
	menutrans E&xpression		   q B    (&X)
	menutrans S&yntax		     y k ] w(&Y)
	menutrans &Diff			Diff(&D)
	menutrans Ma&rker		   O(Marker)(&R)
	" }}}
    " ------------------------------------------------------------------------
    menutrans Create\ &Fold<Tab>zf		        \ Fold(&F)<Tab>zf
    menutrans &Delete\ Fold<Tab>zd		     R  \ Fold(&D)<Tab>zd
    menutrans Delete\ &All\ Folds<Tab>zD	     R      \ Fold(&A)<Tab>zD
    " ------------------------------------------------------------------------
    menutrans Fold\ column\ &width		     ] w\ Fold   e(&W)
    " }}}
menutrans &Diff				Diff(&D)
    " {{{ Tools.Diff
    menutrans &Update			   s(&U)
    menutrans &Get\ Block		   o    (&G)
    menutrans &Put\ Block		 K W    (&P)
    " }}}
" ------------------------------------------------------------------------
menutrans &Make<Tab>:make		    \ Make(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		 C X s     ~(&E)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	 C X     T  (&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		 U @   s     ~ B(&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	 W @   s     ~ B(&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	         ~ C  (&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	     s   ~ C  (&E)<Tab>:cnew
menutrans Error\ &Window		   ~ T      (&W)
    " {{{ Tools.ErrorWindow
    menutrans &Update<Tab>:cwin		   s(&U)<Tab>:cwin
    menutrans &Open<Tab>:copen		 }  (&O)<Tab>:copen
    menutrans &Close<Tab>:cclose	    (&C)<Tab>:cclose
    " }}}
menutrans &Set\ Compiler		 ] w s    Compiler(&S)
" ------------------------------------------------------------------------
menutrans &Convert\ to\ HEX<Tab>:%!xxd	      16 i   X(&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	 q16 i  �X     ^   r(&R)<Tab>:%!xxd\ -r
" }}}

" {{{ Syntax menu: compete
menutrans &Syntax		     y k   G(&S)
" ------------------------------------------------------------------------
menutrans &Show\ filetypes\ in\ menu	         i          (&S)
menutrans Set\ '&syntax'\ only	     u    \ 'syntax'(&S)
menutrans Set\ '&filetype'\ too	        \ 'syntax'+'filetype'(&F)
menutrans &Off			           G(&O)
menutrans &Manual		         ] w(&M)
menutrans A&utomatic		         ] w(&U)
menutrans on/off\ for\ &This\ file   u             G ] w(&T)
" ------------------------------------------------------------------------
menutrans Co&lor\ test		       m        (&L)
menutrans &Highlight\ test	     y k   G    (&H)
menutrans &Convert\ to\ HTML	          \ HTML\     (&C)
" }}}

" {{{ Buffers menu: complete
menutrans &Buffers			 w    (&B)
" ------------------------------------------------------------------------
menutrans &Refresh\ menu		   s(&R)
menutrans &Delete			 R  (&D)
menutrans &Alternate			     W   s   w    (&A)
menutrans &Next				 U @  (&N)
menutrans &Previous			 e @  (&P)
" ------------------------------------------------------------------------
" menutrans [No\ file]			[ L    ]
" }}}

" {{{ Window menu: complete
menutrans &Window			    (&W)
" ------------------------------------------------------------------------
menutrans &New<Tab>^Wn			 } s    (&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		        (&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	      #(&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	        (&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	     `        (&X)
" ------------------------------------------------------------------------
menutrans &Close<Tab>^Wc		        (&C)<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	            (&O)<Tab>^Wo
" ------------------------------------------------------------------------
menutrans Move\ &To			    (&T)
    " {{{ Window.MoveTo
    menutrans &Top<Tab>^WK		    (&T)<Tab>^WK
    menutrans &Bottom<Tab>^WJ		    (&B)<Tab>^WJ
    menutrans &Left\ side<Tab>^WH	    (&L)<Tab>^WH
    menutrans &Right\ side<Tab>^WL	 k  (&R)<Tab>^WL
    " }}}
menutrans Rotate\ &Up<Tab>^WR		 W      (&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		 U      (&D)<Tab>^Wr
" ------------------------------------------------------------------------
menutrans &Equal\ Size<Tab>^W=		            (&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		   j    (&M)<Tab>^W
menutrans M&in\ Height<Tab>^W1_		   p    (&I)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		   j e  (&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		   p e  (&H)<Tab>^W1\|
" }}}

" {{{ The popup menu: complete
menutrans &Undo				 _  (&U)
" ------------------------------------------------------------------------
menutrans Cu&t				   U(&T)
menutrans &Copy				   s(&C)
menutrans &Paste			 K W(&P)
menutrans &Delete			 R  (&D)
" ------------------------------------------------------------------------
menutrans Select\ Blockwise		Blockwise      
menutrans Select\ &Word			       r(&W)
menutrans Select\ &Line			      (&L)
menutrans Select\ &Block		        (&B)
menutrans Select\ &All			    (&A)
" }}}

" {{{ The GUI toolbar: complete
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		 }      
    tmenu ToolBar.Save		 x s   e s          
    tmenu ToolBar.SaveAll	 x s        
    tmenu ToolBar.Print		 C L
" ------------------------------------------------------------------------
    tmenu ToolBar.Undo		 _   W      
    tmenu ToolBar.Redo		     W   _     @
" ------------------------------------------------------------------------
    tmenu ToolBar.Cut		   U     K  
    tmenu ToolBar.Copy		   s     K  
    tmenu ToolBar.Paste		     K   K W
" ------------------------------------------------------------------------
    tmenu ToolBar.Find		 M  ...
    tmenu ToolBar.FindNext	   U @  
    tmenu ToolBar.FindPrev	   W @  
    tmenu ToolBar.Replace	   N...
" ------------------------------------------------------------------------
    tmenu ToolBar.LoadSesn	 � J Session
    tmenu ToolBar.SaveSesn	 x s   e   Session
    tmenu ToolBar.RunScript	     Vim  {    
" ------------------------------------------------------------------------
    tmenu ToolBar.Make		     Make
    tmenu ToolBar.Shell		 }   @   R O C     DosBox
    tmenu ToolBar.RunCtags	     ctags
    tmenu ToolBar.TagJump	       e       m   tag
    tmenu ToolBar.Help		Vim    U    
    tmenu ToolBar.FindHelp	 j M Vim         
  endfun
endif
" }}}

let &cpo = s:keepcpo
unlet s:keepcpo

" vim:foldmethod=marker:nowrap:foldcolumn=2:foldlevel=1
