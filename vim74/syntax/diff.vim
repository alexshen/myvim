" Vim syntax file
" Language:	Diff (context or unified)
" Maintainer:	Bram Moolenaar <Bram@vim.org>
"               Translations by Jakson Alves de Aquino.
" Last Change:	2013 Jul 24

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif
scriptencoding utf-8

syn match diffOnly	"^Only in .*"
syn match diffIdentical	"^Files .* and .* are identical$"
syn match diffDiffer	"^Files .* and .* differ$"
syn match diffBDiffer	"^Binary files .* and .* differ$"
syn match diffIsA	"^File .* is a .* while file .* is a .*"
syn match diffNoEOL	"^\\ No newline at end of file .*"
syn match diffCommon	"^Common subdirectories: .*"

" ca
syn match diffOnly	"^Nom  s a .*"
syn match diffIdentical	"^Els fitxers .* i .* s  n id  ntics$"
syn match diffDiffer	"^Els fitxers .* i .* difereixen$"
syn match diffBDiffer	"^Els fitxers .* i .* difereixen$"
syn match diffIsA	"^El fitxer .*   s un .* mentre que el fitxer .*   s un .*"
syn match diffNoEOL	"^\\ No hi ha cap car  cter de salt de l  nia al final del fitxer"
syn match diffCommon	"^Subdirectoris comuns: .* i .*"

" cs
syn match diffOnly	"^Pouze v .*"
syn match diffIdentical	"^Soubory .* a .* jsou identick  $"
syn match diffDiffer	"^Soubory .* a .* jsou r  zn  $"
syn match diffBDiffer	"^Bin  rn   soubory .* a .* jsou rozd  ln  $"
syn match diffBDiffer	"^Soubory .* a .* jsou r  zn  $"
syn match diffIsA	"^Soubor .* je .* pokud soubor .* je .*"
syn match diffNoEOL	"^\\ Chyb   znak konce     dku na konci souboru"
syn match diffCommon	"^Spole  n   podadres    e: .* a .*"

" da
syn match diffOnly	"^Kun i .*"
syn match diffIdentical	"^Filerne .* og .* er identiske$"
syn match diffDiffer	"^Filerne .* og .* er forskellige$"
syn match diffBDiffer	"^Bin  re filer .* og .* er forskellige$"
syn match diffIsA	"^Filen .* er en .* mens filen .* er en .*"
syn match diffNoEOL	"^\\ Intet linjeskift ved filafslutning"
syn match diffCommon	"^Identiske underkataloger: .* og .*"

" de
syn match diffOnly	"^Nur in .*"
syn match diffIdentical	"^Dateien .* und .* sind identisch.$"
syn match diffDiffer	"^Dateien .* und .* sind verschieden.$"
syn match diffBDiffer	"^Bin  rdateien .* and .* sind verschieden.$"
syn match diffBDiffer	"^Bin  rdateien .* und .* sind verschieden.$"
syn match diffIsA	"^Datei .* ist ein .* w  hrend Datei .* ein .* ist.$"
syn match diffNoEOL	"^\\ Kein Zeilenumbruch am Dateiende."
syn match diffCommon	"^Gemeinsame Unterverzeichnisse: .* und .*.$"

" el
syn match diffOnly	"^                .*"
syn match diffIdentical	"^                  .*        .*                                    $"
syn match diffDiffer	"^                  .*        .*                   $"
syn match diffBDiffer	"^                  .*        .*                   $"
syn match diffIsA	"^                  .*            .*                          .*            .*"
syn match diffNoEOL	"^\\                                                                                                           "
syn match diffCommon	"^                              .*        .*                                $"

" eo
syn match diffOnly	"^Nur en .*"
syn match diffIdentical	"^Dosieroj .* kaj .* estas samaj$"
syn match diffDiffer	"^Dosieroj .* kaj .* estas malsamaj$"
syn match diffBDiffer	"^Dosieroj .* kaj .* estas malsamaj$"
syn match diffIsA	"^Dosiero .* estas .*, dum dosiero .* estas .*"
syn match diffNoEOL	"^\\ Mankas linifino   e fino de dosiero"
syn match diffCommon	"^Komunaj subdosierujoj: .* kaj .*"

" es
syn match diffOnly	"^S  lo en .*"
syn match diffIdentical	"^Los ficheros .* y .* son id  nticos$"
syn match diffDiffer	"^Los ficheros .* y .* son distintos$"
syn match diffBDiffer	"^Los ficheros binarios .* y .* son distintos$"
syn match diffIsA	"^El fichero .* es un .* mientras que el .* es un .*"
syn match diffNoEOL	"^\\ No hay ning  n car  cter de nueva l  nea al final del fichero"
syn match diffCommon	"^Subdirectorios comunes: .* y .*"

" fi
syn match diffOnly	"^Vain hakemistossa .*"
syn match diffIdentical	"^Tiedostot .* ja .* ovat identtiset$"
syn match diffDiffer	"^Tiedostot .* ja .* eroavat$"
syn match diffBDiffer	"^Bin    ritiedostot .* ja .* eroavat$"
syn match diffIsA	"^Tiedosto .* on .*, kun taas tiedosto .* on .*"
syn match diffNoEOL	"^\\ Ei rivinvaihtoa tiedoston lopussa"
syn match diffCommon	"^Yhteiset alihakemistot: .* ja .*"

" fr
syn match diffOnly	"^Seulement dans .*"
syn match diffIdentical	"^Les fichiers .* et .* sont identiques.*"
syn match diffDiffer	"^Les fichiers .* et .* sont diff  rents.*"
syn match diffBDiffer	"^Les fichiers binaires .* et .* sont diff  rents.*"
syn match diffIsA	"^Le fichier .* est un .* alors que le fichier .* est un .*"
syn match diffNoEOL	"^\\ Pas de fin de ligne    la fin du fichier.*"
syn match diffCommon	"^Les sous-r  pertoires .* et .* sont identiques.*"

" ga
syn match diffOnly	"^I .* amh  in: .*"
syn match diffIdentical	"^Is comhionann iad na comhaid .* agus .*"
syn match diffDiffer	"^T   difr  ocht idir na comhaid .* agus .*"
syn match diffBDiffer	"^T   difr  ocht idir na comhaid .* agus .*"
syn match diffIsA	"^T   comhad .* ina .* ach t   comhad .* ina .*"
syn match diffNoEOL	"^\\ Gan l  ne nua ag an chomhadchr  och"
syn match diffCommon	"^Fochomhadlanna i gcoitianta: .* agus .*"

" gl
syn match diffOnly	"^S   en .*"
syn match diffIdentical	"^Os ficheiros .* e .* son id  nticos$"
syn match diffDiffer	"^Os ficheiros .* e .* son diferentes$"
syn match diffBDiffer	"^Os ficheiros binarios .* e .* son diferentes$"
syn match diffIsA	"^O ficheiro .*    un .* mentres que o ficheiro .*    un .*"
syn match diffNoEOL	"^\\ Non hai un salto de li  a na fin da li  a"
syn match diffCommon	"^Subdirectorios com  ns: .* e .*"

" he
syn match diffOnly	"^.*-                 .*"
syn match diffIdentical	"^                  .*-   .*             $"
syn match diffDiffer	"^                       `.*'-   `.*'             $"
syn match diffBDiffer	"^                       `.*'-   `.*'                          $"
syn match diffIsA	"^.* .*-   .* .*                           $"
syn match diffNoEOL	"^\\                             -                    "
syn match diffCommon	"^.*-   .* :                     -    $"

" hr
syn match diffOnly	"^Samo u .*"
syn match diffIdentical	"^Datoteke .* i .* su identi  ne$"
syn match diffDiffer	"^Datoteke .* i .* se razlikuju$"
syn match diffBDiffer	"^Binarne datoteke .* i .* se razlikuju$"
syn match diffIsA	"^Datoteka .* je .*, a datoteka .* je .*"
syn match diffNoEOL	"^\\ Nema novog retka na kraju datoteke"
syn match diffCommon	"^Uobi  ajeni poddirektoriji: .* i .*"

" hu
syn match diffOnly	"^Csak .* -ben: .*"
syn match diffIdentical	"^.*   s .* f  jlok azonosak$"
syn match diffDiffer	"^A(z) .*   s a(z) .* f  jlok k  l  nb  znek$"
syn match diffBDiffer	"^A(z) .*   s a(z) .* f  jlok k  l  nb  znek$"
syn match diffIsA	"^A(z) .* f  jl egy .*, viszont a(z) .* f  jl egy .*"
syn match diffNoEOL	"^\\ Nincs   jsor a f  jl v  g  n"
syn match diffCommon	"^K  z  s alk  nyvt  rak: .*   s .*"

" id
syn match diffOnly	"^Hanya dalam .*"
syn match diffIdentical	"^File .* dan .* identik$"
syn match diffDiffer	"^Berkas .* dan .* berbeda$"
syn match diffBDiffer	"^File biner .* dan .* berbeda$"
syn match diffIsA	"^File .* adalah .* sementara file .* adalah .*"
syn match diffNoEOL	"^\\ Tidak ada baris-baru di akhir dari berkas"
syn match diffCommon	"^Subdirektori sama: .* dan .*"

" it
syn match diffOnly	"^Solo in .*"
syn match diffIdentical	"^I file .* e .* sono identici$"
syn match diffDiffer	"^I file .* e .* sono diversi$"
syn match diffBDiffer	"^I file .* e .* sono diversi$"
syn match diffBDiffer	"^I file binari .* e .* sono diversi$"
syn match diffIsA	"^File .*    un .* mentre file .*    un .*"
syn match diffNoEOL	"^\\ Manca newline alla fine del file"
syn match diffCommon	"^Sottodirectory in comune: .* e .*"

" ja
syn match diffOnly	"^.*               : .*"
syn match diffIdentical	"^            .*   .*         $"
syn match diffDiffer	"^            .*   .*               $"
syn match diffBDiffer	"^                              .*   .*               $"
syn match diffIsA	"^            .*   .*               .*   .*"
syn match diffNoEOL	"^\\                                       �      "
syn match diffCommon	"^                                    : .*   .*"

" ja DiffUtils 3.3
syn match diffOnly	"^.*                : .*"
syn match diffIdentical	"^             .*     .*                $"
syn match diffDiffer	"^             .*     .*                   $"
syn match diffBDiffer	"^                            .*    .*                   $"
syn match diffIsA	"^             .*     .*                                .*     .*       $"
syn match diffNoEOL	"^\\                                              "
syn match diffCommon	"^                                    : .*     .*"

" lv
syn match diffOnly	"^Tikai iek   .*"
syn match diffIdentical	"^Fails .* un .* ir identiski$"
syn match diffDiffer	"^Faili .* un .* at    iras$"
syn match diffBDiffer	"^Faili .* un .* at    iras$"
syn match diffBDiffer	"^Bin  rie faili .* un .* at    iras$"
syn match diffIsA	"^Fails .* ir .* kam  r fails .* ir .*"
syn match diffNoEOL	"^\\ Nav jaunu rindu faila beig  s"
syn match diffCommon	"^Kop  j  s apak  direktorijas: .* un .*"

" ms
syn match diffOnly	"^Hanya dalam .*"
syn match diffIdentical	"^Fail .* dan .* adalah serupa$"
syn match diffDiffer	"^Fail .* dan .* berbeza$"
syn match diffBDiffer	"^Fail .* dan .* berbeza$"
syn match diffIsA	"^Fail .* adalah .* manakala fail .* adalah .*"
syn match diffNoEOL	"^\\ Tiada baris baru pada penghujung fail"
syn match diffCommon	"^Subdirektori umum: .* dan .*"

" nl
syn match diffOnly	"^Alleen in .*"
syn match diffIdentical	"^Bestanden .* en .* zijn identiek$"
syn match diffDiffer	"^Bestanden .* en .* zijn verschillend$"
syn match diffBDiffer	"^Bestanden .* en .* zijn verschillend$"
syn match diffBDiffer	"^Binaire bestanden .* en .* zijn verschillend$"
syn match diffIsA	"^Bestand .* is een .* terwijl bestand .* een .* is$"
syn match diffNoEOL	"^\\ Geen regeleindeteken (LF) aan einde van bestand"
syn match diffCommon	"^Gemeenschappelijke submappen: .* en .*"

" pl
syn match diffOnly	"^Tylko w .*"
syn match diffIdentical	"^Pliki .* i .* s   identyczne$"
syn match diffDiffer	"^Pliki .* i .* r    ni   si  $"
syn match diffBDiffer	"^Pliki .* i .* r    ni   si  $"
syn match diffBDiffer	"^Binarne pliki .* i .* r    ni   si  $"
syn match diffIsA	"^Plik .* jest .*, podczas gdy plik .* jest .*"
syn match diffNoEOL	"^\\ Brak znaku nowej linii na ko  cu pliku"
syn match diffCommon	"^Wsp  lne podkatalogi: .* i .*"

" pt_BR
syn match diffOnly	"^Somente em .*"
syn match diffOnly	"^Apenas em .*"
syn match diffIdentical	"^Os aquivos .* e .* s  o id  nticos$"
syn match diffDiffer	"^Os arquivos .* e .* s  o diferentes$"
syn match diffBDiffer	"^Os arquivos bin  rios .* e .* s  o diferentes$"
syn match diffIsA	"^O arquivo .*    .* enquanto o arquivo .*    .*"
syn match diffNoEOL	"^\\ Falta o caracter nova linha no final do arquivo"
syn match diffCommon	"^Subdiret  rios id  nticos: .* e .*"

" ro
syn match diffOnly	"^Doar   n .*"
syn match diffIdentical	"^Fi  ierele .*   i .* sunt identice$"
syn match diffDiffer	"^Fi  ierele .*   i .* difer  $"
syn match diffBDiffer	"^Fi  ierele binare .*   i .* difer  $"
syn match diffIsA	"^Fi  ierul .* este un .* pe c  nd fi  ierul .* este un .*.$"
syn match diffNoEOL	"^\\ Nici un element de linie nou   la sf  r  itul fi  ierului"
syn match diffCommon	"^Subdirectoare comune: .*   i .*.$"

" ru
syn match diffOnly	"^                .*"
syn match diffIdentical	"^           .*    .*                   $"
syn match diffDiffer	"^           .*    .*                       $"
syn match diffBDiffer	"^           .*    .*                       $"
syn match diffIsA	"^         .*        .*,                            .* -- .*"
syn match diffNoEOL	"^\\                                                        "
syn match diffCommon	"^                                 : .*    .*"

" sr
syn match diffOnly	"^            .*"
syn match diffIdentical	"^                    .*          .*                             $"
syn match diffDiffer	"^                 .*    .*                   $"
syn match diffBDiffer	"^                                .*    .*                   $"
syn match diffIsA	"^         �          .*            .*                                    .*       .*   $"
syn match diffNoEOL	"^\\                                                            "
syn match diffCommon	"^                                                     : .*    .*"

" sv
syn match diffOnly	"^Endast i .*"
syn match diffIdentical	"^Filerna .* och .*   r lika$"
syn match diffDiffer	"^Filerna .* och .* skiljer$"
syn match diffBDiffer	"^Filerna .* och .* skiljer$"
syn match diffIsA	"^Fil .*   r en .* medan fil .*   r en .*"
syn match diffBDiffer	"^De bin  ra filerna .* och .* skiljer$"
syn match diffIsA	"^Filen .*   r .* medan filen .*   r .*"
syn match diffNoEOL	"^\\ Ingen nyrad vid filslut"
syn match diffCommon	"^Lika underkataloger: .* och .*"

" tr
syn match diffOnly	"^Yaln  zca .*'da: .*"
syn match diffIdentical	"^.* ve .* dosyalar   birbirinin ayn  $"
syn match diffDiffer	"^.* ve .* dosyalar   birbirinden farkl  $"
syn match diffBDiffer	"^.* ve .* dosyalar   birbirinden farkl  $"
syn match diffBDiffer	"^  kili .* ve .* birbirinden farkl  $"
syn match diffIsA	"^.* dosyas  , bir .*, halbuki .* dosyas   bir .*"
syn match diffNoEOL	"^\\ Dosya sonunda yenisat  r yok."
syn match diffCommon	"^Ortak alt dizinler: .* ve .*"

" uk
syn match diffOnly	"^            .*"
syn match diffIdentical	"^           .*      .*                   $"
syn match diffDiffer	"^           .*      .*                           $"
syn match diffBDiffer	"^           .*      .*                           $"
syn match diffBDiffer	"^                            .*      .*                           $"
syn match diffIsA	"^         .*      .*,                        .* -- .*"
syn match diffNoEOL	"^\\                                                                   "
syn match diffCommon	"^                                     : .*      .*"

" vi
syn match diffOnly	"^Ch    trong .*"
syn match diffIdentical	"^Hai t   p tin .* v   .* l   b   ng nhau.$"
syn match diffIdentical	"^C    .* v   .* l   c  ng m   t t   p tin$"
syn match diffDiffer	"^Hai t   p tin .* v   .* l   kh  c nhau.$"
syn match diffBDiffer	"^Hai t   p tin nh    ph  n .* v   .* kh  c nhau$"
syn match diffIsA	"^T   p tin .* l   m   t .* trong khi t   p tin .* l   m   t .*.$"
syn match diffBDiffer	"^Hai t   p tin .* v   .* l   kh  c nhau.$"
syn match diffIsA	"^T   p tin .* l   m   t .* c  n t   p tin .* l   m   t .*.$"
syn match diffNoEOL	"^\\ Kh  ng c   k   t    d  ng m   i t   i k  t th   c t   p tin."
syn match diffCommon	"^Th   m   c con chung: .* v   .*"

" zh_CN
syn match diffOnly	"^       .*          .*"
syn match diffIdentical	"^       .*     .*       $"
syn match diffDiffer	"^       .*     .*       $"
syn match diffBDiffer	"^       .*     .*       $"
syn match diffIsA	"^       .*    .*          .*    .*"
syn match diffNoEOL	"^\\                 newline       "
syn match diffCommon	"^.*     .*                      $"

" zh_TW
syn match diffOnly	"^       .*          .*"
syn match diffIdentical	"^       .*     .*       $"
syn match diffDiffer	"^       .*     .*       $"
syn match diffBDiffer	"^             .*     .*       $"
syn match diffIsA	"^       .*    .*          .*    .*"
syn match diffNoEOL	"^\\                 newline       "
syn match diffCommon	"^.*     .*                      $"


syn match diffRemoved	"^-.*"
syn match diffRemoved	"^<.*"
syn match diffAdded	"^+.*"
syn match diffAdded	"^>.*"
syn match diffChanged	"^! .*"

syn match diffSubname	" @@..*"ms=s+3 contained
syn match diffLine	"^@.*" contains=diffSubname
syn match diffLine	"^\<\d\+\>.*"
syn match diffLine	"^\*\*\*\*.*"
syn match diffLine	"^---$"

"Some versions of diff have lines like "#c#" and "#d#" (where # is a number)
syn match diffLine	"^\d\+\(,\d\+\)\=[cda]\d\+\>.*"

syn match diffFile	"^diff.*"
syn match diffFile	"^+++ .*"
syn match diffFile	"^Index: .*"
syn match diffFile	"^==== .*"
syn match diffOldFile	"^\*\*\* .*"
syn match diffNewFile	"^--- .*"

syn match diffComment	"^#.*"

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link diffOldFile		diffFile
hi def link diffNewFile		diffFile
hi def link diffFile		Type
hi def link diffOnly		Constant
hi def link diffIdentical	Constant
hi def link diffDiffer		Constant
hi def link diffBDiffer		Constant
hi def link diffIsA		Constant
hi def link diffNoEOL		Constant
hi def link diffCommon		Constant
hi def link diffRemoved		Special
hi def link diffChanged		PreProc
hi def link diffAdded		Identifier
hi def link diffLine		Statement
hi def link diffSubname		PreProc
hi def link diffComment		Comment

let b:current_syntax = "diff"

" vim: ts=8 sw=2
