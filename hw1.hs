{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red15\green112\blue1;\red255\green255\blue255;\red0\green0\blue0;
\red101\green76\blue29;\red0\green0\blue109;\red0\green0\blue255;\red144\green1\blue18;\red19\green118\blue70;
}
{\*\expandedcolortbl;;\cssrgb\c0\c50196\c0;\cssrgb\c100000\c100000\c100000;\cssrgb\c0\c0\c0;
\cssrgb\c47451\c36863\c14902;\cssrgb\c0\c6275\c50196;\cssrgb\c0\c0\c100000;\cssrgb\c63922\c8235\c8235;\cssrgb\c3529\c52549\c34510;
}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 --1. Code the last function for lists using the built-in reverse function for lists.-\}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 last'\cf4 \strokec4  :: [\cf6 \strokec6 a\cf4 \strokec4 ] -> \cf6 \strokec6 a\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 last' \cf7 \strokec7 []\cf4 \strokec4  = error \cf8 \strokec8 "Can't get last element if list is empty"\cf4 \cb1 \strokec4 \
\cb3 last' xs = head (reverse xs)\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --2.Code the init function for lists using the built-in reverse function for lists.-\}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 init'\cf4 \strokec4  :: [\cf6 \strokec6 a\cf4 \strokec4 ] -> [\cf6 \strokec6 a\cf4 \strokec4 ]\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 init' \cf7 \strokec7 []\cf4 \strokec4  = error \cf8 \strokec8 "Can't get initial elements if list is empty!!"\cf4 \cb1 \strokec4 \
\cb3 init' xs = reverse(tail(reverse xs))\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 \{-3. Code a function that returns the first and last elements of a list as a 2-tuple \cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 (a pair). Give a type for the function. Be sure to think about what you want to do for a list of length 0 or 1.\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -\}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 firstLast\cf4 \strokec4  :: [\cf6 \strokec6 a\cf4 \strokec4 ] -> \cf7 \strokec7 Maybe\cf4 \strokec4  (\cf6 \strokec6 a\cf4 \strokec4 , \cf6 \strokec6 a\cf4 \strokec4 )\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 firstLast \cf7 \strokec7 []\cf4 \strokec4  = Nothing\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --returns Just (x, x) for list with one element\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 firstLast [x] = Just (x, x)\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --returns Just (x, last xs) for list with two or more elements\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 firstLast (x:xs) = Just (x, last xs)\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --4. Code the function rangeProduct that returns 0 if the second argument is smaller than the first. -\}\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 --without recursion:\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 rangeProduct\cf4 \strokec4  :: (\cf7 \strokec7 Integral\cf4 \strokec4  \cf6 \strokec6 a\cf4 \strokec4 ) => \cf6 \strokec6 a\cf4 \strokec4  -> \cf6 \strokec6 a\cf4 \strokec4  -> \cf6 \strokec6 a\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 rangeProduct x y\cb1 \
\cb3   |y<x=\cf9 \strokec9 0\cf4 \strokec4   \cf2 \strokec2 --if first argument>second, return 0\cf4 \cb1 \strokec4 \
\cb3   |otherwise = product[x..y]\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --with recursion:\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 rangeProduct'\cf4 \strokec4  :: (\cf7 \strokec7 Integral\cf4 \strokec4  \cf6 \strokec6 a\cf4 \strokec4 ) => \cf6 \strokec6 a\cf4 \strokec4  -> \cf6 \strokec6 a\cf4 \strokec4  -> \cf6 \strokec6 a\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 rangeProduct' x y\cb1 \
\cb3   |x > y = \cf9 \strokec9 0\cf4 \cb1 \strokec4 \
\cb3   |y == x = x\cb1 \
\cb3   |otherwise=y*rangeProduct' x (y-\cf9 \strokec9 1\cf4 \strokec4 )\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --5. \'97Use the function rangeProduct to code a version of the factorial function.\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 \strokec5 factorial\cf4 \strokec4  :: (\cf7 \strokec7 Integral\cf4 \strokec4  \cf6 \strokec6 a\cf4 \strokec4 ) => \cf6 \strokec6 a\cf4 \strokec4  -> \cf6 \strokec6 a\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 factorial n = rangeProduct \cf9 \strokec9 1\cf4 \strokec4  n \cb1 \
}