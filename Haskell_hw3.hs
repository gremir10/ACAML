{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red15\green112\blue1;\red255\green255\blue255;
\red101\green76\blue29;\red0\green0\blue109;\red0\green0\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c0\c50196\c0;\cssrgb\c100000\c100000\c100000;
\cssrgb\c47451\c36863\c14902;\cssrgb\c0\c6275\c50196;\cssrgb\c0\c0\c100000;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\qc\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0
\f1 \cf3 \cb4 \strokec3 -- 1.Write a function\'a0flatten\'a0that takes a list of lists and flattens it to a single list.\cf2 \cb1 \strokec2 \
\pard\pardeftab720\sl360\partightenfactor0
\ls1\ilvl0\cf5 \cb4 \strokec5 flatten\cf2 \strokec2  :: [[\cf6 \strokec6 a\cf2 \strokec2 ]] -> [\cf6 \strokec6 a\cf2 \strokec2 ]\cb1 \
\ls1\ilvl0\cb4 flatten xss = [x | xs <- xss, x <- xs]\cb1 \
\pard\tx720\pardeftab720\partightenfactor0

\f0 \cf2 \
\pard\pardeftab720\sl360\partightenfactor0

\f1 \cf3 \cb4 \strokec3 -- 2.Write a function\'a0remdups\'a0that removes all duplicates from a list.\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 remdups\cf2 \strokec2  :: [\cf7 \strokec7 Int\cf2 \strokec2 ] -> [\cf7 \strokec7 Int\cf2 \strokec2 ]\cb1 \
\cb4 remdups \cf7 \strokec7 []\cf2 \strokec2  = \cf7 \strokec7 []\cf2 \cb1 \strokec2 \
\cb4 remdups (x:xs) = x: (remdups (remove x xs))\cb1 \
\cb4    \cf7 \strokec7 where\cf2 \cb1 \strokec2 \
\cb4     \cf5 \strokec5 remove\cf2 \strokec2  :: \cf7 \strokec7 Int\cf2 \strokec2  -> [\cf7 \strokec7 Int\cf2 \strokec2 ] -> [\cf7 \strokec7 Int\cf2 \strokec2 ]\cb1 \
\cb4     remove x \cf7 \strokec7 []\cf2 \strokec2  = \cf7 \strokec7 []\cf2 \cb1 \strokec2 \
\cb4     remove x (y:ys)\cb1 \
\cb4        | x==y = remove x ys \cf3 \strokec3 --if x=y remove element\cf2 \cb1 \strokec2 \
\cb4        |otherwise = y:(remove x ys)\cb1 \
\cb4         \cb1 \
\cf5 \cb4 \strokec5 \'97alternative version:\
remdups\'92\cf2 \strokec2  :: \cf7 \strokec7 Eq\cf2 \strokec2  \cf6 \strokec6 a\cf2 \strokec2  => [\cf6 \strokec6 a\cf2 \strokec2 ] -> [\cf6 \strokec6 a\cf2 \strokec2 ]\cb1 \
\cb4 remdups\'92 \cf7 \strokec7 []\cf2 \strokec2  = \cf7 \strokec7 []\cf2 \cb1 \strokec2 \
\cb4 remdups\'92 (x:xs) = x : filter (/= x) (remdups xs)\cb1 \
\pard\tx720\pardeftab720\partightenfactor0

\f0 \cf2 \
\pard\pardeftab720\sl360\partightenfactor0

\f1 \cf3 \cb4 \strokec3 -- 3.  Write a function\'a0scanSum\'a0that adds the items in a list and returns a list of the running totals.\cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 -- So, scanSum [2,3,4,5] returns [2,5,9,14].\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 scanSum\cf2 \strokec2  :: \cf7 \strokec7 Num\cf2 \strokec2  \cf6 \strokec6 a\cf2 \strokec2  => [\cf6 \strokec6 a\cf2 \strokec2 ] -> [\cf6 \strokec6 a\cf2 \strokec2 ]\cb1 \
\cb4 scanSum \cf7 \strokec7 []\cf2 \strokec2  = \cf7 \strokec7 []\cf2 \cb1 \strokec2 \
\cb4 scanSum (x:xs) = \cf7 \strokec7 let\cf2 \strokec2  sums = scanSum xs\cb1 \
\cb4       \cf7 \strokec7 in\cf2 \strokec2  x: map (x+) sums\cb1 \
\pard\tx720\pardeftab720\partightenfactor0

\f0 \cf2 \
\pard\pardeftab720\sl360\partightenfactor0

\f1 \cf3 \cb4 \strokec3 -- 4. .Write a function\'a0group\'a0that takes a list and returns a list of lists such that the concatenation of the result\cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 -- is equal to the original argument. Each sublist in the result contains only equal elements\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 group\cf2 \strokec2  :: \cf7 \strokec7 Eq\cf2 \strokec2  \cf6 \strokec6 a\cf2 \strokec2  => [\cf6 \strokec6 a\cf2 \strokec2 ] -> [[\cf6 \strokec6 a\cf2 \strokec2 ]]\cb1 \
\cb4 group \cf7 \strokec7 []\cf2 \strokec2  = \cf7 \strokec7 []\cf2 \cb1 \strokec2 \
\cb4 group (x:xs) = (x : takeWhile (==x) xs) : group (dropWhile (==x) xs)\cb1 \
\pard\tx720\pardeftab720\partightenfactor0

\f0 \cf2 \uc0\u8232 \
\pard\pardeftab720\sl360\partightenfactor0

\f1 \cf3 \cb4 \strokec3 -- 5.Write a function\'a0listDiff\'a0with two lists as parameters that deletes\'a0every\'a0occurrence of every element of \cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 --the second list from the first list. This is analogous to a set difference.\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 listDiff\cf2 \strokec2  :: \cf7 \strokec7 Eq\cf2 \strokec2  \cf6 \strokec6 a\cf2 \strokec2  => [\cf6 \strokec6 a\cf2 \strokec2 ] -> [\cf6 \strokec6 a\cf2 \strokec2 ] -> [\cf6 \strokec6 a\cf2 \strokec2 ]\cb1 \
\cb4 listDiff xs ys = [x | x <- xs, not (elem x ys)]\cb1 \
\pard\tx720\pardeftab720\partightenfactor0

\f0 \cf2 \uc0\u8232 \
\pard\pardeftab720\sl360\partightenfactor0

\f1 \cf3 \cb4 \strokec3 -- 6. Implement a Run Length Encoding (RLE) encoder and decoder. \cf2 \cb1 \strokec2 \
\cf3 \cb4 \strokec3 --given some input: "aaaabbaaa" compress it by taking the length of each run of characters:(4,'a'), (2, 'b'), (3, 'a') \cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 runLength\cf2 \strokec2  :: \cf7 \strokec7 String\cf2 \strokec2  -> [(\cf7 \strokec7 Char\cf2 \strokec2 , \cf7 \strokec7 Int\cf2 \strokec2 )]\cb1 \
\cb4 runLength \cf7 \strokec7 []\cf2 \strokec2  = \cf7 \strokec7 []\cf2 \cb1 \strokec2 \
\cb4 runLength xs = [(head x, length x) | x <- group xs]\cb1 \
\pard\tx720\pardeftab720\partightenfactor0

\f0 \cf2 \uc0\u8232 \
}