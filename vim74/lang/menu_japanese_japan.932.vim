" vi:set ts=8 sts=8 sw=8 tw=0:
"
" Menu Translations:	Japanese (CP932)
" Translated By:	MURAOKA Taro  <koron.kaoriya@gmail.com>
" Last Change:		12-May-2013.
"
" Copyright (C) 2001-13 MURAOKA Taro <koron.kaoriya@gmail.com>
" THIS FILE IS DISTRIBUTED UNDER THE VIM LICENSE.

" Quit when menu translations have already been done.
if exists("did_menu_trans")
  finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding cp932

" Help menu
menutrans &Help			 w   v(&H)
menutrans &Overview<Tab><F1>	 T  (&O)<Tab><F1>
menutrans &User\ Manual		   [ U } j   A  (&U)
menutrans &How-to\ links	&How-to     N
menutrans &Credits		 N   W b g(&C)
menutrans Co&pying		          (&P)
menutrans &Sponsor/Register	 X |   T [/ o ^(&S)
menutrans O&rphans		    (&R)
menutrans &Version		 o [ W        (&V)
menutrans &About		Vim        (&A)

let g:menutrans_help_dialog = " w   v             R }   h         P     �              :\n\n } �   [ h   R }   h     i_          t        . (  : i_CTRL-X)\n R }   h   C     W R }   h     c_          t        . (  : c_<Del>)\n I v V         O     '    t        . (  : 'shiftwidth')"

" File menu
menutrans &File				 t @ C  (&F)
menutrans &Open\.\.\.<Tab>:e		 J  (&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	         J  (&L)\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	 ^ u y [ W   J  <Tab>:tabnew
menutrans &New<Tab>:enew		 V K    (&N)<Tab>:enew
menutrans &Close<Tab>:close		      (&C)<Tab>:close
menutrans &Save<Tab>:w			    (&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	   O   t        (&A)\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	     \  (&D)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	 p b `       \  (&B)\.\.\.
menutrans &Print			   �(&P)
menutrans Sa&ve-Exit<Tab>:wqa		         I  (&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			 I  (&X)<Tab>:qa

" Edit menu
menutrans &Edit				   W(&E)
menutrans &Undo<Tab>u			        (&U)<Tab>u
menutrans &Redo<Tab>^R			       x    (&R)<Tab>^R
menutrans Rep&eat<Tab>\.		 J      (&E)<Tab>\.
menutrans Cu&t<Tab>"+x			        (&T)<Tab>"+x
menutrans &Copy<Tab>"+y			 R s [(&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		 \   t  (&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		 O   \  (&B)<Tab>[p
menutrans Put\ &After<Tab>]p		     \  (&A)<Tab>]p
menutrans &Delete<Tab>x			    (&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		 S   I  (&S)<Tab>ggVG
menutrans &Find\.\.\.			    (&F)\.\.\.
menutrans &Find<Tab>/			    (&F)<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	 u  (&L)\.\.\.
menutrans Find\ and\ Rep&lace<Tab>:%s	 u  (&L)<Tab>:%s
menutrans Find\ and\ Rep&lace<Tab>:s	 u  (&L)<Tab>:s
"menutrans Options\.\.\.			 I v V    (&O)\.\.\.
menutrans Settings\ &Window		     E B   h E(&W)
menutrans Startup\ &Settings		 N          (&S)

" Edit/Global Settings
menutrans &Global\ Settings		 S      (&G)
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!
	\	 p ^ [          (&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!
	\	                (&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!
	\	 } b ` \      (&S)<Tab>:set\ sm!
menutrans &Context\ lines		 J [ \   �   s  (&C)
menutrans &Virtual\ Edit		   z   W(&V)
menutrans Never				    
menutrans Block\ Selection		 u   b N I    
menutrans Insert\ mode			 } �   [ h  
menutrans Block\ and\ Insert		 u   b N/ } �   [ h  
menutrans Always			    
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!
	\	 } �(   S  )   [ h    (&M)<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!
	\	Vi       [ h    (&O)<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		     p X(&P)\.\.\.
menutrans Ta&g\ Files\.\.\.		 ^ O t @ C  (&G)\.\.\.
"
" GUI options
menutrans Toggle\ &Toolbar		 c [   o [ \      (&T)
menutrans Toggle\ &Bottom\ Scrollbar	 X N   [   o [(  ) \      (&B)
menutrans Toggle\ &Left\ Scrollbar	 X N   [   o [(  ) \      (&L)
menutrans Toggle\ &Right\ Scrollbar	 X N   [   o [( E) \      (&R)

let g:menutrans_path_dialog = " t @ C         p X   �              :\n f B   N g       J   } ( , )                   ."
let g:menutrans_tags_dialog = " ^ O t @ C       O   �              :\n   O   J   } ( , )                   ."

" Edit/File Settings

" Boolean options
menutrans F&ile\ Settings		 t @ C      (&I)
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!
	\	 s     \      (&N)<Tab>:set\ nu!
menutrans Toggle\ relati&ve\ Line\ Numbering<Tab>:set\ rnu!
	\	     s     \      (&V)<Tab>:set\ rnu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!
	\    X g   [ h    (&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!
	\	 s          (&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!
	\	 P            (&R)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!
	\	 ^ u W J    (&E)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!
	\	              (&A)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!
	\	C              (&C)<Tab>:set\ cin!

" other options
menutrans &Shiftwidth			 V t g  (&S)
menutrans Soft\ &Tabstop		 \ t g E F A ^ u  (&T)
menutrans Te&xt\ Width\.\.\.		 e L X g  (&X)\.\.\.
menutrans &File\ Format\.\.\.		 � s L   I  (&F)\.\.\.

let g:menutrans_textwidth_dialog = " e L X g    ('textwidth')                   (0     `        ):"
let g:menutrans_fileformat_dialog = " t @ C   o         � s L     `     I            ."
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n L     Z  (&C)"

menutrans C&olor\ Scheme		 F e [ } I  (&O)
menutrans &Keymap			 L [ } b v(&K)
menutrans None				    

" Programming menu
menutrans &Tools			 c [  (&T)
menutrans &Jump\ to\ this\ tag<Tab>g^]	 ^ O W     v(&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		    (&B)<Tab>^T
menutrans Build\ &Tags\ File		 ^ O t @ C      (&T)
menutrans &Make<Tab>:make		   C N(&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		 G   [   X g(&L)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	   b Z [ W   X g(&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		     G   [  (&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	 O   G   [  (&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	       X g(&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	 V       X g(&E)<Tab>:cnew
menutrans Error\ &Window		 G   [ E B   h E(&W)
menutrans &Update<Tab>:cwin		 X V(&U)<Tab>:cwin
menutrans &Open<Tab>:copen		 J  (&O)<Tab>:copen
menutrans &Close<Tab>:cclose		      (&C)<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	HEX      (&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	HEX     t    (&R)<Tab>%!xxd\ -r
menutrans Se&T\ Compiler		 R   p C      (&T)

" Tools.Spelling Menu
menutrans &Spelling			 X y     O(&S)
menutrans &Spell\ Check\ On		 X y   ` F b N L  (&S)
menutrans Spell\ Check\ &Off		 X y   ` F b N    (&O)
menutrans To\ &Next\ error<Tab>]s	     G   [(&N)<Tab>]s
menutrans To\ &Previous\ error<Tab>[s	 O   G   [(&P)<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=	 C      (&C)<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	 C     J      (&R)<Tab>:spellrepall
menutrans Set\ language\ to\ "en"	      \ "en"\           
menutrans Set\ language\ to\ "en_au"	      \ "en_au"\           
menutrans Set\ language\ to\ "en_ca"	      \ "en_ca"\           
menutrans Set\ language\ to\ "en_gb"	      \ "en_gb"\           
menutrans Set\ language\ to\ "en_nz"	      \ "en_nz"\           
menutrans Set\ language\ to\ "en_us"	      \ "en_us"\           
menutrans &Find\ More\ Languages	                  (&F)

" Tools.Fold Menu
menutrans &Folding			      (&F)
" open close folds
menutrans &Enable/Disable\ folds<Tab>zi	 L  /        (&E)<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	 J [ \   s   \  (&V)<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	 J [ \   s       \  (&W)<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	              (&L)<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	 S              (&C)<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	         J  (&P)<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	 S         J  (&O)<Tab>zR
" fold method
menutrans Fold\ Met&hod			         @(&H)
menutrans M&anual			    (&A)
menutrans I&ndent			 C   f   g(&N)
menutrans E&xpression			   ]  (&X)
menutrans S&yntax			 V   ^ b N X(&Y)
menutrans &Diff				    (&D)
menutrans Ma&rker			 } [ J [(&R)
" create and delete folds
menutrans Create\ &Fold<Tab>zf		          (&F)<Tab>zf
menutrans &Delete\ Fold<Tab>zd		          (&D)<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	 S          (&A)<Tab>zD
" moving around in folds
menutrans Fold\ col&umn\ width		       J      (&U)

menutrans &Update		 X V(&U)
menutrans &Get\ Block		 u   b N   o(&G)
menutrans &Put\ Block		 u   b N K p(&P)

" Names for buffer menu.
menutrans &Buffers		 o b t @(&B)
menutrans &Refresh\ menu	   j   [      (&R)
menutrans &Delete		    (&D)
menutrans &Alternate		        (&A)
menutrans &Next			     o b t @(&N)
menutrans &Previous		 O   o b t @(&P)
menutrans [No\ File]		[    ]
let g:menutrans_no_file = "[    ]"

" Window menu
menutrans &Window			 E B   h E(&W)
menutrans &New<Tab>^Wn			 V K    (&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		    (&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	   o b t @      (&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	        (&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	 t @ C   G N X v   [  (&X)
menutrans &Close<Tab>^Wc		      (&C)<Tab>^Wc
menutrans Move\ &To			    (&T)
menutrans &Top<Tab>^WK			  (&T)<Tab>^WK
menutrans &Bottom<Tab>^WJ		  (&B)<Tab>^WJ
menutrans &Left\ side<Tab>^WH		  (&L)<Tab>^WH
menutrans &Right\ side<Tab>^WL		 E(&R)<Tab>^WL
menutrans Close\ &Other(s)<Tab>^Wo	          (&O)<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			    (&X)<Tab>^Ww
menutrans P&revious<Tab>^WW		 O  (&R)<Tab>^WW
menutrans &Equal\ Size<Tab>^W=	          (&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		        (&M)<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		        (&i)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		        (&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		        (&H)<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		       [ e [ V    (&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		       [ e [ V    (&D)<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		 t H   g    (&N)\.\.\.

" The popup menu
menutrans &Undo			        (&U)
menutrans Cu&t			        (&T)
menutrans &Copy			 R s [(&C)
menutrans &Paste		 \   t  (&P)
menutrans &Delete		    (&D)
menutrans Select\ Blockwise	   ` u   b N I  
menutrans Select\ &Word		 P   I  (&W)
menutrans Select\ &Sentence	   I  (&S)
menutrans Select\ Pa&ragraph	 i   I  (&R)
menutrans Select\ &Line		 s I  (&L)
menutrans Select\ &Block	 u   b N I  (&B)
menutrans Select\ &All		       I  (&A)

" The GUI toolbar (for Win32 or GTK)
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		 t @ C     J  
    tmenu ToolBar.Save		       t @ C        
    tmenu ToolBar.SaveAll	         t @ C        
    tmenu ToolBar.Print		   �
    tmenu ToolBar.Undo		        
    tmenu ToolBar.Redo		       x    
    tmenu ToolBar.Cut		 N   b v { [ h          
    tmenu ToolBar.Copy		 N   b v { [ h   R s [
    tmenu ToolBar.Paste		 N   b v { [ h     \   t  
    tmenu ToolBar.Find		    ...
    tmenu ToolBar.FindNext	        
    tmenu ToolBar.FindPrev	 O      
    tmenu ToolBar.Replace	 u  ...
    if 0	" disabled; These are in the Windows menu
      tmenu ToolBar.New		 V K E B   h E    
      tmenu ToolBar.WinSplit	 E B   h E    
      tmenu ToolBar.WinMax	 E B   h E      
      tmenu ToolBar.WinMin	 E B   h E      
      tmenu ToolBar.WinClose	 E B   h E        
    endif
    tmenu ToolBar.LoadSesn	 Z b V        
    tmenu ToolBar.SaveSesn	 Z b V        
    tmenu ToolBar.RunScript	Vim X N   v g   s
    tmenu ToolBar.Make		 v   W F N g  Make
    tmenu ToolBar.Shell		 V F     J  
    tmenu ToolBar.RunCtags	tags    
    tmenu ToolBar.TagJump	 ^ O W     v
    tmenu ToolBar.Help		Vim w   v
    tmenu ToolBar.FindHelp	Vim w   v    
  endfun
endif

" Syntax menu
menutrans &Syntax		 V   ^ b N X(&S)
menutrans &Show\ filetypes\ in\ menu	     `       j   [   \  (&S)
menutrans Set\ '&syntax'\ only	'syntax'        (&S)
menutrans Set\ '&filetype'\ too	'filetype'      (&F)
menutrans &Off			      (&O)
menutrans &Manual		        (&M)
menutrans A&utomatic		        (&U)
menutrans on/off\ for\ &This\ file
	\	 I  / I t    (&T)
menutrans Co&lor\ test		 J   [ e X g(&L)
menutrans &Highlight\ test	 n C   C g e X g(&H)
menutrans &Convert\ to\ HTML	HTML   R   o [ g(&C)

let &cpo = s:keepcpo
unlet s:keepcpo

" filler to avoid the line above being recognized as a modeline
" filler
