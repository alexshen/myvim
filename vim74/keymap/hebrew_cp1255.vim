" add in the vowel points, known as 'niqud', which are present in
" CP1255: Note: there are several 'standards' for placement of the vowel
" points, and I ignored all of them.  Since we can input English by simply
" pressing Ctrl-^ and eliminating this map, I saw no reason to try to use
" exotic key locations.  If you don't like it, that's just too bad :-)
let b:keymap_name = "heb"
loadkeymap
a	<char-249>	"    - shin
b	<char-240>	"    - nun
c	<char-225>	"    - bet
d	<char-226>	"    - gimel
e	<char-247>	"    - qof
f	<char-235>	"    - kaf
g	<char-242>	"    - ayin
h	<char-233>	"    - yod
i	<char-239>	"    - final nun
j	<char-231>	"    - het
k	<char-236>	"    - lamed
l	<char-234>	"    - final kaf
m	<char-246>	"    - tsadi
n	<char-238>	"    - mem
o	<char-237>	"    - final mem
p	<char-244>	"    - pe
q	/		" / - slash
r	<char-248>	"    - resh
s	<char-227>	"    - dalet
t	<char-224>	"    - alef
u	<char-229>	"    - vav
v	<char-228>	"    - he
w	'		" ' - single-quote
x	<char-241>	"    - samekh
y	<char-232>	"    - tet
z	<char-230>	"    - zayin
,	<char-250>	"    - tav
.	<char-245>	"    - final tsadi
;	<char-243>	"    - final pe
'	,		" , - comma
/	.		" . - period
`	;		" ; - semicolon
" vowels:
A:	<Char-192>	" sheva
HE	<Char-193>	" hataf segol
HA	<Char-194>	" hataf patah
HO	<Char-195>	" hataf qamats
I	<Char-196>	" hiriq
AY	<Char-197>	" tsere
E	<Char-198>	" segol
AA	<Char-199>	" patah
AO	<Char-200>	" qamats
O	<Char-201>	" holam
U	<Char-203>	" qubuts
D	<Char-204>	" dagesh
]T	<Char-205>	" meteg
]Q	<Char-206>	" maqaf
]R      <  Char-207>	" rafe
]p      <Char-208>      " paseq
SR	<Char-209>	" shin-dot
SL	<Char-210>	" sin-dot
]P	<Char-211>	" sof-pasuq
VV	<Char-212>    " double-vav
VY	<Char-213>    " vav-yod
YY	<Char-214>    " yod-yod
