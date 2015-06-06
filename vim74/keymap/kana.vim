" This script was originally created by Rory McCann <ebelular at gmail dot com>.
" Dan Kenigsberg noticed some deficiencies and suggested this one instead.
"
" Maintainer: Rory McCann <ebelular at gmail dot com>
" Modified by: Edward L. Fox <edyfox at gmail dot com>
" Last Change: 2006 Apr 30
"
"
"
"  Kana.kmap (Japanese Phonograms)
"
"  Converted from Gaspar Sinai's yudit 2.7.6
"  GNU (C) Gaspar Sinai <gsinai@yudit.org>
"
"  WARNING
"  -------
"  This version of Kana.kmap is different from the one that has been used
"  with yudit-2.7.2 or earlier.  The main difference is that this kmap is
"  arranged in such a way that it complies with an authorized Japanese
"  transliteration.  As a result, backward compatibility is not guaranteed.
"
"  NOTE
"  ----
"  1.	In general, the transliteration is based on Japanese Government's
"	Cabinet	Notification 1 (Dec. 9, 1954).
"
"	Summary:
"
"	(1) To transliterate Japanese language, Table 1 should be used
"	   primarily.
"	(2) Table 2 may be used only when existing conventions such as
"	   international relationship should be respected.
"	(3) Other transliteration is acceptable only when neither Table 1
"	    nor Table 2 gives any specification of the sound in question
"
"	For details, refer to
"
"	    http://xembho.tripod.com/siryo/naikaku_kokuzi.html
"
"  2.	The specification instructed by the Cabinet Notification is rather
"	inadequate even for daily use.  At the present time there are thus
"	many unauthorized but widely accepted conventions used together with
"	the authorized transliteration.  This kmap contains some of them for
"	user's convenience (cf. Hiragana 3 and Katakana 3).
"
"  3.	For the unicode mapping relevant to this kmap, refer to	3075--30F5 of
"
"	    http://www.macchiato.com/unicode/charts.html
"
"  HISTORY
"  -------
"  2005-01-11	<danken@cs.technion.ac.il>
"	* Converted to Vim format.
"  2003-01-22	<kazunobu.kuriyama@nifty.com>
"
"	* Submitted to gsinai@yudit.org
"
" ============================================================================

scriptencoding utf-8

" ----------------------------------------------------------------------------
"  Kigou (Punctuation etc.)
" ----------------------------------------------------------------------------

let b:keymap_name = "kana"

loadkeymap
"0x20  0x3000
,    
.    
,,    


xx    
@    
<    
>    
<<    
>>    
{    
}    
{{    
}}    
[.(    
).]    


[    
]    
[(    
)]    


[[    
]]    


..    
-    


" ----------------------------------------------------------------------------
"  Hiragana 1 --- Table 1, Cabinet Notification No. 1 (Dec. 9, 1954)
" ----------------------------------------------------------------------------
a    
i    
u    
e    
o    

ka    
ki    
ku    
ke    
ko    

sa    
si    
su    
se    
so    

ta    
ti    
tu    
te    
to    

na    
ni    
nu    
ne    
no    

ha    
hi    
hu    
he    
ho    

ma    
mi    
mu    
me    
mo    

ya    
yu    
yo    

ra    
ri    
ru    
re    
ro    

wa    

ga    
gi    
gu    
ge    
go    

za    
zi    
zu    
ze    
zo    

da    
de    
do    

ba    
bi    
bu    
be    
bo    

pa    
pi    
pu    
pe    
po    

kya       
kyu       
kyo       

sya       
syu       
syo       

tya       
tyu       
tyo       

nya       
nyu       
nyo       

hya       
hyu       
hyo       

mya       
myu       
myo       

rya       
ryu       
ryo       

gya       
gyu       
gyo       

zya       
zyu       
zyo       

bya       
byu       
byo       

pya       
pyu       
pyo       

n    
n'    


" ----------------------------------------------------------------------------
"  Hiragana 2 --- Table 2, Cabinet Notification No. 1 (Dec. 9, 1954)
" ----------------------------------------------------------------------------
sha       
shi    
shu       
sho       

tsu    

cha       
chi    
chu       
cho       

fu    

ja       
ji    
ju       
jo       

di    
du    
dya       
dyu       
dyo       

kwa       
gwa       

wo    


" ----------------------------------------------------------------------------
"  Hiragana 3 --- Conventional transliterations
" ----------------------------------------------------------------------------

" Small Hiragana: The prefix X is never pronounced.  It is used as something
" like an escape character.
xa    
xi    
xu    
xe    
xo    

xtu    

xya    
xyu    
xyo    

xwa    

" Historic `wi' and `we'
wi    
we    

" Preceded by a small `tu'
kka       
kki       
kku       
kke       
kko       

ssa       
ssi       
ssu       
sse       
sso       

tta       
tti       
ttu       
tte       
tto       

hha       
hhi       
hhu       
hhe       
hho       

mma       
mmi       
mmu       
mme       
mmo       

yya       
yyu       
yyo       

rra       
rri       
rru       
rre       
rro       

wwa       

gga       
ggi       
ggu       
gge       
ggo       

zza       
zzi       
zzu       
zze       
zzo       

dda       
ddi       
ddu       
dde       
ddo       

bba       
bbi       
bbu       
bbe       
bbo       

ppa       
ppi       
ppu       
ppe       
ppo       

" Proceded by a small `tu' and followed by a small 'ya', 'yu' or 'yo'
kkya          
kkyu          
kkyo          

ssya          
ssyu          
ssyo          

ttya          
ttyu          
ttyo          

hhya          
hhyu          
hhyo          

mmya          
mmyu          
mmyo          

rrya          
rryu          
rryo          

ggya          
ggyu          
ggyo          

zzya          
zzyu          
zzyo          

bbya          
bbyu          
bbyo          

ppya          
ppyu          
ppyo          


" ----------------------------------------------------------------------------
"  Katakana 1 --- Table 1, Cabinet Notification No. 1 (Dec. 9, 1954)
" ----------------------------------------------------------------------------
A    
I    
U    
E    
O    

KA    
KI    
KU    
KE    
KO    

SA    
SI    
SU    
SE    
SO    

TA    
TI    
TU    
TE    
TO    

NA    
NI    
NU    
NE    
NO    

HA    
HI    
HU    
HE    
HO    

MA    
MI    
MU    
ME    
MO    

YA    
YU    
YO    

RA    
RI    
RU    
RE    
RO    

WA    

GA    
GI    
GU    
GE    
GO    

ZA    
ZI    
ZU    
ZE    
ZO    

DA    
DE    
DO    

BA    
BI    
BU    
BE    
BO    

PA    
PI    
PU    
PE    
PO    

KYA       
KYU       
KYO       

SYA       
SYU       
SYO       

TYA       
TYU       
TYO       

NYA       
NYU       
NYO       

HYA       
HYU       
HYO       

MYA       
MYU       
MYO       

RYA       
RYU       
RYO       

GYA       
GYU       
GYO       

ZYA       
ZYU       
ZYO       

BYA       
BYU       
BYO       

PYA       
PYU       
PYO       

N    
N'    


" ----------------------------------------------------------------------------
"  Katakana 2 --- Table 2, Cabinet Notification No. 1 (Dec. 9, 1954)
" ----------------------------------------------------------------------------
SHA       
SHI    
SHU       
SHO       

TSU    

CHA       
CHI    
CHU       
CHO       

FU    

JA       
JI    
JU       
JO       

DI    
DU    
DYA       
DYU       
DYO       

KWA       
GWA       

WO    


" ----------------------------------------------------------------------------
"  Katakana 3 --- Conventional transliterations
" ----------------------------------------------------------------------------

" Small Katakana: The prefix X is never pronounced.  It is used as something
" like an escape character.
XA    
XI    
XU    
XE    
XO    

XTU    

XYA    
XYU    
XYO    

XWA    

" Used only for counting someone or something
XKA    
XKE    

" Historic `wi' and `we'
WI    
WE    

" Used for the sound `v' of European languages
VA       
VI       
VU    
VE       
VO       

VYU       

" Preceded by a small `tu'
KKA       
KKI       
KKU       
KKE       
KKO       

SSA       
SSI       
SSU       
SSE       
SSO       

TTA       
TTI       
TTU       
TTE       
TTO       

HHA       
HHI       
HHU       
HHE       
HHO       

MMA       
MMI       
MMU       
MME       
MMO       

YYA       
YYU       
YYO       

RRA       
RRI       
RRU       
RRE       
RRO       

WWA       

GGA       
GGI       
GGU       
GGE       
GGO       

ZZA       
ZZI       
ZZU       
ZZE       
ZZO       

DDA       
DDI       
DDU       
DDE       
DDO       

BBA       
BBI       
BBU       
BBE       
BBO       

PPA       
PPI       
PPU       
PPE       
PPO       

" Proceded by a small `tu' and followed by a small 'ya', 'yu' or 'yo'
KKYA          
KKYU          
KKYO          

SSYA          
SSYU          
SSYO          

TTYA          
TTYU          
TTYO          

HHYA          
HHYU          
HHYO          

MMYA          
MMYU          
MMYO          

RRYA          
RRYU          
RRYO          

GGYA          
GGYU          
GGYO          

ZZYA          
ZZYU          
ZZYO          

BBYA          
BBYU          
BBYO          

PPYA          
PPYU          
PPYO          


