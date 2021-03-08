import Tokens
import Grammar
import Eval
import System.Environment (getArgs)
import Control.Exception
import System.IO (openFile, IOMode(ReadMode), hGetContents)


main :: IO ()
main = do 
	args <- getArgs
	file <- openFile (head args) ReadMode
	text <- hGetContents file
	step (parseCalc $ alexScanTokens text,[],[])

