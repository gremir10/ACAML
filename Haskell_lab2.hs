{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red15\green112\blue1;\red255\green255\blue255;\red0\green0\blue0;
\red19\green118\blue70;}
{\*\expandedcolortbl;;\cssrgb\c0\c50196\c0;\cssrgb\c100000\c100000\c100000;\cssrgb\c0\c0\c0;
\cssrgb\c3529\c52549\c34510;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -- PINH CH 3 slides:\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 --(1)\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- [\'92a\'92,\'92b\'92,\'92c\'92] type is [Char]\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- (\'92a\'92,\'92b\'92,\'92c\'92) type is (Char, Char, Char)\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- [(False,\'920\'92),(True,\'921\'92)] type is [(Bool, Char)]\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- ([False,True],[\'920\'92,\'921\'92]) type is ([Bool], [Char])\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- [tail,init,reverse] type is [[a] -> [a]]\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 --(2)\cf4 \cb1 \strokec4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 second xs = head (tail xs) \cf2 \strokec2 --second :: [a] -> a\cf4 \cb1 \strokec4 \
\cb3 swap (x,y) = (y,x) \cf2 \strokec2 --swap :: (b, a) -> (a, b)\cf4 \cb1 \strokec4 \
\cb3 pair x y = (x,y) \cf2 \strokec2 --pair :: a -> b -> (a, b)\cf4 \cb1 \strokec4 \
\cb3 double x = x*\cf5 \strokec5 2\cf4 \strokec4  \cf2 \strokec2 --double :: Num a => a -> a\cf4 \cb1 \strokec4 \
\cb3 palindrome xs = reverse xs == xs \cf2 \strokec2 --palindrome :: Eq a => [a] -> Bool\cf4 \cb1 \strokec4 \
\cb3 twice f x = f (f x) \cf2 \strokec2 --twice :: (t -> t) -> t -> t\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 \strokec2 --PINH CH 4 slides:\cf4 \cb1 \strokec4 \
}