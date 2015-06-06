" Vim Keymap file for Sinhala (Sri Lanka) (2003-11-02)
" Maintainer  : Harshula Jayasuriya <harshula@gmail.com>
" Last Updated: 2007-06-30
" This is a phonetic static mapping for a standard US-English keyboard
" (qwerty)
" http://www.nongnu.org/sinhala/doc/keymaps/sinhala-keyboard_3.html

" Copy the keymap to ~/.vim/keymap/
" Start gvim
" Need to disable the menu so that you can use the 'alt' key.
"   set guioptions-=m
" Select the new keymap
"   set keymap=sinhala-phonetic_utf-8

let b:keymap_name = "sinhala"

loadkeymap
<A-n>	<char-0x0d82>	"      - anusvaraya (anusvara)
H	<char-0x0d83>	"      - visargaya (visarga)
a	<char-0x0d85>	"     - ayanna (a)
A	<char-0x0d86>	"     - aayanna (aa)
w	<char-0x0d87>	"     - aeyanna (ae)
W	<char-0x0d88>	"     - aeeyanna (aee)
i	<char-0x0d89>	"     - iyanna (i)
I	<char-0x0d8a>	"     - iiyanna (ii)
u	<char-0x0d8b>	"     - uyanna (u)
U	<char-0x0d8c>	"     - uuyanna (uu)
q	<char-0x0d8d>	"     - iruyanna (iru)
Q	<char-0x0d8e>	"     - iruuyanna (iruu)
<A-k>	<char-0x0d8f>	"     - iluyanna (ilu)
<A-K>	<char-0x0d90>	"     - iluuyanna (iluu)
e	<char-0x0d91>	"     - eyanna (e)
E	<char-0x0d92>	"     - eeyanna (ee)
<A-F>	<char-0x0d93>	"     - aiyanna (ai)
o	<char-0x0d94>	"     - oyanna (o)
O	<char-0x0d95>	"     - ooyanna (oo)
<A-H>	<char-0x0d96>	"     - auyanna (au)
k	<char-0x0d9a>	"     - alpapraana kayanna (ka)
K	<char-0x0d9b>	"     - mahaapraana kayanna (kha)
g	<char-0x0d9c>	"     - alpapraana gayanna (ga)
G	<char-0x0d9d>	"     - mahaapraana gayanna (gha)
<A-N>	<char-0x0d9e>	"     - kantaja naasikyaya (nga)
<A-g>	<char-0x0d9f>	"     - sanyaka gayanna (nnga)
c	<char-0x0da0>	"     - alpapraana cayanna (ca)
C	<char-0x0da1>	"     - mahaapraana cayanna (cha)
j	<char-0x0da2>	"     - alpapraana jayanna (ja)
J	<char-0x0da3>	"     - mahaapraana jayanna (jha)
z	<char-0x0da4>	"     - taaluja naasikyaya (nya)
Z	<char-0x0da5>	"     - taaluja sanyooga naasikyaya (jnya)
<A-j>	<char-0x0da6>	"     - sanyaka jayanna (nyja)
<A-t>	<char-0x0da7>	"     - alpapraana ttayanna (tta)
<A-T>	<char-0x0da8>	"     - mahaapraana ttayanna (ttha)
<A-d>	<char-0x0da9>	"     - alpapraana ddayanna (dda)
<A-D>	<char-0x0daa>	"     - mahaapraana ddayanna (ddha)
N	<char-0x0dab>	"     - muurdhaja nayanna (nna)
X	<char-0x0dac>	"     - sanyaka ddayanna (nndda)
t	<char-0x0dad>	"     - alpapraana tayanna (ta)
T	<char-0x0dae>	"     - mahaapraana tayanna (tha)
d	<char-0x0daf>	"     - alpapraana dayanna (da)
D	<char-0x0db0>	"     - mahaapraana dayanna (dha)
n	<char-0x0db1>	"     - dantaja nayanna (na)
x	<char-0x0db3>	"     - sanyaka dayanna (nda)
p	<char-0x0db4>	"     - alpapraana payanna (pa)
P	<char-0x0db5>	"     - mahaapraana payanna (pha)
b	<char-0x0db6>	"     - alpapraana bayanna (ba)
B	<char-0x0db7>	"     - mahaapraana bayanna (bha)
m	<char-0x0db8>	"     - mayanna (ma)
M	<char-0x0db9>	"     - amba bayanna (mba)
y	<char-0x0dba>	"     - yayanna (ya)
r	<char-0x0dbb>	"     - rayanna (ra)
l	<char-0x0dbd>	"     - dantaja layanna (la)
v	<char-0x0dc0>	"     - vayanna (va)
S	<char-0x0dc1>	"     - taaluja sayanna (sha)
<A-s>	<char-0x0dc2>	"     - muurdhaja sayanna (ssa)
s	<char-0x0dc3>	"     - dantaja sayanna (sa)
h	<char-0x0dc4>	"     - hayanna (ha)
L	<char-0x0dc5>	"     - muurdhaja layanna (lla)
f	<char-0x0dc6>	"     - fayanna (fa)
<A-a>	<char-0x0dca>	"      - al-lakuna
<A-A>	<char-0x0dcf>	"      - aela-pilla (aa)
<A-w>	<char-0x0dd0>	"      - ketti aeda-pilla (ae)
<A-W>	<char-0x0dd1>	"      - diga aeda-pilla (aae)
<A-i>	<char-0x0dd2>	"      - ketti is-pilla (i)
<A-I>	<char-0x0dd3>	"      - diga is-pilla (ii)
<A-u>	<char-0x0dd4>	"      - ketti paa-pilla (u)
<A-U>	<char-0x0dd6>	"      - diga paa-pilla (uu)
<A-q>	<char-0x0dd8>	"      - gaetta-pilla (r)
<A-e>	<char-0x0dd9>	"      - kombuva (e)
<A-E>	<char-0x0dda>	"      - diga kombuva (ee)
<A-f>	<char-0x0ddb>	"      - kombu deka (ai)
<A-o>	<char-0x0ddc>	"      - kombuva haa aela-pilla (o)
<A-O>	<char-0x0ddd>	"      - kombuva haa diga aela-pilla (oo)
<A-h>	<char-0x0dde>	"      - kombuva haa gayanukitta (au)
<A-l>	<char-0x0ddf>	"      - gayanukitta (l)
<A-Q>	<char-0x0df2>	"      - diga gaetta-pilla (rr)
<A-L>	<char-0x0df3>	"      - diga gayanukitta (ll)
<A-.>	<char-0x0df4>	"     - kunddaliya (punctuation)

R	<char-0x0dca><char-0x200d><char-0x0dbb>	"            - rakaaranshaya
Y	<char-0x0dca><char-0x200d><char-0x0dba>	"            - yansaya
<A-r>	<char-0x0dbb><char-0x0dca><char-0x200d>	"           - repaya

<A-,>	<char-0x0dca><char-0x200d>	" join - conjunct letters cons 0DCA ZWJ cons
<A-/>	<char-0x200d><char-0x0dca>	" touch - cons ZWJ 0DCA cons

<C-space>	<char-0x00a0>	" - no-break space. <S-space> didn't work.
<A-space>	<char-0x200c>	" - ZWNJ. <A-space> doesn't work!
