{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,287) ([14816,1038,22,4,0,0,0,0,3975,38,2048,0,0,0,0,0,0,8192,0,14816,1038,30742,910,1409,0,0,59264,4152,88,0,0,0,4,40448,16611,352,4096,0,14816,1038,30742,910,1409,65438,63614,59265,8127,126,0,0,28672,25336,40450,16611,352,34560,8207,49152,37857,9,63600,612,0,1,0,64,57344,3641,5636,36472,33027,40453,16611,33120,14567,22544,14816,1038,30742,910,1409,58270,24640,59265,4152,57432,3641,5636,36472,33027,40453,16611,352,1792,4,49152,993,9,63600,608,7168,16,0,7,0,448,1,28672,224,2,14364,128,0,0,0,0,0,0,0,58270,24640,1,16,57344,3641,5636,36472,33027,5,15900,144,0,0,49152,993,9,63600,512,7168,39486,0,36743,38,2,0,28672,16632,2,64,0,0,256,0,0,0,0,4,64,0,0,16,57344,3641,5636,28672,26872,2,0,32769,14567,22544,0,0,0,63600,616,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Bool","Int","For","If","to","inc","While","true","false","'<'","'>'","is","print","int","var","'='","'+'","'-'","'*'","'^'","'/'","'('","')'","'{'","'}'","else","'.'","','","readStream","get","'%'","push","%eof"]
        bit_start = st * 38
        bit_end = (st + 1) * 38
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..37]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_5
action_0 (7) = happyShift action_6
action_0 (8) = happyShift action_7
action_0 (9) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_2
action_0 (14) = happyShift action_10
action_0 (18) = happyShift action_11
action_0 (19) = happyShift action_12
action_0 (20) = happyShift action_13
action_0 (27) = happyShift action_14
action_0 (34) = happyShift action_15
action_0 (35) = happyShift action_16
action_0 (37) = happyShift action_17
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (13) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (15) = happyShift action_28
action_3 (16) = happyShift action_29
action_3 (17) = happyShift action_30
action_3 (22) = happyShift action_31
action_3 (23) = happyShift action_32
action_3 (24) = happyShift action_33
action_3 (25) = happyShift action_34
action_3 (26) = happyShift action_35
action_3 (32) = happyShift action_36
action_3 (33) = happyShift action_37
action_3 (36) = happyShift action_38
action_3 (38) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (20) = happyShift action_27
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_26

action_6 _ = happyReduce_27

action_7 (20) = happyShift action_26
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_5
action_8 (7) = happyShift action_6
action_8 (8) = happyShift action_7
action_8 (9) = happyShift action_8
action_8 (12) = happyShift action_9
action_8 (13) = happyShift action_2
action_8 (14) = happyShift action_10
action_8 (18) = happyShift action_11
action_8 (19) = happyShift action_12
action_8 (20) = happyShift action_13
action_8 (27) = happyShift action_14
action_8 (34) = happyShift action_15
action_8 (35) = happyShift action_16
action_8 (37) = happyShift action_17
action_8 (4) = happyGoto action_25
action_8 (5) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_5
action_9 (7) = happyShift action_6
action_9 (8) = happyShift action_7
action_9 (9) = happyShift action_8
action_9 (12) = happyShift action_9
action_9 (13) = happyShift action_2
action_9 (14) = happyShift action_10
action_9 (18) = happyShift action_11
action_9 (19) = happyShift action_12
action_9 (20) = happyShift action_13
action_9 (27) = happyShift action_14
action_9 (34) = happyShift action_15
action_9 (35) = happyShift action_16
action_9 (37) = happyShift action_17
action_9 (4) = happyGoto action_24
action_9 (5) = happyGoto action_4
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_2

action_11 (6) = happyShift action_5
action_11 (7) = happyShift action_6
action_11 (8) = happyShift action_7
action_11 (9) = happyShift action_8
action_11 (12) = happyShift action_9
action_11 (13) = happyShift action_2
action_11 (14) = happyShift action_10
action_11 (18) = happyShift action_11
action_11 (19) = happyShift action_12
action_11 (20) = happyShift action_13
action_11 (27) = happyShift action_14
action_11 (34) = happyShift action_15
action_11 (35) = happyShift action_16
action_11 (37) = happyShift action_17
action_11 (4) = happyGoto action_23
action_11 (5) = happyGoto action_4
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_3

action_13 (21) = happyShift action_22
action_13 _ = happyReduce_4

action_14 (6) = happyShift action_5
action_14 (7) = happyShift action_6
action_14 (8) = happyShift action_7
action_14 (9) = happyShift action_8
action_14 (12) = happyShift action_9
action_14 (13) = happyShift action_2
action_14 (14) = happyShift action_10
action_14 (18) = happyShift action_11
action_14 (19) = happyShift action_12
action_14 (20) = happyShift action_13
action_14 (27) = happyShift action_14
action_14 (34) = happyShift action_15
action_14 (35) = happyShift action_16
action_14 (37) = happyShift action_17
action_14 (4) = happyGoto action_21
action_14 (5) = happyGoto action_4
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (19) = happyShift action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_5
action_16 (7) = happyShift action_6
action_16 (8) = happyShift action_7
action_16 (9) = happyShift action_8
action_16 (12) = happyShift action_9
action_16 (13) = happyShift action_2
action_16 (14) = happyShift action_10
action_16 (18) = happyShift action_11
action_16 (19) = happyShift action_12
action_16 (20) = happyShift action_13
action_16 (27) = happyShift action_14
action_16 (34) = happyShift action_15
action_16 (35) = happyShift action_16
action_16 (37) = happyShift action_17
action_16 (4) = happyGoto action_19
action_16 (5) = happyGoto action_4
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_5
action_17 (7) = happyShift action_6
action_17 (8) = happyShift action_7
action_17 (9) = happyShift action_8
action_17 (12) = happyShift action_9
action_17 (13) = happyShift action_2
action_17 (14) = happyShift action_10
action_17 (18) = happyShift action_11
action_17 (19) = happyShift action_12
action_17 (20) = happyShift action_13
action_17 (27) = happyShift action_14
action_17 (34) = happyShift action_15
action_17 (35) = happyShift action_16
action_17 (37) = happyShift action_17
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_4
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_5
action_18 (7) = happyShift action_6
action_18 (8) = happyShift action_7
action_18 (9) = happyShift action_8
action_18 (12) = happyShift action_9
action_18 (13) = happyShift action_2
action_18 (14) = happyShift action_10
action_18 (15) = happyShift action_28
action_18 (16) = happyShift action_29
action_18 (17) = happyShift action_30
action_18 (18) = happyShift action_11
action_18 (19) = happyShift action_12
action_18 (20) = happyShift action_13
action_18 (22) = happyShift action_31
action_18 (23) = happyShift action_32
action_18 (24) = happyShift action_33
action_18 (25) = happyShift action_34
action_18 (26) = happyShift action_35
action_18 (27) = happyShift action_14
action_18 (32) = happyShift action_36
action_18 (33) = happyShift action_37
action_18 (34) = happyShift action_15
action_18 (35) = happyShift action_16
action_18 (36) = happyShift action_38
action_18 (37) = happyShift action_17
action_18 (4) = happyGoto action_57
action_18 (5) = happyGoto action_4
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_5
action_19 (7) = happyShift action_6
action_19 (8) = happyShift action_7
action_19 (9) = happyShift action_8
action_19 (12) = happyShift action_9
action_19 (13) = happyShift action_2
action_19 (14) = happyShift action_10
action_19 (15) = happyShift action_28
action_19 (16) = happyShift action_29
action_19 (17) = happyShift action_30
action_19 (18) = happyShift action_11
action_19 (19) = happyShift action_12
action_19 (20) = happyShift action_13
action_19 (22) = happyShift action_31
action_19 (23) = happyShift action_32
action_19 (24) = happyShift action_33
action_19 (25) = happyShift action_34
action_19 (26) = happyShift action_35
action_19 (27) = happyShift action_14
action_19 (32) = happyShift action_36
action_19 (33) = happyShift action_37
action_19 (34) = happyShift action_15
action_19 (35) = happyShift action_16
action_19 (36) = happyShift action_38
action_19 (37) = happyShift action_17
action_19 (4) = happyGoto action_56
action_19 (5) = happyGoto action_4
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_6

action_21 (15) = happyShift action_28
action_21 (16) = happyShift action_29
action_21 (17) = happyShift action_30
action_21 (22) = happyShift action_31
action_21 (23) = happyShift action_32
action_21 (24) = happyShift action_33
action_21 (25) = happyShift action_34
action_21 (26) = happyShift action_35
action_21 (28) = happyShift action_55
action_21 (32) = happyShift action_36
action_21 (33) = happyShift action_37
action_21 (36) = happyShift action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_5
action_22 (7) = happyShift action_6
action_22 (8) = happyShift action_7
action_22 (9) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (13) = happyShift action_2
action_22 (14) = happyShift action_10
action_22 (18) = happyShift action_11
action_22 (19) = happyShift action_12
action_22 (20) = happyShift action_13
action_22 (27) = happyShift action_14
action_22 (34) = happyShift action_15
action_22 (35) = happyShift action_16
action_22 (37) = happyShift action_17
action_22 (4) = happyGoto action_54
action_22 (5) = happyGoto action_4
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (15) = happyShift action_28
action_23 (16) = happyShift action_29
action_23 (17) = happyShift action_30
action_23 (22) = happyShift action_31
action_23 (23) = happyShift action_32
action_23 (24) = happyShift action_33
action_23 (25) = happyShift action_34
action_23 (26) = happyShift action_35
action_23 (36) = happyShift action_38
action_23 _ = happyReduce_16

action_24 (15) = happyShift action_28
action_24 (16) = happyShift action_29
action_24 (17) = happyShift action_30
action_24 (22) = happyShift action_31
action_24 (23) = happyShift action_32
action_24 (24) = happyShift action_33
action_24 (25) = happyShift action_34
action_24 (26) = happyShift action_35
action_24 (29) = happyShift action_53
action_24 (32) = happyShift action_36
action_24 (33) = happyShift action_37
action_24 (36) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_28
action_25 (16) = happyShift action_29
action_25 (17) = happyShift action_30
action_25 (22) = happyShift action_31
action_25 (23) = happyShift action_32
action_25 (24) = happyShift action_33
action_25 (25) = happyShift action_34
action_25 (26) = happyShift action_35
action_25 (29) = happyShift action_52
action_25 (32) = happyShift action_36
action_25 (33) = happyShift action_37
action_25 (36) = happyShift action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (21) = happyShift action_51
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (21) = happyShift action_50
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_5
action_28 (7) = happyShift action_6
action_28 (8) = happyShift action_7
action_28 (9) = happyShift action_8
action_28 (12) = happyShift action_9
action_28 (13) = happyShift action_2
action_28 (14) = happyShift action_10
action_28 (18) = happyShift action_11
action_28 (19) = happyShift action_12
action_28 (20) = happyShift action_13
action_28 (27) = happyShift action_14
action_28 (34) = happyShift action_15
action_28 (35) = happyShift action_16
action_28 (37) = happyShift action_17
action_28 (4) = happyGoto action_49
action_28 (5) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_5
action_29 (7) = happyShift action_6
action_29 (8) = happyShift action_7
action_29 (9) = happyShift action_8
action_29 (12) = happyShift action_9
action_29 (13) = happyShift action_2
action_29 (14) = happyShift action_10
action_29 (18) = happyShift action_11
action_29 (19) = happyShift action_12
action_29 (20) = happyShift action_13
action_29 (27) = happyShift action_14
action_29 (34) = happyShift action_15
action_29 (35) = happyShift action_16
action_29 (37) = happyShift action_17
action_29 (4) = happyGoto action_48
action_29 (5) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_5
action_30 (7) = happyShift action_6
action_30 (8) = happyShift action_7
action_30 (9) = happyShift action_8
action_30 (12) = happyShift action_9
action_30 (13) = happyShift action_2
action_30 (14) = happyShift action_10
action_30 (18) = happyShift action_11
action_30 (19) = happyShift action_12
action_30 (20) = happyShift action_13
action_30 (27) = happyShift action_14
action_30 (34) = happyShift action_15
action_30 (35) = happyShift action_16
action_30 (37) = happyShift action_17
action_30 (4) = happyGoto action_47
action_30 (5) = happyGoto action_4
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_5
action_31 (7) = happyShift action_6
action_31 (8) = happyShift action_7
action_31 (9) = happyShift action_8
action_31 (12) = happyShift action_9
action_31 (13) = happyShift action_2
action_31 (14) = happyShift action_10
action_31 (18) = happyShift action_11
action_31 (19) = happyShift action_12
action_31 (20) = happyShift action_13
action_31 (27) = happyShift action_14
action_31 (34) = happyShift action_15
action_31 (35) = happyShift action_16
action_31 (37) = happyShift action_17
action_31 (4) = happyGoto action_46
action_31 (5) = happyGoto action_4
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_5
action_32 (7) = happyShift action_6
action_32 (8) = happyShift action_7
action_32 (9) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (13) = happyShift action_2
action_32 (14) = happyShift action_10
action_32 (18) = happyShift action_11
action_32 (19) = happyShift action_12
action_32 (20) = happyShift action_13
action_32 (27) = happyShift action_14
action_32 (34) = happyShift action_15
action_32 (35) = happyShift action_16
action_32 (37) = happyShift action_17
action_32 (4) = happyGoto action_45
action_32 (5) = happyGoto action_4
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_5
action_33 (7) = happyShift action_6
action_33 (8) = happyShift action_7
action_33 (9) = happyShift action_8
action_33 (12) = happyShift action_9
action_33 (13) = happyShift action_2
action_33 (14) = happyShift action_10
action_33 (18) = happyShift action_11
action_33 (19) = happyShift action_12
action_33 (20) = happyShift action_13
action_33 (27) = happyShift action_14
action_33 (34) = happyShift action_15
action_33 (35) = happyShift action_16
action_33 (37) = happyShift action_17
action_33 (4) = happyGoto action_44
action_33 (5) = happyGoto action_4
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_5
action_34 (7) = happyShift action_6
action_34 (8) = happyShift action_7
action_34 (9) = happyShift action_8
action_34 (12) = happyShift action_9
action_34 (13) = happyShift action_2
action_34 (14) = happyShift action_10
action_34 (18) = happyShift action_11
action_34 (19) = happyShift action_12
action_34 (20) = happyShift action_13
action_34 (27) = happyShift action_14
action_34 (34) = happyShift action_15
action_34 (35) = happyShift action_16
action_34 (37) = happyShift action_17
action_34 (4) = happyGoto action_43
action_34 (5) = happyGoto action_4
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_5
action_35 (7) = happyShift action_6
action_35 (8) = happyShift action_7
action_35 (9) = happyShift action_8
action_35 (12) = happyShift action_9
action_35 (13) = happyShift action_2
action_35 (14) = happyShift action_10
action_35 (18) = happyShift action_11
action_35 (19) = happyShift action_12
action_35 (20) = happyShift action_13
action_35 (27) = happyShift action_14
action_35 (34) = happyShift action_15
action_35 (35) = happyShift action_16
action_35 (37) = happyShift action_17
action_35 (4) = happyGoto action_42
action_35 (5) = happyGoto action_4
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_5
action_36 (7) = happyShift action_6
action_36 (8) = happyShift action_7
action_36 (9) = happyShift action_8
action_36 (12) = happyShift action_9
action_36 (13) = happyShift action_2
action_36 (14) = happyShift action_10
action_36 (18) = happyShift action_11
action_36 (19) = happyShift action_12
action_36 (20) = happyShift action_13
action_36 (27) = happyShift action_14
action_36 (34) = happyShift action_15
action_36 (35) = happyShift action_16
action_36 (37) = happyShift action_17
action_36 (4) = happyGoto action_41
action_36 (5) = happyGoto action_4
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_5
action_37 (7) = happyShift action_6
action_37 (8) = happyShift action_7
action_37 (9) = happyShift action_8
action_37 (12) = happyShift action_9
action_37 (13) = happyShift action_2
action_37 (14) = happyShift action_10
action_37 (18) = happyShift action_11
action_37 (19) = happyShift action_12
action_37 (20) = happyShift action_13
action_37 (27) = happyShift action_14
action_37 (34) = happyShift action_15
action_37 (35) = happyShift action_16
action_37 (37) = happyShift action_17
action_37 (4) = happyGoto action_40
action_37 (5) = happyGoto action_4
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_5
action_38 (7) = happyShift action_6
action_38 (8) = happyShift action_7
action_38 (9) = happyShift action_8
action_38 (12) = happyShift action_9
action_38 (13) = happyShift action_2
action_38 (14) = happyShift action_10
action_38 (18) = happyShift action_11
action_38 (19) = happyShift action_12
action_38 (20) = happyShift action_13
action_38 (27) = happyShift action_14
action_38 (34) = happyShift action_15
action_38 (35) = happyShift action_16
action_38 (37) = happyShift action_17
action_38 (4) = happyGoto action_39
action_38 (5) = happyGoto action_4
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (15) = happyShift action_28
action_39 (16) = happyShift action_29
action_39 (17) = happyShift action_30
action_39 (25) = happyShift action_34
action_39 _ = happyReduce_24

action_40 (15) = happyShift action_28
action_40 (16) = happyShift action_29
action_40 (17) = happyShift action_30
action_40 (22) = happyShift action_31
action_40 (23) = happyShift action_32
action_40 (24) = happyShift action_33
action_40 (25) = happyShift action_34
action_40 (26) = happyShift action_35
action_40 (33) = happyShift action_37
action_40 (36) = happyShift action_38
action_40 _ = happyReduce_7

action_41 (15) = happyShift action_28
action_41 (16) = happyShift action_29
action_41 (17) = happyShift action_30
action_41 (22) = happyShift action_31
action_41 (23) = happyShift action_32
action_41 (24) = happyShift action_33
action_41 (25) = happyShift action_34
action_41 (26) = happyShift action_35
action_41 (32) = happyShift action_36
action_41 (33) = happyShift action_37
action_41 (36) = happyShift action_38
action_41 _ = happyReduce_22

action_42 (15) = happyShift action_28
action_42 (16) = happyShift action_29
action_42 (17) = happyShift action_30
action_42 (25) = happyShift action_34
action_42 _ = happyReduce_20

action_43 (15) = happyShift action_28
action_43 (16) = happyShift action_29
action_43 (17) = happyShift action_30
action_43 _ = happyReduce_21

action_44 (15) = happyShift action_28
action_44 (16) = happyShift action_29
action_44 (17) = happyShift action_30
action_44 (25) = happyShift action_34
action_44 _ = happyReduce_19

action_45 (15) = happyShift action_28
action_45 (16) = happyShift action_29
action_45 (17) = happyShift action_30
action_45 (24) = happyShift action_33
action_45 (25) = happyShift action_34
action_45 (26) = happyShift action_35
action_45 (36) = happyShift action_38
action_45 _ = happyReduce_18

action_46 (15) = happyShift action_28
action_46 (16) = happyShift action_29
action_46 (17) = happyShift action_30
action_46 (24) = happyShift action_33
action_46 (25) = happyShift action_34
action_46 (26) = happyShift action_35
action_46 (36) = happyShift action_38
action_46 _ = happyReduce_17

action_47 _ = happyReduce_8

action_48 _ = happyReduce_10

action_49 _ = happyReduce_9

action_50 (6) = happyShift action_5
action_50 (7) = happyShift action_6
action_50 (8) = happyShift action_7
action_50 (9) = happyShift action_8
action_50 (12) = happyShift action_9
action_50 (13) = happyShift action_2
action_50 (14) = happyShift action_10
action_50 (18) = happyShift action_11
action_50 (19) = happyShift action_12
action_50 (20) = happyShift action_13
action_50 (27) = happyShift action_14
action_50 (34) = happyShift action_15
action_50 (35) = happyShift action_16
action_50 (37) = happyShift action_17
action_50 (4) = happyGoto action_61
action_50 (5) = happyGoto action_4
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (19) = happyShift action_60
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_5
action_52 (7) = happyShift action_6
action_52 (8) = happyShift action_7
action_52 (9) = happyShift action_8
action_52 (12) = happyShift action_9
action_52 (13) = happyShift action_2
action_52 (14) = happyShift action_10
action_52 (18) = happyShift action_11
action_52 (19) = happyShift action_12
action_52 (20) = happyShift action_13
action_52 (27) = happyShift action_14
action_52 (34) = happyShift action_15
action_52 (35) = happyShift action_16
action_52 (37) = happyShift action_17
action_52 (4) = happyGoto action_59
action_52 (5) = happyGoto action_4
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_5
action_53 (7) = happyShift action_6
action_53 (8) = happyShift action_7
action_53 (9) = happyShift action_8
action_53 (12) = happyShift action_9
action_53 (13) = happyShift action_2
action_53 (14) = happyShift action_10
action_53 (18) = happyShift action_11
action_53 (19) = happyShift action_12
action_53 (20) = happyShift action_13
action_53 (27) = happyShift action_14
action_53 (34) = happyShift action_15
action_53 (35) = happyShift action_16
action_53 (37) = happyShift action_17
action_53 (4) = happyGoto action_58
action_53 (5) = happyGoto action_4
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (15) = happyShift action_28
action_54 (16) = happyShift action_29
action_54 (17) = happyShift action_30
action_54 (22) = happyShift action_31
action_54 (23) = happyShift action_32
action_54 (24) = happyShift action_33
action_54 (25) = happyShift action_34
action_54 (26) = happyShift action_35
action_54 (33) = happyShift action_37
action_54 (36) = happyShift action_38
action_54 _ = happyReduce_23

action_55 _ = happyReduce_15

action_56 (15) = happyShift action_28
action_56 (16) = happyShift action_29
action_56 (17) = happyShift action_30
action_56 (22) = happyShift action_31
action_56 (23) = happyShift action_32
action_56 (24) = happyShift action_33
action_56 (25) = happyShift action_34
action_56 (26) = happyShift action_35
action_56 (33) = happyShift action_37
action_56 (36) = happyShift action_38
action_56 _ = happyReduce_5

action_57 (15) = happyShift action_28
action_57 (16) = happyShift action_29
action_57 (17) = happyShift action_30
action_57 (22) = happyShift action_31
action_57 (23) = happyShift action_32
action_57 (24) = happyShift action_33
action_57 (25) = happyShift action_34
action_57 (26) = happyShift action_35
action_57 (36) = happyShift action_38
action_57 _ = happyReduce_25

action_58 (15) = happyShift action_28
action_58 (16) = happyShift action_29
action_58 (17) = happyShift action_30
action_58 (22) = happyShift action_31
action_58 (23) = happyShift action_32
action_58 (24) = happyShift action_33
action_58 (25) = happyShift action_34
action_58 (26) = happyShift action_35
action_58 (30) = happyShift action_64
action_58 (32) = happyShift action_36
action_58 (33) = happyShift action_37
action_58 (36) = happyShift action_38
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (15) = happyShift action_28
action_59 (16) = happyShift action_29
action_59 (17) = happyShift action_30
action_59 (22) = happyShift action_31
action_59 (23) = happyShift action_32
action_59 (24) = happyShift action_33
action_59 (25) = happyShift action_34
action_59 (26) = happyShift action_35
action_59 (30) = happyShift action_63
action_59 (32) = happyShift action_36
action_59 (33) = happyShift action_37
action_59 (36) = happyShift action_38
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (10) = happyShift action_62
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_28
action_61 (16) = happyShift action_29
action_61 (17) = happyShift action_30
action_61 (22) = happyShift action_31
action_61 (23) = happyShift action_32
action_61 (24) = happyShift action_33
action_61 (25) = happyShift action_34
action_61 (26) = happyShift action_35
action_61 (33) = happyShift action_37
action_61 (36) = happyShift action_38
action_61 _ = happyReduce_14

action_62 (19) = happyShift action_66
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (31) = happyShift action_65
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_13

action_65 (29) = happyShift action_68
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyShift action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (19) = happyShift action_70
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_5
action_68 (7) = happyShift action_6
action_68 (8) = happyShift action_7
action_68 (9) = happyShift action_8
action_68 (12) = happyShift action_9
action_68 (13) = happyShift action_2
action_68 (14) = happyShift action_10
action_68 (18) = happyShift action_11
action_68 (19) = happyShift action_12
action_68 (20) = happyShift action_13
action_68 (27) = happyShift action_14
action_68 (34) = happyShift action_15
action_68 (35) = happyShift action_16
action_68 (37) = happyShift action_17
action_68 (4) = happyGoto action_69
action_68 (5) = happyGoto action_4
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (15) = happyShift action_28
action_69 (16) = happyShift action_29
action_69 (17) = happyShift action_30
action_69 (22) = happyShift action_31
action_69 (23) = happyShift action_32
action_69 (24) = happyShift action_33
action_69 (25) = happyShift action_34
action_69 (26) = happyShift action_35
action_69 (30) = happyShift action_72
action_69 (32) = happyShift action_36
action_69 (33) = happyShift action_37
action_69 (36) = happyShift action_38
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (29) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_5
action_71 (7) = happyShift action_6
action_71 (8) = happyShift action_7
action_71 (9) = happyShift action_8
action_71 (12) = happyShift action_9
action_71 (13) = happyShift action_2
action_71 (14) = happyShift action_10
action_71 (18) = happyShift action_11
action_71 (19) = happyShift action_12
action_71 (20) = happyShift action_13
action_71 (27) = happyShift action_14
action_71 (34) = happyShift action_15
action_71 (35) = happyShift action_16
action_71 (37) = happyShift action_17
action_71 (4) = happyGoto action_73
action_71 (5) = happyGoto action_4
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_11

action_73 (15) = happyShift action_28
action_73 (16) = happyShift action_29
action_73 (17) = happyShift action_30
action_73 (22) = happyShift action_31
action_73 (23) = happyShift action_32
action_73 (24) = happyShift action_33
action_73 (25) = happyShift action_34
action_73 (26) = happyShift action_35
action_73 (30) = happyShift action_74
action_73 (32) = happyShift action_36
action_73 (33) = happyShift action_37
action_73 (36) = happyShift action_38
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_12

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (ValTrue
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (ValFalse
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (ValInt happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (VarName happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Get happy_var_2 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyTerminal (TokenInt _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (ReadStream happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Comma happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Is happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MoreThan happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 9 4 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_8
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 11 4 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_8)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_6)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (For happy_var_2 happy_var_4 happy_var_6 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 5 4 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2  happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Var happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Print happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Divide happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Expon happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (End happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Modulo happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Push happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TypeBool
	)

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TypeInt
	)

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeBool _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenFor _ -> cont 8;
	TokenIf _ -> cont 9;
	TokenTo _ -> cont 10;
	TokenInc _ -> cont 11;
	TokenWhile _ -> cont 12;
	TokenTrue _ -> cont 13;
	TokenFalse _ -> cont 14;
	TokenLess _ -> cont 15;
	TokenMore _ -> cont 16;
	TokenIs _ -> cont 17;
	TokenPrint _ -> cont 18;
	TokenInt _ happy_dollar_dollar -> cont 19;
	TokenVar _ happy_dollar_dollar -> cont 20;
	TokenEq _ -> cont 21;
	TokenPlus _ -> cont 22;
	TokenMinus _ -> cont 23;
	TokenTimes _ -> cont 24;
	TokenExpon  _ -> cont 25;
	TokenDiv _ -> cont 26;
	TokenLParen _ -> cont 27;
	TokenRParen _ -> cont 28;
	TokenLBrack _ -> cont 29;
	TokenRBrack _ -> cont 30;
	TokenElse _ -> cont 31;
	TokenEnd _ -> cont 32;
	TokenComma _ -> cont 33;
	TokenReadStream _ -> cont 34;
	TokenGet _ -> cont 35;
	TokenModulo _ -> cont 36;
	TokenPush _ -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
