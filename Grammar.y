{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
	Bool {TokenTypeBool _ }
	Int {TokenTypeInt _ }
    For {TokenFor _ }
	If {TokenIf _ }
	to {TokenTo _ }
	inc {TokenInc _ }
	While {TokenWhile _ }
	true {TokenTrue _ }
	false {TokenFalse _ }
	'<' {TokenLess _ }
	'>' {TokenMore _ }
	is {TokenIs _ }
	print {TokenPrint _ }
    int { TokenInt _ $$ } 
    var { TokenVar _ $$ } 
    '=' { TokenEq _ } 
    '+' { TokenPlus _ } 
    '-' { TokenMinus _ } 
    '*' { TokenTimes _ } 
    '^' { TokenExpon  _  }
    '/' { TokenDiv _ } 
    '(' { TokenLParen _ } 
    ')' { TokenRParen _ } 
	'{' { TokenLBrack _ }
	'}' { TokenRBrack _ }
	else {TokenElse _ }
	'.' {TokenEnd _ }
	',' {TokenComma _ }
	readStream {TokenReadStream _}
	get {TokenGet _ }
	'%' {TokenModulo _ }
	push {TokenPush _ }
		
%right  '.'   
%right  var '='
%right  ',' get
%nonassoc If
%nonassoc else
%nonassoc While
%nonassoc For
%nonassoc print '{' '}' '(' ')' 
%nonassoc push
%left '+' '-'  int 
%left '*' '/' '%' 
%left '^'
%left '<' '>' is 
%left NEG 
%% 

Exp : true												{ ValTrue }
	| false 											{ ValFalse }
	| int 												{ ValInt $1 }
	| var 												{ VarName $1 }
	| get Exp Exp 										{ Get $2 $3 }
	| readStream int								    { ReadStream $2 }
	| Exp ',' Exp										{ Comma $1 $3 }
	| Exp is Exp 										{ Is $1 $3 }
    | Exp '<' Exp 										{ LessThan $1 $3 }
	| Exp '>' Exp										{ MoreThan $1 $3 }
	| If Exp '{' Exp '}' else '{' Exp '}'				{ If $2 $4 $8 }
	| For var '=' int to int inc int '{' Exp '}'  		{ For $2 $4 $6 $8 $10 }
	| While Exp '{' Exp '}' 							{ While $2  $4 }
	| Type var '=' Exp									{ Var $1 $2 $4 }
	| '(' Exp ')' 										{ $2 }
	| print Exp											{ Print $2 }
	| Exp '+' Exp 										{ Plus $1 $3 } 
	| Exp '-' Exp 										{ Minus $1 $3 } 
	| Exp '*' Exp 										{ Times $1 $3 } 
	| Exp '/' Exp 										{ Divide $1 $3 } 
	| Exp '^' Exp										{ Expon $1 $3 } 
	| Exp '.' Exp									 	{ End $1 $3 }
	| var '=' Exp										{ Assign $1 $3 }
	| Exp '%' Exp 										{ Modulo $1 $3 }
	| push Exp Exp 										{ Push $2 $3 }
	
Type : Bool 											{ TypeBool }
	| Int												{ TypeInt }

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data LangType = TypeBool | TypeInt 
	deriving (Show,Eq)
	
type Environment = [ (String,Expr) ]	
	
data Expr = VarName String | Is Expr Expr | LessThan Expr Expr | MoreThan Expr Expr 
			| If Expr Expr Expr | For String Int Int Int Expr
			| While Expr  Expr | Var LangType String Expr | Print Expr
			| ValInt Int | ValTrue | ValFalse | Plus Expr Expr 
			| Minus Expr Expr
			| Times Expr Expr | Divide Expr Expr | Modulo Expr Expr
			| Expon Expr Expr | End Expr Expr 
			| Assign String Expr | ReadStream Int
			| Comma Expr Expr | Get Expr Expr
			| Push Expr Expr
			| Cl LangType String Expr Environment
		deriving (Show,Eq)

	
		
} 