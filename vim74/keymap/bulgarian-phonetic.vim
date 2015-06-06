" Vim keymap file for Bulgarian and Russian characters, "phonetic" layout.
" Most of it can be used with both utf-8 and cp1251 file encodings, except
" the accented vowels which can only be stored in utf-8.
" This file itself is in utf-8.

" Maintainer:   Boyko Bantchev <boykobb@gmail.com>
" URI: http://www.math.bas.bg/bantchev/vim/bulgarian-phonetic.vim
" Last Changed: 2010 May 4

" This keymap corresponds to what is called "phonetic layout" in Bulgaria:
" Cyrillic letters tend to be mapped to their Latin homophones wherever
" there are ones.  Most keys corresponding to punctuation characters are
" left unmapped, so they retain their usual (QWERTY) meanings when typing
" Cyrillic.
"
" In addition to the Bulgarian alphabet, the keymap makes accessible the
" following characters:
"          The letters    and   ,    and   , and    and    (in pairs of capital and
"        small).  These are the letters in the Russian alphabet that are not
"        present in Bulgarian, so using the bulgarian-phonetic keymap one can
"        type in Russian, too.
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

let b:keymap_name = "pho"

loadkeymap
A                CYRILLIC CAPITAL LETTER A
B                CYRILLIC CAPITAL LETTER BE
W                CYRILLIC CAPITAL LETTER VE
G                CYRILLIC CAPITAL LETTER GHE
D                CYRILLIC CAPITAL LETTER DE
E                CYRILLIC CAPITAL LETTER IE
E::              CYRILLIC CAPITAL LETTER IO
V                CYRILLIC CAPITAL LETTER ZHE
Z                CYRILLIC CAPITAL LETTER ZE
I                CYRILLIC CAPITAL LETTER I
J                CYRILLIC CAPITAL LETTER SHORT I
K                CYRILLIC CAPITAL LETTER KA
L                CYRILLIC CAPITAL LETTER EL
M                CYRILLIC CAPITAL LETTER EM
N                CYRILLIC CAPITAL LETTER EN
O                CYRILLIC CAPITAL LETTER O
P                CYRILLIC CAPITAL LETTER PE
R                CYRILLIC CAPITAL LETTER ER
S                CYRILLIC CAPITAL LETTER ES
T                CYRILLIC CAPITAL LETTER TE
U                CYRILLIC CAPITAL LETTER U
F                CYRILLIC CAPITAL LETTER EF
H                CYRILLIC CAPITAL LETTER HA
C                CYRILLIC CAPITAL LETTER TSE
~                CYRILLIC CAPITAL LETTER CHE
{                CYRILLIC CAPITAL LETTER SHA
}                CYRILLIC CAPITAL LETTER SHCHA
Y                CYRILLIC CAPITAL LETTER HARD SIGN
YI               CYRILLIC CAPITAL LETTER YERU
X                CYRILLIC CAPITAL LETTER SOFT SIGN
YE               CYRILLIC CAPITAL LETTER REVERSED E
|                CYRILLIC CAPITAL LETTER YU
Q                CYRILLIC CAPITAL LETTER YA
a                CYRILLIC SMALL LETTER A
b                CYRILLIC SMALL LETTER BE
w                CYRILLIC SMALL LETTER VE
g                CYRILLIC SMALL LETTER GHE
d                CYRILLIC SMALL LETTER DE
e                CYRILLIC SMALL LETTER IE
e::              CYRILLIC SMALL LETTER IO
v                CYRILLIC SMALL LETTER ZHE
z                CYRILLIC SMALL LETTER ZE
i                CYRILLIC SMALL LETTER I
j                CYRILLIC SMALL LETTER SHORT I
k                CYRILLIC SMALL LETTER KA
l                CYRILLIC SMALL LETTER EL
m                CYRILLIC SMALL LETTER EM
n                CYRILLIC SMALL LETTER EN
o                CYRILLIC SMALL LETTER O
p                CYRILLIC SMALL LETTER PE
r                CYRILLIC SMALL LETTER ER
s                CYRILLIC SMALL LETTER ES
t                CYRILLIC SMALL LETTER TE
u                CYRILLIC SMALL LETTER U
f                CYRILLIC SMALL LETTER EF
h                CYRILLIC SMALL LETTER HA
c                CYRILLIC SMALL LETTER TSE
`                CYRILLIC SMALL LETTER CHE
[                CYRILLIC SMALL LETTER SHA
]                CYRILLIC SMALL LETTER SHCHA
y                CYRILLIC SMALL LETTER HARD SIGN
yi               CYRILLIC SMALL LETTER YERU
x                CYRILLIC SMALL LETTER SOFT SIGN
ye               CYRILLIC SMALL LETTER REVERSED E
\\               CYRILLIC SMALL LETTER YU
q                CYRILLIC SMALL LETTER YA
!!               SECTION SIGN (PARAGRAPH SIGN)
##                NUMERO SIGN
--                EN DASH
---               EM DASH
..                HORIZONTAL ELLIPSIS
``                LEFT DOUBLE QUOTATION  MARK
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
