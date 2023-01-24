{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red19\green118\blue70;
\red157\green0\blue210;\red144\green1\blue18;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;\cssrgb\c3529\c52549\c34510;
\cssrgb\c68627\c0\c85882;\cssrgb\c63922\c8235\c8235;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 doubleMe x = x + x\cb1 \
\
\cb3 doubleUs x y = x*\cf4 \strokec4 2\cf2 \strokec2  + y*\cf4 \strokec4 2\cf2 \cb1 \strokec2 \
\
\cb3 doubleSmallNumber x = \cf5 \strokec5 if\cf2 \strokec2  x > \cf4 \strokec4 100\cf2 \cb1 \strokec2 \
\cb3     \cf5 \strokec5 then\cf2 \strokec2  x\cb1 \
\cb3     \cf5 \strokec5 else\cf2 \strokec2  x*\cf4 \strokec4 2\cf2 \cb1 \strokec2 \
\
\cb3 doubleSmallNumber' x = (\cf5 \strokec5 if\cf2 \strokec2  x > \cf4 \strokec4 100\cf2 \strokec2  \cf5 \strokec5 then\cf2 \strokec2  x \cf5 \strokec5 else\cf2 \strokec2  x*\cf4 \strokec4 2\cf2 \strokec2 ) + \cf4 \strokec4 1\cf2 \cb1 \strokec2 \
\
\cb3 boomBangs xs = [\cf5 \strokec5 if\cf2 \strokec2  x < \cf4 \strokec4 10\cf2 \strokec2  \cf5 \strokec5 then\cf2 \strokec2  \cf6 \strokec6 "BOOM!"\cf2 \strokec2  \cf5 \strokec5 else\cf2 \strokec2  \cf6 \strokec6 "BANG!"\cf2 \strokec2  | x <- xs, odd x]\cb1 \
\
\cb3 removeNonUppercase st = [c | c <- st, c `elem` [\cf6 \strokec6 'A'\cf2 \strokec2 ..\cf6 \strokec6 'Z'\cf2 \strokec2 ]]\cb1 \
}