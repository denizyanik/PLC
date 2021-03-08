{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*        ; 
  else 			{ \p s -> TokenElse p }
  Bool 			{ \p s -> TokenTypeBool p }
  Int			{ \p s -> TokenTypeInt p }
  readStream    { \p s -> TokenReadStream p }
  For			{ \p s -> TokenFor p }
  If 			{ \p s -> TokenIf p }
  to 			{ \p s -> TokenTo p }
  inc 			{ \p s -> TokenInc p }
  While	 		{ \p s -> TokenWhile p }
  true			{ \p s -> TokenTrue p }
  false 		{ \p s -> TokenFalse p }
  and			{ \p s -> TokenAnd p}
  or 			{ \p s -> TokenOr p }
  \<			{ \p s -> TokenLess p }
  \> 			{ \p s -> TokenMore p }
  print 		{ \p s -> TokenPrint p }
  is 			{ \p s -> TokenIs p }
  $digit+       { \p s -> TokenInt p (read s) } 
  \=            { \p s -> TokenEq p}
  \+            { \p s -> TokenPlus p }
  \-            { \p s -> TokenMinus p }
  \*            { \p s -> TokenTimes p }
  \^			{ \p s -> TokenExpon p }
  \/            { \p s -> TokenDiv p }
  \(            { \p s -> TokenLParen p }
  \)            { \p s -> TokenRParen p }
  \{			{ \p s -> TokenLBrack p }
  \}			{ \p s -> TokenRBrack p }
  \.			{ \p s -> TokenEnd p }
  \,      		{ \p s -> TokenComma p }	
  get 	 		{ \p s -> TokenGet p  }
  \% 			{ \p s -> TokenModulo p }
  push 			{ \p s -> TokenPush p }
	

 
  $alpha [$alpha $digit \_ \’]*   { \p s -> TokenVar p s }
{ 
-- Each action has type :: AlexPosn -> String -> Token 



-- The token type: 
data Token = 
  TokenIs AlexPosn		     |
  TokenFor AlexPosn        |
  TokenIf AlexPosn         |
  TokenTo AlexPosn         |
  TokenInc AlexPosn        |
  TokenWhile AlexPosn      |
  TokenTrue AlexPosn       |
  TokenFalse AlexPosn      |
  TokenAnd AlexPosn        |
  TokenOr AlexPosn		     |
  TokenLess AlexPosn       |
  TokenMore AlexPosn	     |	
  TokenPrint AlexPosn	     |
  TokenExpon AlexPosn	     |
  TokenInt AlexPosn Int    |
  TokenVar AlexPosn String | 
  TokenEq  AlexPosn        |
  TokenPlus AlexPosn       |
  TokenMinus AlexPosn      |
  TokenTimes AlexPosn      |
  TokenDiv AlexPosn        |
  TokenExp AlexPosn        |
  TokenLParen AlexPosn     |
  TokenRParen AlexPosn     |
  TokenTypeBool AlexPosn   |
  TokenTypeInt AlexPosn    |
  TokenLBrack AlexPosn     |
  TokenRBrack AlexPosn     |
  TokenElse AlexPosn       |
  TokenEnd AlexPosn		   |
  TokenReadStream AlexPosn |
  TokenComma AlexPosn      |
  TokenList AlexPosn	   |
  TokenGet AlexPosn		   |
  TokenModulo AlexPosn     |
  TokenPush AlexPosn
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenPush (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenModulo (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReadStream (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd (AlexPn a l c)) =  show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLBrack (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRBrack (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIs (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFor (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTo  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInc  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLess  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMore  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint  (AlexPn a l c)) = "error show(l) ++ ":" ++ show(c)
tokenPosn (TokenExpon  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)


}