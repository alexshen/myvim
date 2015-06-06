" Menu Translations:	Vietnamese
" Maintainer:		Phan Vinh Thinh <teppi@vnlinux.org>
" Last Change:		12 Mar 2005
" URL:			http://iatp.vspu.ac.ru/phan/vietvim/lang/menu_vi_vn.vim
"
"
" Adopted for VietVim project by Phan Vinh Thinh.
" First translation: Phan Vinh Thinh <teppi@vnlinux.org>
"
"
" Quit when menu translations have already been done.
"
if exists("did_menu_trans")
   finish
endif
let did_menu_trans = 1
let s:keepcpo= &cpo
set cpo&vim

scriptencoding utf-8

" Top
menutrans &File				&T   p\ tin
menutrans &Edit				&So   n\ th   o
menutrans &Tools			C  &ng\ c   
menutrans &Syntax			&C  \ ph  p
menutrans &Buffers			&B   \      m
menutrans &Window			C   &a\ s   
menutrans &Help				Tr   \ &gi  p
"
"
"
" Help menu
menutrans &Overview<Tab><F1>		&T   ng\ quan<Tab><F1>
menutrans &User\ Manual			&H     ng\ d   n\ s   \ d   ng
menutrans &How-to\ links		&L  m\ nh  \ th   \ n  o
menutrans &Find\.\.\.			T  m\ &ki   m\.\.\.
"--------------------
menutrans &Credits			L   i\ &c   m\   n
menutrans Co&pying			&B   n\ quy   n
menutrans &Sponsor/Register		&Gi  p\      /    ng\ k  
menutrans O&rphans			Tr   \ &m   \ c  i
"--------------------
menutrans &Version			&Phi  n\ b   n
menutrans &About			&V   \ Vim
"
"
" File menu
menutrans &Open\.\.\.<Tab>:e		&M   \.\.\.<Tab>:e
menutrans Sp&lit-Open\.\.\.<Tab>:sp	&Chia-M   \.\.\.<Tab>:sp
menutrans &New<Tab>:enew		M   &i<Tab>:enew
menutrans &Close<Tab>:close		    &ng<Tab>:close
"--------------------
menutrans &Save<Tab>:w			&Ghi\ nh   <Tab>:w
menutrans Save\ &As\.\.\.<Tab>:sav	Ghi\ n&h  \.\.\.<Tab>:sav
"--------------------
menutrans Split\ &Diff\ with\.\.\.	&So\ s  nh\ v   i\.\.\.
menutrans Split\ Patched\ &By\.\.\.	So\ s  nh\     \ v  \ l   i\ &b   i\.\.\.
"--------------------
menutrans &Print			In\ &ra
menutrans Sa&ve-Exit<Tab>:wqa		Ghi\ nh   \ r   i\ th&o  t <Tab>:wqa
menutrans E&xit<Tab>:qa			&Tho  t<Tab>:qa
"
"
" Edit menu
menutrans &Undo<Tab>u			&H   y\ b     c<Tab>u
menutrans &Redo<Tab>^R			&L  m\ l   i<Tab>^R
menutrans Rep&eat<Tab>\.		L   &p\ l   i<Tab>\.
"--------------------
menutrans Cu&t<Tab>"+x			&C   t<Tab>"+x
menutrans &Copy<Tab>"+y			&Sao\ ch  p<Tab>"+y
menutrans &Paste<Tab>"+gP		&D  n<Tab>"+gP
menutrans Put\ &Before<Tab>[p		D  n\ tr     &c<Tab>[p
menutrans Put\ &After<Tab>]p		D  n\ sa&u<Tab>]p
menutrans &Delete<Tab>x			&X  a<Tab>x
menutrans &Select\ All<Tab>ggVG		Ch   &n\ t   t\ c   <Tab>ggVG
"--------------------
menutrans &Find\.\.\.<Tab>/		&T  m\ ki   m\.\.\.<Tab>/
menutrans Find\ and\ Rep&lace\.\.\.     T  m\ ki   m\ &v  \ thay\ th   \.\.\.
menutrans Find\ and\ Rep&lace\.\.\.<Tab>:%s     T  m\ ki   m\ &v  \ thay\ th   \.\.\.<Tab>:%s
menutrans Find\ and\ Rep&lace\.\.\.<Tab>:s     T  m\ ki   m\ &v  \ thay\ th   \.\.\<Tab>:s
"--------------------
menutrans Settings\ &Window		C   a\ &s   \ thi   t\ l   p
menutrans &Global\ Settings		Thi   t\ l   p\ t&o  n\ c   u
menutrans F&ile\ Settings		&Thi   t\ l   p\ t   p\ t&in
menutrans C&olor\ Scheme		Ph   i\ h   p\ m  u\ &s   c
menutrans &Keymap			S  \      \ &b  n\ ph  m
menutrans Select\ Fo&nt\.\.\.		Ch   n\ &ph  ng\ ch   \.\.\.
">>>----------------- Edit/Global settings
menutrans Toggle\ Pattern\ &Highlight<Tab>:set\ hls!     &Chi   u\ s  ng\ t   \ t  m\ th   y <Tab>:set\ hls!
menutrans Toggle\ &Ignore-case<Tab>:set\ ic!		 &Kh  ng\ t  nh\      n\ ki   u\ ch   <Tab>:set\ ic!
menutrans Toggle\ &Showmatch<Tab>:set\ sm!		 Cho\ &bi   t\ ph   n\ t   \ c  \ c   p<Tab>:set\ sm!
menutrans &Context\ lines				 S   \ &d  ng\ quanh\ con\ tr   
menutrans &Virtual\ Edit				 &So   n\ th   o\    o
menutrans Toggle\ Insert\ &Mode<Tab>:set\ im!		 Ch   \      \ ch  &n<Tab>:set\ im!
menutrans Toggle\ Vi\ C&ompatible<Tab>:set\ cp!		 T    ng\ th  ch\ v   i\ &Vi<Tab>:set\ cp!
menutrans Search\ &Path\.\.\.				        ng\ d   n\ t  m\ &ki   m\.\.\.
menutrans Ta&g\ Files\.\.\.				 T   p\ tin\ t&h   \ ghi\.\.\.
"
menutrans Toggle\ &Toolbar				    n/hi   n\ th&anh\ c  ng\ c   
menutrans Toggle\ &Bottom\ Scrollbar		   n/hi   n\ thanh\ k  o\ n   &m\ d     i
menutrans Toggle\ &Left\ Scrollbar			    n/hi   n\ thanh\ k  &o\ b  n\ tr  i
menutrans Toggle\ &Right\ Scrollbar			    n/hi   n\ thanh\ k  o\ b  n\ &ph   i
">>>->>>------------- Edit/Global settings/Virtual edit
menutrans Never						 T   t
menutrans Block\ Selection				 Khi\ ch   n\ kh   i
menutrans Insert\ mode					 Trong\ ch   \      \ Ch  n
menutrans Block\ and\ Insert				 Khi\ ch   n\ kh   i\ v  \ Ch  n
menutrans Always					 Lu  n\ lu  n\ b   t
">>>----------------- Edit/File settings
menutrans Toggle\ Line\ &Numbering<Tab>:set\ nu!	     nh\ &s   \ d  ng<Tab>:set\ nu!
menutrans Toggle\ &List\ Mode<Tab>:set\ list!		 &Ch   \      \ danh\ s  ch<Tab>:set\ list!
menutrans Toggle\ Line\ &Wrap<Tab>:set\ wrap!		 &Ng   t\ nh   ng\ d  ng\ d  i<Tab>:set\ wrap!
menutrans Toggle\ W&rap\ at\ word<Tab>:set\ lbr!	 Ng   t\ t   \ nguy  n\ &v   n<Tab>:set\ lbr!
menutrans Toggle\ &expand-tab<Tab>:set\ et!		 &D   u\ tr   ng\ thay\ cho\ tab<Tab>:set\ et!
menutrans Toggle\ &auto-indent<Tab>:set\ ai!		 &T   \      ng\ th   t\ d  ng<Tab>:set\ ai!
menutrans Toggle\ &C-indenting<Tab>:set\ cin!		 T&h   t\ d  ng\ ki   u\ C<Tab>:set\ cin!
">>>---
menutrans &Shiftwidth					 Chi   u\ &r   ng\ th   t\ d  ng
menutrans Soft\ &Tabstop				 Chi   u\ r   ng\ T&ab
menutrans Te&xt\ Width\.\.\.				 Chi   u\ r   ng\ v  n\ &b   n\.\.\.
menutrans &File\ Format\.\.\.				      nh\ d   ng\ t   &p\ tin\.\.\.
">>>----------------- Edit/File settings/Color Scheme
menutrans default			M   c\      nh
">>>----------------- Edit/File settings/Keymap
menutrans None						Kh  ng\ d  ng
menutrans arabic					   \ r   p
menutrans czech						S  c
menutrans esperanto					Etperant  
menutrans greek						Hy\ L   p
menutrans hebrew					Do\ th  i
menutrans hebrewp					Do\ th  i\ p
menutrans lithuania-baltic			L  t-vi\ Bal-t  c
menutrans magyar					Hungari
menutrans persian-iranian			Iran\ Ba\ T  
menutrans persian					Ba\ T  
menutrans russian-jcuken			Nga\ jcuken
menutrans russian-jcukenwin			Nga\ jcukenwin
menutrans russian-yawerty			Nga\ yawerty
menutrans serbian-latin				X  c-bi\ La-tinh
menutrans serbian					X  c-bi
menutrans slovak					slovak
"
"
"
" Tools menu
menutrans &Jump\ to\ this\ tag<Tab>g^]			&Nh   y\ t   i\ th   \ ghi<Tab>g^]
menutrans Jump\ &back<Tab>^T				&Quay\ l   i<Tab>^T
menutrans Build\ &Tags\ File				&T   o\ t   p\ tin\ th   \ ghi
"-------------------
menutrans &Folding					N   p\ &g   p
menutrans &Diff						&Kh  c\ bi   t (diff)
"-------------------
menutrans &Make<Tab>:make				&Bi  n\ d   ch<Tab>:make
menutrans &List\ Errors<Tab>:cl				&Danh\ s  ch\ l   i<Tab>:cl
menutrans L&ist\ Messages<Tab>:cl!			Danh\ &s  ch\ th  ng\ b  o<Tab>:cl!
menutrans &Next\ Error<Tab>:cn				&L   i\ ti   p\ theo<Tab>:cn
menutrans &Previous\ Error<Tab>:cp			L   i\ t&r     c<Tab>:cp
menutrans &Older\ List<Tab>:cold			Danh\ s  ch\ &c  \ h  n<Tab>:cold
menutrans N&ewer\ List<Tab>:cnew			Danh\ s  ch\ &m   i\ h  n<Tab>:cnew
menutrans Error\ &Window				C   &a\ s   \ l   i
menutrans &Set\ Compiler				C&h   n\ tr  nh\ bi  n\ d   ch
"-------------------
menutrans &Convert\ to\ HEX<Tab>:%!xxd			Ch&uy   n\ th  nh\ HEX<Tab>:%!xxd
menutrans Conve&rt\ back<Tab>:%!xxd\ -r			Chuy   n\ t   \ HE&X<Tab>:%!xxd\ -r
">>>---------------- Folds
menutrans &Enable/Disable\ folds<Tab>zi			&B   t/t   t\ n   p\ g   p<Tab>zi
menutrans &View\ Cursor\ Line<Tab>zv			&Xem\ d  ng\ c  \ con\ tr   <Tab>zv
menutrans Vie&w\ Cursor\ Line\ only<Tab>zMzx		&Ch   \ xem\ d  ng\ c  \ con\ tr   <Tab>zMzx
menutrans C&lose\ more\ folds<Tab>zm			    ng\ &nhi   u\ n   p\ g   p\ h  n<Tab>zm
menutrans &Close\ all\ folds<Tab>zM			    ng\ m   i\ n   p\ &g   p<Tab>zM
menutrans &Open\ all\ folds<Tab>zR			&M   \ m   i\ n   p\ g   p<Tab>zR
menutrans O&pen\ more\ folds<Tab>zr			M   \ n&hi   u\ n   p\ g   p\ h  n<Tab>zr
menutrans Fold\ Met&hod					&Ph    ng\ ph  p\ g   p
menutrans Create\ &Fold<Tab>zf				&T   o\ n   p\ g   p<Tab>zf
menutrans &Delete\ Fold<Tab>zd				X  &a\ n   p\ g   p<Tab>zd
menutrans Delete\ &All\ Folds<Tab>zD			X  a\ m   &i\ n   p\ g   p<Tab>zD
menutrans Fold\ col&umn\ width				Chi   u\ &r   ng\ c   t\ n   p\ g   p
">>>->>>----------- Tools/Folds/Fold Method
menutrans M&anual					&Th   \ c  ng
menutrans I&ndent					Th   t\ &d �ng
menutrans E&xpression					&Bi   u\ th   c
menutrans S&yntax					&C  \ ph  p
menutrans Ma&rker					&D   u\ hi   u
">>>--------------- Tools/Diff
menutrans &Update					&C   p\ nh   t
menutrans &Get\ Block					&Thay\      i\ b   \      m\ n  y
menutrans &Put\ Block					T&hay\      i\ b   \      m\ kh  c
">>>--------------- Tools/Diff/Error window
menutrans &Update<Tab>:cwin				&C   p\ nh   t<Tab>:cwin
menutrans &Close<Tab>:cclose				    &ng<Tab>:cclose
menutrans &Open<Tab>:copen				&M   <Tab>:copen
"
"
" Syntax menu
"
menutrans &Show\ filetypes\ in\ menu			&Hi   n\ th   \ lo   i\ t   p\ tin\ trong\ tr  nh\     n
menutrans Set\ '&syntax'\ only				&Ch   \ thay\      i\ gi  \ tr   \ 'syntax'
menutrans Set\ '&filetype'\ too				Th&ay\      i\ c   \ gi  \ tr   \ 'filetype'
menutrans &Off						&T   t
menutrans &Manual					&B   ng\ tay
menutrans A&utomatic					T   \      &ng
menutrans on/off\ for\ &This\ file			B   t\ t   t\ &cho\ t   p\ tin\ n  y
menutrans Co&lor\ test					&Ki   m\ tra\ m  u\ s   c
menutrans &Highlight\ test				Ki   m\ tra\ chi   u\ &s  ng
menutrans &Convert\ to\ HTML				&Chuy   n\ th  nh\ HTML
">>>---------------- Syntax/AB
menutrans Apache\ config					C   u\ h  nh\ Apache
menutrans Ant\ build\ file					T   p\ tin\ bi  n\ d   ch\ Ant
menutrans Apache-style\ config				C   u\ h  nh\ phong\ c  ch\ Apache
menutrans Arc\ Macro\ Language				Ng  n\ ng   \ Macro\ Arc
menutrans Arch\ inventory					Ki   m\ k  \ Arch
menutrans ASP\ with\ VBScript				ASP\ v   i\ VBScript
menutrans ASP\ with\ Perl					ASP\ v   i\ Perl
menutrans BC\ calculator					M  y\ t  nh\ BC
menutrans BDF\ font							Ph  ng\ ch   \ BDF
menutrans blank								kh  ng\ d  ng
">>>---------------- Syntax/C
menutrans Calendar							L   ch
menutrans Cheetah\ template					M   u\ Cheetah
menutrans Config							C   u\ h  nh
"
"
" Buffers menu
"
menutrans &Refresh\ menu				&C   p\ nh   t\ tr  nh\     n
menutrans Delete					&X  a
menutrans &Alternate					Xen\ &k   
menutrans &Next						Ti   &p\ theo
menutrans &Previous					&Tr     c
menutrans [No\ File]					[Kh  ng\ c  \ t   p\ tin]
"
"
" Window menu
"
menutrans &New<Tab>^Wn					&M   i<Tab>^Wn
menutrans S&plit<Tab>^Ws				&Chia\     i<Tab>^Ws
menutrans Sp&lit\ To\ #<Tab>^W^^			Chia\ &t   i\ #<Tab>^W^^
menutrans Split\ &Vertically<Tab>^Wv			Chia\ &d   c<Tab>^Wv
menutrans Split\ File\ E&xplorer			M   \ tr  nh\ &duy   t\ t   p\ tin
"
menutrans &Close<Tab>^Wc				    &ng<Tab>^Wc
menutrans Close\ &Other(s)<Tab>^Wo			    ng\ c  c\ c   a\ s   \ &kh  c<Tab>^Wo
"
menutrans Move\ &To					C&huy   n\ t   i
menutrans Rotate\ &Up<Tab>^WR				&L  n\ tr  n<Tab>^WR
menutrans Rotate\ &Down<Tab>^Wr				&Xu   ng\ d     i<Tab>^Wr
"
menutrans &Equal\ Size<Tab>^W=				C  n\ &b   ng\ k  ch\ th     c<Tab>^W=
menutrans &Max\ Height<Tab>^W_				Chi   u\ c&ao\ l   n\ nh   t<Tab>^W_
menutrans M&in\ Height<Tab>^W1_				Chi   u\ ca&o\ nh   \ nh   t<Tab>^W1_
menutrans Max\ &Width<Tab>^W\|				Chi   u\ &r   ng\ l   n\ nh   t<Tab>^W\|
menutrans Min\ Widt&h<Tab>^W1\|				Chi   &u\ r   ng\ nh   \ nh   t<Tab>^W1\|
">>>----------------- Window/Move To
menutrans &Top<Tab>^WK					     &u<Tab>^WK
menutrans &Bottom<Tab>^WJ				&Cu   i<Tab>^WJ
menutrans &Left\ side<Tab>^WH				&Tr  i<Tab>^WH
menutrans &Right\ side<Tab>^WL				&Ph   i<Tab>^WL
"
"
" The popup menu
"
"
menutrans &Undo						&H   y\ b     c
menutrans Cu&t						&C   t
menutrans &Copy						&Sao\ ch  p
menutrans &Paste					&D  n
menutrans &Delete					&X  a
menutrans Select\ Blockwise				Ch   n\ &theo\ kh   i
menutrans Select\ &Word					Ch   &n\ t   
menutrans Select\ &Line					Ch   n\ d  n&g
menutrans Select\ &Block				Ch   n\ &kh   i
menutrans Select\ &All					Ch   n\ t   t\ &c   
"
" The GUI toolbar
"
if has("toolbar")
  if exists("*Do_toolbar_tmenu")
    delfun Do_toolbar_tmenu
  endif
  fun Do_toolbar_tmenu()
    tmenu ToolBar.Open					M    t   p tin
    tmenu ToolBar.Save					Ghi nh    t   p tin
    tmenu ToolBar.SaveAll				Ghi nh    t   t c   
    tmenu ToolBar.Print					In ra
    tmenu ToolBar.Undo					H   y b     c
    tmenu ToolBar.Redo					L  m l   i
    tmenu ToolBar.Cut					C   t
    tmenu ToolBar.Copy					Sao ch  p
    tmenu ToolBar.Paste					D  n
    tmenu ToolBar.Find					T  m ki   m
    tmenu ToolBar.FindNext				T  m ti   p theo
    tmenu ToolBar.FindPrev				T  m ng     c l   i
    tmenu ToolBar.Replace				Thay th   ...
    tmenu ToolBar.LoadSesn				N   p bu   i l  m vi   c
    tmenu ToolBar.SaveSesn				Ghi nh    bu   i l  m vi   c
    tmenu ToolBar.RunScript				Ch   y script c   a Vim
    tmenu ToolBar.Make					Bi  n d   ch
    tmenu ToolBar.Shell					Shell
    tmenu ToolBar.RunCtags				T   o t   p tin th    ghi
    tmenu ToolBar.TagJump				Chuy   n t   i th    ghi
    tmenu ToolBar.Help					Tr    gi  p
    tmenu ToolBar.FindHelp				T  m trong tr    gi  p
  endfun
endif
"
"
" Dialog texts
"
" Find in help dialog
"
let g:menutrans_help_dialog = "H  y nh   p c  u l   nh ho   c t    kh  a t  m ki   m:\n\nTh  m i_       t  m ki   m c  u l   nh c   a ch          Nh   p Input (V   d   , i_CTRL-X)\nTh  m c_       t  m ki   m c  u l   nh c   a ch          so   n th   o d  ng l   nh (V   d   ,   _<Del>)\nTh  m '       t  m ki   m tr    gi  p cho m   t t  y ch   n (v   d   , 'shiftwidth')"
"
" Searh path dialog
"
let g:menutrans_path_dialog = "H  y ch    ra        ng d   n       t  m ki   m t   p tin.\nT  n c   a th   m   c ph  n c  ch nhau b   i d   u ph   y."
"
" Tag files dialog
"
let g:menutrans_tags_dialog = "Nh   p t  n t   p tin th    ghi (ph  n c  ch b   i d   u ph   y).\n"
"
" Text width dialog
"
let g:menutrans_textwidth_dialog = "H  y nh   p chi   u r   ng v  n b   n m   i.\nNh   p 0       h   y b   ."
"
" File format dialog
"
let g:menutrans_fileformat_dialog = "H  y ch   n      nh d   ng t   p tin."
let g:menutrans_fileformat_choices = "&Unix\n&Dos\n&Mac\n&H   y b   "
"
let menutrans_no_file = "[kh  ng c   t   p tin]"

let &cpo = s:keepcpo
unlet s:keepcpo
