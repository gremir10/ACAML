{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red101\green76\blue29;
\red0\green0\blue255;\red19\green118\blue70;\red0\green0\blue109;\red157\green0\blue210;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;\cssrgb\c47451\c36863\c14902;
\cssrgb\c0\c0\c100000;\cssrgb\c3529\c52549\c34510;\cssrgb\c0\c6275\c50196;\cssrgb\c68627\c0\c85882;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 1. Do problem number 1 from Tim Sheard's Assignment 1\cb1 \
\cb3         -3 :: Num a => a\cb1 \
\cb3         -even :: Integral a => a -> Bool\cb1 \
\cb3         -even 3 :: Bool (this is determined with :t)\cb1 \
\cb3         -head :: [a] -> a\cb1 \
\cb3         -[1, 2, 3] :: Num a => [a]\cb1 \
\cb3         -head [1, 2, 3] :: Num a => a\cb1 \
\cb3         -when using a polymorphic function, the type of the output is determined by the type of the parameter\cb1 \
\
\cb3 2. Do problem number 2 from Tim Sheard's Assignment 1\cb1 \
\cb3 a) \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\cb1 \
\cf4 \cb3 \strokec4 functA\cf2 \strokec2  :: (\cf5 \strokec5 Float\cf2 \strokec2  -> \cf5 \strokec5 Float\cf2 \strokec2 ) -> \cf5 \strokec5 Float\cf2 \cb1 \strokec2 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 functA x = x \cf6 \strokec6 1.23\cf2 \cb1 \strokec2 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 b)   \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\cb1 \
\cf4 \cb3 \strokec4 functB\cf2 \strokec2  :: \cf5 \strokec5 Float\cf2 \strokec2  -> (\cf5 \strokec5 Float\cf2 \strokec2  -> \cf5 \strokec5 Float\cf2 \strokec2 )\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 functB x = \\y -> x * y   \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 c)   \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\cb1 \
\cf4 \cb3 \strokec4 functC\cf2 \strokec2  :: (\cf5 \strokec5 Float\cf2 \strokec2  -> \cf5 \strokec5 Float\cf2 \strokec2 ) -> (\cf5 \strokec5 Float\cf2 \strokec2  -> \cf5 \strokec5 Float\cf2 \strokec2 )\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 functC f = \\x -> f(f x)\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 3.Write the ncopies function (from Tim Sheard) that works according to the following examples. Code this function first without recursion and then with recursion.ncopies 3 5  gives [5,5,5]\cb1 \
\cb3 ncopies 0 True gives []\cb1 \
\cb3 ncopies 2 False gives [False, False]\cb1 \
\cb3 ncopies 4 "a" gives ["a","a","a","a"]\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \strokec4 ncopies\cf2 \strokec2  :: (\cf5 \strokec5 Num\cf2 \strokec2  \cf7 \strokec7 i\cf2 \strokec2 , \cf5 \strokec5 Ord\cf2 \strokec2  \cf7 \strokec7 i\cf2 \strokec2 ) => \cf7 \strokec7 i\cf2 \strokec2  -> \cf7 \strokec7 a\cf2 \strokec2  -> [\cf7 \strokec7 a\cf2 \strokec2 ]\cb1 \
\cb3 ncopies n x\cb1 \
\cb3   | n <= \cf6 \strokec6 0\cf2 \strokec2   = \cf5 \strokec5 []\cf2 \cb1 \strokec2 \
\cb3   | otherwise = x:ncopies (n-\cf6 \strokec6 1\cf2 \strokec2 ) x\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 4. Write a function diffs that returns a list of the differences between adjacent items. So, diffs [3,5,6,8] returns [2,1,2]. (HWIB, Lists II)\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \strokec4 diffs\cf2 \strokec2  :: [\cf5 \strokec5 Int\cf2 \strokec2 ] -> [\cf5 \strokec5 Int\cf2 \strokec2 ]\cb1 \
\cb3 diffs = zipWith (\cf4 \strokec4 -\cf2 \strokec2 ) =<< tail\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 5.Write a function groupByN with the type:groupByN :: Int -> [a] -> [[a]]\cb1 \
\cb3 This function splits the given list in sub-lists (which result in a list of lists), where the sublists have a given length. Only the last sub-list may be shorter, if necessary. An example application of the function is:groupByN 3 [1,2,3,4,5,6,7,8,9,10]\cb1 \
\cb3 [[1,2,3], [4,5,6], [7,8,9], [10]]\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \strokec4 groupByN\cf2 \strokec2  :: \cf5 \strokec5 Int\cf2 \strokec2  -> [\cf7 \strokec7 a\cf2 \strokec2 ] -> [[\cf7 \strokec7 a\cf2 \strokec2 ]]\cb1 \
\cb3 groupByN _ \cf5 \strokec5 []\cf2 \strokec2  = \cf5 \strokec5 []\cf2 \cb1 \strokec2 \
\cb3 groupByN n xs =\cb1 \
\cb3    \cf5 \strokec5 let\cf2 \strokec2  (ys, zs) = splitAt n xs\cb1 \
\cb3    \cf5 \strokec5 in\cf2 \strokec2  ys : groupByN n zs\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 6.Design a way to represent straight lines in a cartesian coordinate system as internal data in Haskell (remember, y = mx + b) and then write a function that calculates the x-intercept (if any) for a given line . Be sure to test your function with some interesting cases! Note that you will NOT be doing anything graphically. This is just a very simple algebra problem.\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \strokec5 data\cf2 \strokec2  \cf5 \strokec5 Line\cf2 \strokec2  = Line \{ \cf7 \strokec7 slope\cf2 \strokec2  :: \cf5 \strokec5 Float\cf2 \strokec2 , \cf7 \strokec7 yIntercept\cf2 \strokec2  :: \cf5 \strokec5 Float\cf2 \strokec2  \}\cb1 \
\cf4 \cb3 \strokec4 xIntercept\cf2 \strokec2  :: \cf5 \strokec5 Line\cf2 \strokec2  -> \cf5 \strokec5 Maybe\cf2 \strokec2  \cf5 \strokec5 Float\cf2 \cb1 \strokec2 \
\cb3 xIntercept (Line m b) = \cf8 \strokec8 if\cf2 \strokec2  m == \cf6 \strokec6 0\cf2 \strokec2  \cf8 \strokec8 then\cf2 \strokec2  Nothing \cf8 \strokec8 else\cf2 \strokec2  Just (-b/m)\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 7.Do problem number 7 from Tim Sheard's Assignment 1. This problem is solved with a series of data transformations.-\}\cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\begin\cf2 \strokec2 \{code\}\
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \strokec4 stringToInt\cf2 \strokec2  :: \cf5 \strokec5 String\cf2 \strokec2  -> \cf5 \strokec5 Int\cf2 \cb1 \strokec2 \
\cb3 stringToInt str = sum $ map (\\(d,p) -> d * \cf6 \strokec6 10\cf2 \strokec2 ^p) $ zip (map digitToInt str) \cb1 \
\cb3 [length str - \cf6 \strokec6 1\cf2 \strokec2 , length str - \cf6 \strokec6 2\cf2 \strokec2  .. \cf6 \strokec6 0\cf2 \strokec2 ]\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3 \strokec4 \\end\cf2 \strokec2 \{code\}\cb1 \
}