" Menu Translations:	Korean
" Maintainer:		SungHyun Nam <goweol@gmail.com>
" Last Change:		2012 May 01

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding euc-kr

" Help menu
menutrans &Help			      (&H)
menutrans &Overview<Tab><F1>	   �(&O)<Tab><F1>
menutrans &User\ Manual		      \       (&U)
menutrans &How-to\ links	      \     (&H)
menutrans &GUI			GUI(&G)
menutrans &Find\.\.\.		    (&F)\.\.\.
menutrans &Credits		      \   (&C)
menutrans Co&pying		      (&p)
menutrans &Sponsor/Register	    /    (&S)
menutrans O&rphans		    (&r)
menutrans &Version		    (&V)
menutrans &About		  \           (&A)

" File menu
menutrans &File				    (&F)
menutrans &Open\.\.\.<Tab>:e		    (&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	      \     (&l)\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	  \     \.\.\.<Tab>:tabnew
menutrans &New<Tab>:enew		      (&N)<Tab>:enew
menutrans &Close<Tab>:close		    (&C)<Tab>:close
menutrans &Save<Tab>:w			    (&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	    \         \     (&A)\.\.\.<Tab>:sav
"menutrans Split\ &Diff\ with\.\.\.	Split\ &Diff\ with\.\.\.
"menutrans Split\ Patched\ &By\.\.\.	Split\ Patched\ &By\.\.\.
menutrans &Print			    (&P)
menutrans Sa&ve-Exit<Tab>:wqa		        \       (&v)<Tab>:wqa
menutrans E&xit<Tab>:qa			      (&x)<Tab>:qa

" Edit menu
menutrans &Edit				   x(&E)
menutrans &Undo<Tab>u			    (&U)<Tab>u
menutrans &Redo<Tab>^R			    \     (&R)<Tab>^R
menutrans Rep&eat<Tab>\.		      (&e)<Tab>\.
menutrans Cu&t<Tab>"+x			      (&t)<Tab>"+x
menutrans &Copy<Tab>"+y			    (&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		      (&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		    \       (&B)<Tab>[p
menutrans Put\ &After<Tab>]p		    \       (&A)<Tab>]p
menutrans &Delete<Tab>x			      (&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		    \       (&S)<Tab>ggVG
menutrans &Find\.\.\.			    (&F)\.\.\.
menutrans Find\ and\ Rep&lace\.\.\.	      \       (&l)\.\.\.
menutrans Settings\ &Window		    \   (&W)
menutrans Startup\ &Settings		    \     (&S)

" Edit/Global Settings
menutrans &Global\ Settings		 �  \     (&G)
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!     \           \     (&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!         \     \     (&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm! Showmatch\     (&S)<Tab>:set\ sm!
menutrans &Context\ lines		        \   (&C)
menutrans &Virtual\ Edit		    \    x(&V)
menutrans Never				    \   \   
menutrans Block\ Selection		    \       
menutrans Insert\ mode			    \     
menutrans Block\ and\ Insert		      \     
menutrans Always			    \     
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!     \     \     (&M)<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp! Vi\     \     (&o)<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		    \     (&P)\.\.\.
menutrans Ta&g\ Files\.\.\.		      \     (&g)\.\.\.

" GUI options
menutrans Toggle\ &Toolbar		        \     (&T)
menutrans Toggle\ &Bottom\ Scrollbar	    \         \     (&B)
menutrans Toggle\ &Left\ Scrollbar	    \         \     (&L)
menutrans Toggle\ &Right\ Scrollbar	      \         \     (&R)

" Edit/File Settings
menutrans F&ile\ Settings		    \     (&i)

" Boolean options
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!   \           \     (&N)<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!     \     \     (&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!   \ Wrap\     (&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!          \ Wrap\     (&r)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!   \     \     (&e)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!           \     (&a)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin! C-      \     (&C)<Tab>:set\ cin!

" other options
menutrans &Shiftwidth			      \     (&S)
menutrans Soft\ &Tabstop		      \       (&T)
menutrans Te&xt\ Width\.\.\.		      \     (&x)\.\.\.
menutrans &File\ Format\.\.\.		    \  �  (&F)\.\.\.
menutrans C&olor\ Scheme		    \     (&o)
menutrans &Keymap			    (&K)

menutrans Select\ Fo&nt\.\.\.		    \       (&F)\.\.\.

" Programming menu
menutrans &Tools			    (&T)
menutrans &Jump\ to\ this\ tag<Tab>g^]	  \         \     (&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		    \     (&b)<Tab>^T
menutrans Build\ &Tags\ File		      \     \       (&T)

menutrans &Spelling			     x\     (&S)
menutrans &Spell\ Check\ On		     x\     \     (&S)
menutrans Spell\ Check\ &Off		     x\     \   (&O)
menutrans To\ &Next\ error<Tab>]s	    \       (&N)<Tab>]s
menutrans To\ &Previous\ error<Tab>[s	   �\       (&P)<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=	    \     (&C)<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	    \     (&R)<Tab>:spellrepall
menutrans Set\ language\ to\ "en"	      \ "en"    \     
menutrans Set\ language\ to\ "en_au"	      \ "en_au"  \     
menutrans Set\ language\ to\ "en_ca"	      \ "en_ca"  \     
menutrans Set\ language\ to\ "en_gb"	      \ "en_gb"  \     
menutrans Set\ language\ to\ "en_nz"	      \ "en_nz"    \     
menutrans Set\ language\ to\ "en_us"	      \ "en_us"  \     
menutrans &Find\ More\ Languages	    \     \     (&F)

" Tools.Fold Menu
menutrans &Folding			    (&F)
" open close folds
menutrans &Enable/Disable\ folds<Tab>zi	    \     \     (&E)<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	    \   \     (&V)<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx     \     \     (&w)<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	  \     \     \     (&l)<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	    \     \     (&C)<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	  \     \     \     (&p)<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	    \     \     \     (&O)<Tab>zR
" fold method
menutrans Fold\ Met&hod			    \    x(&h)
menutrans M&anual			    (&a)
menutrans I&ndent			        (&n)
menutrans E&xpression			      (&x)
menutrans S&yntax			      (&y)
"menutrans &Diff				&Diff
menutrans Ma&rker			      (&r)
" create and delete folds
menutrans Create\ &Fold<Tab>zf		    \  x  (&F)<Tab>zf
menutrans &Delete\ Fold<Tab>zd		    \     (&D)<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	    \     \     (&A)<Tab>zD
" moving around in folds
menutrans Fold\ column\ &width		    \     \     (&w)

"menutrans &Diff				&Diff
menutrans &Update			    (&U)
menutrans &Get\ Block			    \         (&G)
menutrans &Put\ Block			    \  x      (&P)

menutrans &Make<Tab>:make		    (&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		    \     \     (&L)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	      \     \     (&i)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		    \     (&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	   �\     (&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	      \     (&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	      \     (&e)<Tab>:cnew
menutrans Error\ &Window		    \   (&W)
menutrans &Update<Tab>:cwin		    (&U)<Tab>:cwin
menutrans &Open<Tab>:copen		    (&O)<Tab>:copen
menutrans &Close<Tab>:cclose		    (&C)<Tab>:cclose
menutrans Se&T\ Compiler		        \     (&T)
menutrans &Convert\ to\ HEX<Tab>:%!mc\ vim:xxd	          \     <Tab>:%!mc\ vim:xxd
menutrans &Convert\ to\ HEX<Tab>:%!xxd	          \     (&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!mc\ vim:xxd\ -r	        \     (&r)<Tab>:%!mc\ vim:xxd\ -r
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	        \     (&r)<Tab>:%!xxd\ -r

" Names for buffer menu.
menutrans &Buffers			    (&B)
menutrans &Refresh\ menu		      \           (&R)
menutrans &Delete			      (&D)
menutrans &Alternate			    (&A)
menutrans &Next				    (&N)
menutrans &Previous			   �(&P)

" Window menu
menutrans &Window			  (&W)
menutrans &New<Tab>^Wn			  \   (&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		      (&p)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	#    \       (&l)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	      \       (&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	    \           \       

menutrans &Close<Tab>^Wc		    (&C)<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo	    \   \     (&O)<Tab>^Wo

menutrans Move\ &To			    (&T)
menutrans &Top<Tab>^WK			      (&T)<Tab>^WK
menutrans &Bottom<Tab>^WJ		    (&B)<Tab>^WJ
menutrans &Left\ side<Tab>^WH		    (&L)<Tab>^WH
menutrans &Right\ side<Tab>^WL		      (&R)<Tab>^WL
menutrans Rotate\ &Up<Tab>^WR		    \    �(&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		      \    �(&D)<Tab>^Wr

menutrans &Equal\ Size<Tab>^W=		    \       (&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		    \       (&M)<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		    \       (&i)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		    \       (&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		    \       (&h)<Tab>^W1\|

" The popup menu
menutrans &Undo			    (&U)
menutrans Cu&t			      (&t)
menutrans &Copy			    (&C)
menutrans &Paste		      (&P)
menutrans &Delete		      (&D)
menutrans Select\ Blockwise	     �\       
menutrans Select\ &Word		    \       (&W)
menutrans Select\ &Line		  \       (&L)
menutrans Select\ &Block	    \       (&B)
menutrans Select\ &All		    \       (&A)

" The GUI toolbar
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		         
    tmenu ToolBar.Save		              
    tmenu ToolBar.SaveAll	         
    tmenu ToolBar.Print		    
    tmenu ToolBar.Undo		    
    tmenu ToolBar.Redo		         
    tmenu ToolBar.Cut		      
    tmenu ToolBar.Copy		    
    tmenu ToolBar.Paste		      
    tmenu ToolBar.Find		    ...
    tmenu ToolBar.FindNext	         
    tmenu ToolBar.FindPrev	   �     
    tmenu ToolBar.Replace	      
    tmenu ToolBar.LoadSesn	             
    tmenu ToolBar.SaveSesn	         
    tmenu ToolBar.RunScript	             
    tmenu ToolBar.Make		Make
    tmenu ToolBar.Shell		  
    tmenu ToolBar.RunCtags	             
    tmenu ToolBar.TagJump	             
    tmenu ToolBar.Help		      
    tmenu ToolBar.FindHelp	           ...
  endfun
endif

" Syntax menu
menutrans &Syntax		   x(&S)
menutrans &Show\ filetypes\ in\ menu	    \           \     \     (&S)
menutrans Set\ '&syntax'\ only	'syntax'  \     (&s)
menutrans Set\ '&filetype'\ too	'filetype'  \     (&f)
menutrans &Off			    (&O)
menutrans &Manual		    (&M)
menutrans A&utomatic		    (&u)
menutrans on/off\ for\ &This\ file   \       \     /    (&T)

menutrans Co&lor\ test		  \     (&l)
menutrans &Highlight\ test	Highlight\     (&H)
menutrans &Convert\ to\ HTML	HTML  \     (&C)

let &cpo = s:keepcpo
unlet s:keepcpo
