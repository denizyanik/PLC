module Eval where
import Grammar

--Defined data structures in the grammar
--data LangType = TypeBool | TypeInt 
--type Environment = [ (String,Expr) ]
--data Expr = VarName String | Is Expr Expr | LessThan Expr Expr | MoreThan Expr Expr 
--			| If Expr Expr Expr | For String Int Int Int Expr
--			| While Expr  Expr | Var LangType String Expr | Print Expr
--			| ValInt Int | ValTrue | ValFalse | Plus Expr Expr 
--			| Minus Expr Expr
--			| Times Expr Expr | Divide Expr Expr 
--			| Expon Expr Expr | End Expr Expr
--			| Assign String Expr
-- 			| Cl LangType String Expr Environment


data Frame = HIs Expr Environment
           | IsH Expr
           | HLess Expr Environment
           | LessH Expr
           | HMore Expr Environment
           | MoreH Expr
           | HIf Expr Expr Environment
           | HWhile Expr Expr Environment
		   | HFor String Int Int Int Expr Environment
           | HPlus Expr Environment
           | PlusH Expr
           | HMinus Expr Environment
           | MinusH Expr
           | HTimes Expr Environment
           | TimesH Expr
           | HDivide Expr Environment
           | DivideH Expr
           | HExpon Expr Environment
           | ExponH Expr
		   | HEnd Expr Environment 
		   | HPrint Environment
		   | HAssign String Environment
		   | HModulo Expr Environment
		   | ModuloH Expr
		   | HGet Expr Expr 
		   | GetH Expr 
		   | PushH Expr Environment
		   | HPush Expr String Environment
		   | HHGet Expr Expr
		
type Kontinuation = [Frame]
type State = (Expr,Environment,Kontinuation)


--environment stores list of substitutions so we can find values of variables
--

--Unpacks a closure to get the lambda term and environment
-- t is type, x is var name, e is value
unpack :: Expr -> (Expr,Environment)
unpack (Cl t x e env) = ((Var t x e) , env)
unpack e = (e,[])



--Finds values in an environment and unpacks it
-- x is var name you're looking for, y is the var name in the current environment
getValue :: String -> Environment -> (Expr,Environment)
getValue x [] = error "Variable not defined"
getValue x ((y,e):env) | x == y = unpack e
					   | otherwise = getValue x env
					   

--Checks if an expression is terminated
isTerminated :: Expr -> Bool
isTerminated (ValInt _) = True
isTerminated ValTrue = True
isTerminated ValFalse = True
isTerminated (Print _) = True
isTerminated (Cl _ _ _ _) = True
isTerminated _ = False

printSyntax :: Expr -> IO()
printSyntax (VarName x) = putStrLn (show x) 
printSyntax (Is x y) = putStrLn (show x ++ "==" ++ show y)
printSyntax (LessThan x y) = putStrLn (show x ++ "<" ++ show y)
printSyntax (MoreThan x y) = putStrLn (show x ++ ">" ++ show y)
printSyntax (If x y z) = putStrLn ("If " ++ show x ++ "{" ++ show y ++ "}" ++ " else {" ++ show z ++ "}")

step :: State -> IO()
--Evaluation rules for push function
step (Push (VarName x) (VarName y),env,k) = step (VarName x,env,(PushH (VarName y) env):k)
step (ValInt x,env,(PushH (VarName y) env1):k) = step (VarName y,env1,(HPush (ValInt x) y env1):k)
step (Comma e1 e2,env,(HPush (ValInt x) y env1):k) = step (Var TypeInt y (Comma (ValInt x) (Comma e1 e2)) ,env1,k)

step ((VarName x),env,k) = step (e', env', k)
					where (e', env') = getValue x env
					

--Evaluation for assignment to variables
step (Assign x e, env,k) = step (e,env,(HAssign x env):k)
step (ValInt e,env,(HAssign x env1):k) = step (ValFalse,(x,(Cl TypeInt x (ValInt e) env)):env1,k)
					

--Evaluation for print functions
step (ValInt x,env,(HPrint env2):k) = do putStrLn (show x)
									>> step (ValTrue,env2,k)
step (ValTrue,env,(HPrint env2):k) = do putStrLn (show True)
									>> step (ValTrue,env2,k)
step (ValFalse,env,(HPrint env2):k) = do putStrLn (show False)
									>> step (ValTrue,env2,k)
step ((Print (e)),env,k) = step (e,env,(HPrint env):k)


--Evaluation rules for equals
step ((Is e1 e2),env,k) = step (e1,env,(HIs e2 env):k)
step ((ValInt n), env1, (HIs e env2):k) = step (e,env2,(IsH (ValInt n)) : k)
step ((ValInt m), env1, (IsH (ValInt n)):k) | n == m = step (ValTrue,[],k)
											| otherwise = step (ValFalse,[],k)

--Evaluation rules for less than
step ((LessThan e1 e2),env,k) = step (e1,env,(HLess e2 env):k)
step ((ValInt n), env1, (HLess e env2):k) = step (e,env2,(LessH (ValInt n)) : k)
step ((ValInt m), env1, (LessH (ValInt n)):k) | n < m = step (ValTrue,[],k)
											  | otherwise = step (ValFalse,[],k)

--Evaluation rules for more than
step ((MoreThan e1 e2),env,k) = step (e1,env,(HMore e2 env):k)
step ((ValInt n), env1, (HMore e env2):k) = step (e,env2,(MoreH (ValInt n)) : k)
step ((ValInt m), env1, (MoreH (ValInt n)):k) | n > m = step (ValTrue,[],k)
										 	  | otherwise = step (ValFalse,[],k)

--Evaluation rules for If statements
step ((If e1 e2 e3),env,k) = step (e1,env,(HIf e2 e3 env):k)
step (ValTrue, env1,(HIf e2 e3 env2):k) = step (e2,env2,k)
step (ValFalse, env1,(HIf e2 e3 env2):k) = step (e3,env2,k)


--Evaluation rules for While 
step ((While cond e), env, k) = step (cond, env, (HWhile cond e env):k)
step (ValFalse, env, (HWhile cond e env1):k) = step (ValFalse, env1, k)
step (ValTrue, env,  (HWhile cond e env1):k) = step (End e (While cond e), env ++ env1, k)

--Evaluation rules for For loop
step ((For s i1 i2 i3 e), env, k) = step (If (LessThan (ValInt i1) (ValInt i2)) ValTrue ValFalse, env, (HFor s i1 i2 i3 e ((s, (Var TypeInt s (ValInt i1)) ):env)):k)
step (ValFalse, env, (HFor s i1 i2 i3 e env1):k) = step (ValFalse, env1, k)
step (ValTrue, env,  (HFor s i1 i2 i3 e env1):k) = step (End e (For s  (i1 + i3) i2 i3 e), env1, k)

--Evaluation rules for defining variables
step ((Var t x e),env,k) = step (e,(x,(Cl t x e env)):env,k)


--Evaluation rules for adding
step ((Plus e1 e2),env,k) = step (e1,env, (HPlus e2 env):k)
step ((ValInt n),env1,(HPlus e env2):k) = step (e,env2,(PlusH (ValInt n)) : k)
step ((ValInt m),env,(PlusH (ValInt n)) : k) = step (ValInt (n + m),env,k)

--Evaluation rules for subtracting
step ((Minus e1 e2),env,k) = step (e1,env, (HMinus e2 env):k)
step ((ValInt n),env1,(HMinus e env2):k) = step (e,env2,(MinusH (ValInt n)) : k)
step ((ValInt m),env,(MinusH (ValInt n)) : k) = step (ValInt (n - m),env,k)

--Evaluation rules for multiplying
step ((Times e1 e2),env,k) = step (e1,env, (HTimes e2 env):k)
step ((ValInt n),env1,(HTimes e env2):k) = step (e,env2,(TimesH (ValInt n)) : k)
step ((ValInt m),env,(TimesH (ValInt n)) : k) = step (ValInt (n * m),env,k)

--Evaluation rules for dividing
step ((Divide e1 e2),env,k) = step (e1,env, (HDivide e2 env):k)
step ((ValInt n),env1,(HDivide e env2):k) = step (e,env2,(DivideH (ValInt n)) : k)
step ((ValInt m),env,(DivideH (ValInt n)) : k) = step (ValInt (n `div` m),env,k)


--Evaluation rules for expon
step ((Expon e1 e2),env,k) = step (e1,env, (HExpon e2 env):k)
step ((ValInt n),env1,(HExpon e env2):k) = step (e,env2,(ExponH (ValInt n)) : k)
step ((ValInt m),env,(ExponH (ValInt n)) : k) = step (ValInt (n ^ m),env,k)

--Evaluation rules for modulo
step ((Modulo e1 e2),env,k) = step (e1,env, (HModulo e2 env):k)
step ((ValInt n),env1,(HModulo e env2):k) = step (e,env2,(ModuloH (ValInt n)) : k)
step ((ValInt m),env,(ModuloH (ValInt n)) : k) = step (ValInt (n `mod` m),env,k)


--Evaluation rule for end of line
step ((End e1 e2),env,k) = step (e1,env,(HEnd e2 env):k)
step (_,env1,(HEnd e env2):k) = step (e,env1 ++ env2,k)

--Evaluation rule for reading streams
step (ReadStream 1, env, (HWhile a s d):k) = do 
                    						    arg <- getLine
                    						    let num = read arg 
                    						    step (ValTrue,(("stream1",(Cl TypeInt "stream1" (ValInt num) env)):env),(HWhile a s d):k)
step (ReadStream 1, env, k) = do
                               arg <- getLine
                               let num = read arg
                               step (ValInt num, env, k)

step (ReadStream i, env, (HWhile a s d ):k) = do
                                arg <- getLine -- "1 2 3 4"
                                let nums = map read $ words arg--  "1 2 3 4" -> ["1","2","3","4"] -> [1,2,3,4]
                                step (ValTrue, (makeStreams nums 1 env), (HWhile a s d):k)

step (ReadStream i, env, k) = do
                                arg <- getLine -- "1 2 3 4"
                                let nums = map read $ words arg--  "1 2 3 4" -> ["1","2","3","4"] -> [1,2,3,4]
                                step (ValTrue, (makeStreams nums 1 env),k)


--Evaluation rules for get function
step (Get e (VarName x),env,k) = step (VarName x,env,(GetH e):k) 
step (ValInt x,env,(GetH e):k) = step (Get e (ValInt x),env,k)

step (Get (VarName x) e,env,k) = step (VarName x,env,(GetH e):k)
step (Comma e1 e2, env,(GetH e):k) = step (Get (Comma e1 e2) e,env,k)

step (Get (Comma (VarName x) (VarName y)) (ValInt z),env,k) = step (VarName x,env,(HGet (VarName y) (ValInt z)):k)
step (ValInt x,env,(HGet (VarName y) (ValInt z)):k) = step (VarName y, env,(HGet (ValInt x) (ValInt z)):k)
step (ValInt y,env,(HGet (ValInt x) (ValInt z)):k) = step (Get (Comma (ValInt x) (ValInt y)) (ValInt z),env,k)

step (Get (Comma (VarName n) e2) (ValInt x),env,k) = step (VarName n,env,(HGet e2 (ValInt x)):k)
step (ValInt x,env,(HGet e2 (ValInt y)):k) = step (Get (Comma (ValInt x) (e2)) (ValInt y),env,k)

step (Get (Comma e (VarName n)) (ValInt x),env,k) = step (VarName n,env,(HHGet e (ValInt x)):k)
step (ValInt x,env, (HHGet e (ValInt y)):k) = step (Get (Comma e (ValInt x)) (ValInt y),env,k) 


step (Get (Comma (ValInt x) (ValInt y)) (ValInt z),env,k) | z == 0 = step (ValInt x,env,k)
														  | otherwise = step (ValInt y,env,k)

step (Get (Comma (ValInt x) e2) (ValInt y),env,k) | y == 0 = step (ValInt x,env,k)
												  | otherwise = step (Get e2 (ValInt (y-1)),env,k)  

--Evaluation rules for defining Commas
step (Comma e1 e2,env,k) = step (e1,env,k)


--rule for terminations
step (v,env,[]) | isTerminated v = return ()

makeStreams :: [Int] -> Int -> Environment -> Environment
makeStreams (x:xs) c env | xs == [] = (("stream"++(show c)),  (Cl TypeInt ("stream"++(show c)) (ValInt x) env)) : env 
                        | otherwise = makeStreams xs (c+1) ((("stream"++(show c)),  (Cl TypeInt ("stream"++(show c)) (ValInt x) env)) : env)
						