import Tokens
import Grammar
import Eval
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = do putStrLn ("Toy Interactive Mode - enter an expression : ")
           sourceText <- getLine
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("Parsed as " ++ (show parsedProg))
           let result = evalLoop (parsedProg)
           putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")
           main'




