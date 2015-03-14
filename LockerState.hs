import qualified Data.Map as Map

data LockerState = Taken | Free deriving (Show, Eq)

-- Type Synonym
type Code = String

-- Type Synonym do HashMap
type LockerMap = Map.Map Int (LockerState, Code)

isReservado :: Int -> LockerMap -> Either String Code
isReservado lockerNumber map =
	case Map.lookup lockerNumber map of
		Nothing -> Left $ "Armario: " ++ show lockerNumber ++ " esta livre."
		Just (state, code) -> if state /= Taken
								then Right code
								else Left $ "Armario " ++ show lockerNumber ++ " já está reservado." 

lockers :: LockerMap  
lockers = Map.fromList   
    [(100,(Taken,"ZD39I"))  
    ,(101,(Free,"JAH3I"))  
    ,(103,(Free,"IQSA9"))  
    ,(105,(Free,"QOTSA"))  
    ,(109,(Taken,"893JJ"))  
    ,(110,(Taken,"99292"))  
    ] 