" Vim keymap file for Bulgarian and Russian characters, "bds" layout.
" Most of it can be used with both utf-8 and cp1251 file encodings, except
" the accented characters which can only be stored in utf-8.
" This file itself is in utf-8.

" Maintainer: Boyko Bantchev <boykobb@gmail.com>
" URI: http://www.math.bas.bg/bantchev/vim/bulgarian-bds.vim
" Last Changed: 2010 May 4

" This keymap corresponds to what is called Bulgarian standard typewriter
" keyboard layout, or "      ".
"
" Note that, in addition to the Bulgarian alphabet, the BDS layout prescribes
" the presence of the following characters:
"          The Russian letters    (small), and    and    (capital and small).
"          The latin capital letters I and V     used to type Roman numerals
"        without having to leave Cyrillic mode.
"
" Some punctuation characters present in ascii are mapped in BDS to keys
" different from the ones they occupy in the QWERTY layout, because the latter
" keys are used to type other characters.
"
" In this keymap, also defined (besides BDS) are:
"          The Russian letters    and    (capital and small), as well as the
"        Russian capital letter    (see above for the small counterpart).
"        This way, using the bulgarian-bds keymap, one can access both
"        the Bulgarian and the Russian alphabets.
"          The quotation marks                     (used in the Bulgarian and English
"        quotation styles), as well as       (Russian quotation style).
"          The characters   ,    ,     (en-dash),     (em-dash),    ,    ,   ,   ,   ,   ,
"          ,    ,    ,    ,    , and   .
"
" The keymap also defines key combinations for grave and acute accents.
" (Grave accent is used in Bulgarian, acute in Russian, but both accents
" apply to other languages as well.)
"
" For details of what key or key combination maps to what character, please
" see below the map itself.
"
" See also http://www.math.bas.bg/bantchev/vim/kbdbul.html (in Bulgarian).

scriptencoding utf-8

let b:keymap_name = "bds"

loadkeymap
D                CYRILLIC CAPITAL LETTER A
?                CYRILLIC CAPITAL LETTER BE
L                CYRILLIC CAPITAL LETTER VE
H                CYRILLIC CAPITAL LETTER GHE
O                CYRILLIC CAPITAL LETTER DE
E                CYRILLIC CAPITAL LETTER IE
E::              CYRILLIC CAPITAL LETTER IO
G                CYRILLIC CAPITAL LETTER ZHE
P                CYRILLIC CAPITAL LETTER ZE
R                CYRILLIC CAPITAL LETTER I
X                CYRILLIC CAPITAL LETTER SHORT I
U                CYRILLIC CAPITAL LETTER KA
>                CYRILLIC CAPITAL LETTER EL
:                CYRILLIC CAPITAL LETTER EM
K                CYRILLIC CAPITAL LETTER EN
F                CYRILLIC CAPITAL LETTER O
M                CYRILLIC CAPITAL LETTER PE
<                CYRILLIC CAPITAL LETTER ER
I                CYRILLIC CAPITAL LETTER ES
J                CYRILLIC CAPITAL LETTER TE
W                CYRILLIC CAPITAL LETTER U
B                CYRILLIC CAPITAL LETTER EF
N                CYRILLIC CAPITAL LETTER HA
{                CYRILLIC CAPITAL LETTER TSE
\"               CYRILLIC CAPITAL LETTER CHE
T                CYRILLIC CAPITAL LETTER SHA
Y                CYRILLIC CAPITAL LETTER SHCHA
C                CYRILLIC CAPITAL LETTER HARD SIGN
CX               CYRILLIC CAPITAL LETTER YERU
A                CYRILLIC CAPITAL LETTER SOFT SIGN
V                CYRILLIC CAPITAL LETTER REVERSED E
Z                CYRILLIC CAPITAL LETTER YU
S                CYRILLIC CAPITAL LETTER YA
d                CYRILLIC SMALL LETTER A
\/               CYRILLIC SMALL LETTER BE
l                CYRILLIC SMALL LETTER VE
h                CYRILLIC SMALL LETTER GHE
o                CYRILLIC SMALL LETTER DE
e                CYRILLIC SMALL LETTER IE
e::              CYRILLIC SMALL LETTER IO
g                CYRILLIC SMALL LETTER ZHE
p                CYRILLIC SMALL LETTER ZE
r                CYRILLIC SMALL LETTER I
x                CYRILLIC SMALL LETTER SHORT I
u                CYRILLIC SMALL LETTER KA
\.               CYRILLIC SMALL LETTER EL
;                CYRILLIC SMALL LETTER EM
k                CYRILLIC SMALL LETTER EN
f                CYRILLIC SMALL LETTER O
m                CYRILLIC SMALL LETTER PE
,                CYRILLIC SMALL LETTER ER
i                CYRILLIC SMALL LETTER ES
j                CYRILLIC SMALL LETTER TE
w                CYRILLIC SMALL LETTER U
b                CYRILLIC SMALL LETTER EF
n                CYRILLIC SMALL LETTER HA
[                CYRILLIC SMALL LETTER TSE
'                CYRILLIC SMALL LETTER CHE
t                CYRILLIC SMALL LETTER SHA
y                CYRILLIC SMALL LETTER SHCHA
c                CYRILLIC SMALL LETTER HARD SIGN
Q                CYRILLIC SMALL LETTER YERU
a                CYRILLIC SMALL LETTER SOFT SIGN
v                CYRILLIC SMALL LETTER REVERSED E
z                CYRILLIC SMALL LETTER YU
s                CYRILLIC SMALL LETTER YA
_       I       LATIN CAPITAL LETTER I
+       V       LATIN CAPITAL LETTER V
$       "       QUOTATION MARK
\\      (       LEFT PARENTHESIS
|       )       RIGHT PARENTHESIS
#       +       PLUS SIGN
q       ,       COMMA
(       -       HYPHEN-MINUS
=       .       FULL STOP (PERIOD)
*       /       SOLIDUS (SLASH)
&       :       COLON
]       ;       SEMICOLON
^       =       EQUALS SIGN
@       ?       QUESTION MARK
}                SECTION SIGN (PARAGRAPH SIGN)
)                 NUMERO SIGN
--                EN DASH
---               EM DASH
..                HORIZONTAL ELLIPSIS
``                LEFT DOUBLE QUOTATION MARK
''                RIGHT DOUBLE QUOTATION MARK
,,                DOUBLE LOW-9 QUOTATION MARK
`.                LEFT SINGLE QUOTATION MARK
'.                RIGHT SINGLE QUOTATION MARK
<<               LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
>>               RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
**                BULLET
,.               MIDDLE DOT      
+-               PLUS-MINUS SIGN
^o               DEGREE SIGN
~~               NOT SIGN
@@               CURRENCY SIGN
$$                EURO SIGN
%%                PER MILLE SIGN
+|                DAGGER
++                DOUBLE DAGGER
||               PILCROW SIGN

" Accented characters cannot map onto cp1251     use utf-8 file encoding.
" To apply an accent to a letter, type the corresponding key combination
" to the immediate right of that letter.
^`      <char-0x300>    COMBINING GRAVE ACCENT
^'      <char-0x301>    COMBINING ACUTE ACCENT
