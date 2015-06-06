" vi:set ts=8 sts=8 sw=8 tw=0:
"
" Menu Translations:	Japanese (EUC-JP)
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

scriptencoding euc-jp

" Help menu
menutrans &Help			      (&H)
menutrans &Overview<Tab><F1>	    (&O)<Tab><F1>
menutrans &User\ Manual		                (&U)
menutrans &How-to\ links	&How-to      
menutrans &Credits		          (&C)
menutrans Co&pying		          (&P)
menutrans &Sponsor/Register	          /    (&S)
menutrans O&rphans		    (&R)
menutrans &Version		              (&V)
menutrans &About		Vim        (&A)

let g:menutrans_help_dialog = "                                                        :\n\n                         i_                   . (  : i_CTRL-X)\n                               c_                   . (  : c_<Del>)\n                     '             . (  : 'shiftwidth')"

" File menu
menutrans &File				        (&F)
menutrans &Open\.\.\.<Tab>:e		    (&O)\.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	            (&L)\.\.\.<Tab>:sp
menutrans Open\ Tab\.\.\.<Tab>:tabnew	                <Tab>:tabnew
menutrans &New<Tab>:enew		        (&N)<Tab>:enew
menutrans &Close<Tab>:close		      (&C)<Tab>:close
menutrans &Save<Tab>:w			    (&S)<Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	                (&A)\.\.\.<Tab>:sav
menutrans Split\ &Diff\ with\.\.\.	        (&D)\.\.\.
menutrans Split\ Patched\ &By\.\.\.	                (&B)\.\.\.
menutrans &Print			    (&P)
menutrans Sa&ve-Exit<Tab>:wqa		            (&V)<Tab>:wqa
menutrans E&xit<Tab>:qa			    (&X)<Tab>:qa

" Edit menu
menutrans &Edit				    (&E)
menutrans &Undo<Tab>u			        (&U)<Tab>u
menutrans &Redo<Tab>^R			            (&R)<Tab>^R
menutrans Rep&eat<Tab>\.		        (&E)<Tab>\.
menutrans Cu&t<Tab>"+x			        (&T)<Tab>"+x
menutrans &Copy<Tab>"+y			      (&C)<Tab>"+y
menutrans &Paste<Tab>"+gP		        (&P)<Tab>"+gP
menutrans Put\ &Before<Tab>[p		        (&B)<Tab>[p
menutrans Put\ &After<Tab>]p		        (&A)<Tab>]p
menutrans &Delete<Tab>x			    (&D)<Tab>x
menutrans &Select\ All<Tab>ggVG		        (&S)<Tab>ggVG
menutrans &Find\.\.\.			    (&F)\.\.\.
menutrans &Find<Tab>/			    (&F)<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.	    (&L)\.\.\.
menutrans Find\ and\ Rep&lace<Tab>:%s	    (&L)<Tab>:%s
menutrans Find\ and\ Rep&lace<Tab>:s	    (&L)<Tab>:s
"menutrans Options\.\.\.			          (&O)\.\.\.
menutrans Settings\ &Window		              (&W)
menutrans Startup\ &Settings		            (&S)

" Edit/Global Settings
menutrans &Global\ Settings		        (&G)
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!
	\	                (&H)<Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!
	\	                (&I)<Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!
	\	              (&S)<Tab>:set\ sm!
menutrans &Context\ lines		                (&C)
menutrans &Virtual\ Edit		        (&V)
menutrans Never				    
menutrans Block\ Selection		              
menutrans Insert\ mode			            
menutrans Block\ and\ Insert		        /            
menutrans Always			    
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!
	\	    (      )          (&M)<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!
	\	Vi              (&O)<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.		        (&P)\.\.\.
menutrans Ta&g\ Files\.\.\.		            (&G)\.\.\.
"
" GUI options
menutrans Toggle\ &Toolbar		                  (&T)
menutrans Toggle\ &Bottom\ Scrollbar	              (  )        (&B)
menutrans Toggle\ &Left\ Scrollbar	              (  )        (&L)
menutrans Toggle\ &Right\ Scrollbar	              (  )        (&R)

let g:menutrans_path_dialog = "                                    :\n                       ( , )                   ."
let g:menutrans_tags_dialog = "                                    :\n             ( , )                   ."

" Edit/File Settings

" Boolean options
menutrans F&ile\ Settings		            (&I)
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!
	\	              (&N)<Tab>:set\ nu!
menutrans Toggle\ relati&ve\ Line\ Numbering<Tab>:set\ rnu!
	\	                  (&V)<Tab>:set\ rnu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!
	\                 (&L)<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!
	\	            (&W)<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!
	\	              (&R)<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!
	\	            (&E)<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!
	\	              (&A)<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!
	\	C              (&C)<Tab>:set\ cin!

" other options
menutrans &Shiftwidth			       x(&S)
menutrans Soft\ &Tabstop		                 x(&T)
menutrans Te&xt\ Width\.\.\.		         x(&X)\.\.\.
menutrans &File\ Format\.\.\.		            (&F)\.\.\.

let g:menutrans_textwidth_dialog = "           x('textwidth')                   (0              ):"
let g:menutrans_fileformat_dialog = "                                                ."
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n          (&C)"

menutrans C&olor\ Scheme		            (&O)
menutrans &Keymap			          (&K)
menutrans None				    

" Programming menu
menutrans &Tools			      (&T)
menutrans &Jump\ to\ this\ tag<Tab>g^]	            (&J)<Tab>g^]
menutrans Jump\ &back<Tab>^T		    (&B)<Tab>^T
menutrans Build\ &Tags\ File		                (&T)
menutrans &Make<Tab>:make		      (&M)<Tab>:make
menutrans &List\ Errors<Tab>:cl		            (&L)<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!	                (&I)<Tab>:cl!
menutrans &Next\ Error<Tab>:cn		            (&N)<Tab>:cn
menutrans &Previous\ Error<Tab>:cp	            (&P)<Tab>:cp
menutrans &Older\ List<Tab>:cold	          (&O)<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew	            (&E)<Tab>:cnew
menutrans Error\ &Window		                (&W)
menutrans &Update<Tab>:cwin		    (&U)<Tab>:cwin
menutrans &Open<Tab>:copen		    (&O)<Tab>:copen
menutrans &Close<Tab>:cclose		      (&C)<Tab>:cclose
menutrans &Convert\ to\ HEX<Tab>:%!xxd	HEX      (&C)<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r	HEX          (&R)<Tab>%!xxd\ -r
menutrans Se&T\ Compiler		              (&T)

" Tools.Spelling Menu
menutrans &Spelling			          (&S)
menutrans &Spell\ Check\ On		                  (&S)
menutrans Spell\ Check\ &Off		                  (&O)
menutrans To\ &Next\ error<Tab>]s	          (&N)<Tab>]s
menutrans To\ &Previous\ error<Tab>[s	          (&P)<Tab>[s
menutrans Suggest\ &Corrections<Tab>z=	        (&C)<Tab>z=
menutrans &Repeat\ correction<Tab>:spellrepall	              (&R)<Tab>:spellrepall
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
menutrans &Enable/Disable\ folds<Tab>zi	    /        (&E)<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv	                (&V)<Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx	                    (&W)<Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm	              (&L)<Tab>zm
menutrans &Close\ all\ folds<Tab>zM	                (&C)<Tab>zM
menutrans O&pen\ more\ folds<Tab>zr	            (&P)<Tab>zr
menutrans &Open\ all\ folds<Tab>zR	              (&O)<Tab>zR
" fold method
menutrans Fold\ Met&hod			       x  (&H)
menutrans M&anual			    (&A)
menutrans I&ndent			          (&N)
menutrans E&xpression			      (&X)
menutrans S&yntax			            (&Y)
menutrans &Diff				    (&D)
menutrans Ma&rker			        (&R)
" create and delete folds
menutrans Create\ &Fold<Tab>zf		          (&F)<Tab>zf
menutrans &Delete\ Fold<Tab>zd		         �(&D)<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD	           �(&A)<Tab>zD
" moving around in folds
menutrans Fold\ col&umn\ width		             x(&U)

menutrans &Update		    (&U)
menutrans &Get\ Block		            (&G)
menutrans &Put\ Block		            (&P)

" Names for buffer menu.
menutrans &Buffers		        (&B)
menutrans &Refresh\ menu	              (&R)
menutrans &Delete		   �(&D)
menutrans &Alternate		        (&A)
menutrans &Next			            (&N)
menutrans &Previous		            (&P)
menutrans [No\ File]		[    ]
let g:menutrans_no_file = "[    ]"

" Window menu
menutrans &Window			          (&W)
menutrans &New<Tab>^Wn			        (&N)<Tab>^Wn
menutrans S&plit<Tab>^Ws		    (&P)<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^	                (&L)<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv	        (&V)<Tab>^Wv
menutrans Split\ File\ E&xplorer	                      (&X)
menutrans &Close<Tab>^Wc		      (&C)<Tab>^Wc
menutrans Move\ &To			    (&T)
menutrans &Top<Tab>^WK			  (&T)<Tab>^WK
menutrans &Bottom<Tab>^WJ		  (&B)<Tab>^WJ
menutrans &Left\ side<Tab>^WH		  (&L)<Tab>^WH
menutrans &Right\ side<Tab>^WL		  (&R)<Tab>^WL
menutrans Close\ &Other(s)<Tab>^Wo	          (&O)<Tab>^Wo
menutrans Ne&xt<Tab>^Ww			    (&X)<Tab>^Ww
menutrans P&revious<Tab>^WW		    (&R)<Tab>^WW
menutrans &Equal\ Size<Tab>^W=	          (&E)<Tab>^W=
menutrans &Max\ Height<Tab>^W_		        (&M)<Tab>^W_
menutrans M&in\ Height<Tab>^W1_		        (&i)<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|		     x  (&W)<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|		     x  (&H)<Tab>^W1\|
menutrans Rotate\ &Up<Tab>^WR		                  (&U)<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr		                  (&D)<Tab>^Wr
menutrans Select\ Fo&nt\.\.\.		            (&N)\.\.\.

" The popup menu
menutrans &Undo			        (&U)
menutrans Cu&t			        (&T)
menutrans &Copy			      (&C)
menutrans &Paste		        (&P)
menutrans &Delete		   �(&D)
menutrans Select\ Blockwise	                
menutrans Select\ &Word		        (&W)
menutrans Select\ &Sentence	      (&S)
menutrans Select\ Pa&ragraph	        (&R)
menutrans Select\ &Line		      (&L)
menutrans Select\ &Block	            (&B)
menutrans Select\ &All		          (&A)

" The GUI toolbar (for Win32 or GTK)
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open		              
    tmenu ToolBar.Save		                    
    tmenu ToolBar.SaveAll	                      
    tmenu ToolBar.Print		    
    tmenu ToolBar.Undo		        
    tmenu ToolBar.Redo		            
    tmenu ToolBar.Cut		                        
    tmenu ToolBar.Copy		                      
    tmenu ToolBar.Paste		                          
    tmenu ToolBar.Find		    ...
    tmenu ToolBar.FindNext	        
    tmenu ToolBar.FindPrev	        
    tmenu ToolBar.Replace	    ...
    if 0	" disabled; These are in the Windows menu
      tmenu ToolBar.New		                  
      tmenu ToolBar.WinSplit	              
      tmenu ToolBar.WinMax	                
      tmenu ToolBar.WinMin	                
      tmenu ToolBar.WinClose	                  
    endif
    tmenu ToolBar.LoadSesn	              
    tmenu ToolBar.SaveSesn	              
    tmenu ToolBar.RunScript	Vim              
    tmenu ToolBar.Make		              Make
    tmenu ToolBar.Shell		            
    tmenu ToolBar.RunCtags	tags    
    tmenu ToolBar.TagJump	            
    tmenu ToolBar.Help		Vim      
    tmenu ToolBar.FindHelp	Vim          
  endfun
endif

" Syntax menu
menutrans &Syntax		            (&S)
menutrans &Show\ filetypes\ in\ menu	                        (&S)
menutrans Set\ '&syntax'\ only	'syntax'        (&S)
menutrans Set\ '&filetype'\ too	'filetype'      (&F)
menutrans &Off			      (&O)
menutrans &Manual		        (&M)
menutrans A&utomatic		        (&U)
menutrans on/off\ for\ &This\ file
	\	    /        (&T)
menutrans Co&lor\ test		            (&L)
menutrans &Highlight\ test	                (&H)
menutrans &Convert\ to\ HTML	HTML            (&C)

let &cpo = s:keepcpo
unlet s:keepcpo

" filler to avoid the line above being recognized as a modeline
" filler
