
STRUCTURE = {
    UINT8_0 = 0,
    UINT8_1 = 3,
    FLOAT = 6,
    UINT16_0 = 1,
    UINT16_1 = 4,
    UINT16_2 = 7,
    UINT32_0 = 2,
    UINT32_1 = 5,
    STRING = 8,
    LIST = 9
}

local function Sys()
    	
	function Wait()
    	tag = {}
    
    	tag.name = 'Wait'
    	tag.parameters = {
			f = {type = STRUCTURE.UINT32_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.f = reader.read_uint32()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint32(data.f)
		end
    
    	return tag
	end

	function Speed()
    	tag = {}
    
    	tag.name = 'Speed'
    	tag.parameters = {
			v = {type = STRUCTURE.FLOAT, list = {}},
		}

    	tag.read = function(reader, data) 
			data.v = reader.read_float()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_float(data.v)
		end
    
    	return tag
	end

	function Flush()
    	return {name = "Flush"}
	end


    return { 
		[0] = Wait,
		[1] = Speed,
		[2] = Flush,
 	}
end


local function Talk()
    	
	function Action()
    	tag = {}
    
    	tag.name = 'Action'
    	tag.parameters = {
			Onetime = {type = STRUCTURE.LIST, list = {'ActCuteGirl_Glad_M00', 'ActAskTiltHead_M00', 'ActCry_M00', 'ActEarnest_L01', 'ActPointRight_M00', 'ActPointSelf_L00', 'ActTension_M00', 'ActDisappoint_M00', 'ActTransformStart_M00', 'ActTakeCarrotJuice_M00', 'ActFrameOutBottom_M00', 'ActGladSmile_M00', 'ActGreetingsWaveHand_M00', 'ActCuteGirl_Start_M00', 'ActAttentionOpenHand_M00', 'ActCuteGirl_Shock_M00', 'ActApologize_S00', 'ActApologize_L00', 'ActMuscle_End_M00', 'ActTransformEnd_Muscle_M00', 'ActGreetingsWaveHand_S01', 'ActDrinkCarrotJuiceAfter_M00', 'ActEarnest_L00', 'ActAskTiltHead_M01', 'ActNotice_M00', 'ActShockBack_M00', 'ActFrameInBottom_M00', 'ActCuteGirl_End_M00', 'ActDrinkCarrotJuiceHide_M00', 'ActAttach_M00', '_', 'ActBowDeeply_M00', 'ActMuscle_TurnEnd_M00', 'ActWhiteAsh_M00', 'ActShockBack_S00', 'ActSudden_CuteGirl_Normal_M00', 'ActSudden_Muscle_TurnEnd_M00', 'ActDrinkCarrotJuice_M00', 'ActMuscle_Start_M00', 'ActTransformEnd_M00', 'ActLaugh_M00', 'ActEcstasy_M00'}},
			Talk = {type = STRUCTURE.LIST, list = {'TalkWhiteAsh_M00_T', 'TalkApologize_M00_T', 'TalkGreetingsWaveHand_S01_T', 'TalkWaitNormal_S00_T', 'TalkWishHandTogether_M01_T', 'TalkAskTiltHead_M00_T', 'TalkNotice_M00_T', 'TalkRunL_M00_T', 'TalkCuteGirl_Shock_M00_T', 'TalkShockBack_M00_T', 'TalkDisappoint_M00_T', 'TalkRunR_M00_T', 'TalkGladHandUp_M00_T', 'TalkGladSmile_M00_T', 'TalkEarnest_L00_T', 'TalkRecommend_M00_T', 'TalkSmugFace_M00_T', 'TalkAwkward_M01_T', 'TalkGreetingsWaveHand_M00_T', 'TalkNotUnderstand_L00_T', 'TalkAngry_M00_T', 'TalkApologize_S00_T', 'TalkEmbarrass_M00_T', 'TalkLaugh_M00_T', 'TalkNod_Muscle_M00_T', 'TalkPointBottom_M00_T', 'TalkGreetingsWaveHand_S00_T', 'TalkPointRight_M00_T', 'TalkShockBack_S00_T', 'TalkTension_M00_T', 'TalkMuscle_Start_M00_T', 'TalkWishHandTogether_M00_T', 'TalkCommentBoastfulness_M00_T', 'TalkEcstasy_M00_T', 'TalkThinkCrossHand_M00_T', 'TalkTransformStart_M00_T', 'TalkCuteGirl_Normal_M00_T', 'TalkEarnest_L01_T', 'TalkEarnest_M00_T', 'TalkGladCrap_M00_T', 'TalkPointSelf_L00_T', 'TalkAttentionOpenHand_M00_T', 'TalkTakeCarrotJuice_M00_T', 'TalkWaveOneHand_M00_T', 'TalkGladWaveHand_M00_T', 'TalkNod_M00_T', 'TalkDrinkCarrotJuiceAfter_M00_T', 'TalkCommentBoastfulness_M01_T', 'TalkAskTiltHead_M01_T', 'TalkAdmirationCrossHand_M00_T', 'TalkDrinkCarrotJuice_M00_T', 'TalkMuscle_Turn_M00_T', 'TalkMuscle_TurnEnd_M00_T', 'TalkAwkward_M00_T', 'TalkCuteGirl_Glad_M00_T', 'TalkGladCrap_M01_T', 'TalkCry_M00_T', 'TalkGrin_M00_T', 'TalkApologize_L00_T'}},
			Wait = {type = STRUCTURE.LIST, list = {'TalkEcstasy_M00_W', 'TalkGladCrap_M01_W', 'TalkSmugFace_M00_W', 'TalkTakeCarrotJuice_M00_W', 'TalkCuteGirl_Glad_M00_W', 'TalkAttentionOpenHand_M00_W', 'TalkAskTiltHead_M01_W', 'TalkCuteGirl_Shock_M00_W', 'TalkMuscle_TurnEnd_M00_W', 'TalkWishHandTogether_M00_W', 'TalkApologize_L00_W', 'TalkAngry_M00_W', 'TalkPointBottom_M00_W', 'TalkDrinkCarrotJuice_M00_W', 'TalkCommentBoastfulness_M00_W', 'TalkGreetingsWaveHand_S00_W', 'TalkApologize_M00_W', 'TalkEarnest_L01_W', 'TalkGladSmile_M00_W', 'TalkNod_Muscle_M00_W', 'TalkShockBack_M00_W', 'TalkMuscle_Start_M00_W', 'TalkWaveOneHand_M00_W', 'TalkAwkward_M01_W', 'TalkEmbarrass_M00_W', 'TalkWhiteAsh_M00_W', 'TalkCommentBoastfulness_M01_W', 'TalkApologize_S00_W', 'TalkCry_M00_W', 'TalkGladHandUp_M00_W', 'TalkGladWaveHand_M00_W', 'TalkWaitNormal_S00_W', 'TalkAskTiltHead_M00_W', 'TalkTension_M00_W', 'TalkEarnest_M00_W', 'TalkMuscle_Turn_M00_W', 'TalkWishHandTogether_M01_W', 'TalkNotice_M00_W', 'TalkPointRight_M00_W', 'TalkGrin_M00_W', 'TalkGladCrap_M00_W', 'TalkDrinkCarrotJuiceAfter_M00_W', 'TalkLaugh_M00_W', 'TalkCuteGirl_Normal_M00_W', 'TalkShockBack_S00_W', 'TalkGreetingsWaveHand_S01_W', 'TalkPointSelf_L00_W', 'TalkEarnest_L00_W', 'TalkNotUnderstand_L00_W', 'TalkAdmirationCrossHand_M00_W', 'TalkThinkCrossHand_M00_W', 'TalkAwkward_M00_W', 'TalkGreetingsWaveHand_M00_W', 'TalkTransformStart_M00_W', 'TalkNod_M00_W', 'TalkDisappoint_M00_W', 'TalkRecommend_M00_W'}},
		}

    	tag.read = function(reader, data) 
			data.Onetime = reader.read_list(tag.parameter.Onetime)
			data.Talk = reader.read_list(tag.parameters.Talk)
			data.Wait = reader.read_list(tag.parameters.Wait)
 		end
    
    	tag.write = function(writer, data) 
			
			writer.write_list(tag.parameters.Onetime, data.Onetime)
			writer.write_list(tag.parameters.Talk, data.Talk)
			writer.write_list(tag.parameters.Wait, data.Wait)
		end
    
    	return tag
	end

	function Blend()
    	tag = {}
    
    	tag.name = 'Blend'
    	tag.parameters = {
			Onetime = {type = STRUCTURE.UINT8_0, list = {}},
			Talk = {type = STRUCTURE.UINT8_0, list = {}},
			Wait = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.Onetime = reader.read_uint8()
			data.Talk = reader.read_uint8()
			data.Wait = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.Onetime)
			writer.write_uint8(data.Talk)
			writer.write_uint8(data.Wait)
		end
    
    	return tag
	end

	function NotClose()
    	return {name = "NotClose"}
	end

	function AutoScroll()
    	tag = {}
    
    	tag.name = 'AutoScroll'
    	tag.parameters = {
			frame = {type = STRUCTURE.UINT32_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.frame = reader.read_uint32()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint32(data.frame)
		end
    
    	return tag
	end

	function ChoiceB()
    	return {name = "ChoiceB"}
	end

	function IgnoreA()
    	return {name = "IgnoreA"}
	end


    return { 
		[0] = Action,
		[1] = Blend,
		[2] = NotClose,
		[3] = AutoScroll,
		[4] = ChoiceB,
		[5] = IgnoreA,
 	}
end


local function Util()
    	
	function Dictionary()
    	tag = {}
    
    	tag.name = 'Dictionary'
    	tag.parameters = {
			Key = {type = STRUCTURE.STRING, list = {}},
			DefaultValue = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.Key = reader.read_len_prefixed_utf16_string()
			data.DefaultValue = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.Key)
			writer.write_len_prefixed_utf16_string(data.DefaultValue)
		end
    
    	return tag
	end

	function SP()
    	tag = {}
    
    	tag.name = 'SP'
    	tag.parameters = {
			s = {type = STRUCTURE.STRING, list = {}},
			pl = {type = STRUCTURE.STRING, list = {}},
			value = {type = STRUCTURE.LIST, list = {'CmpnBd_NumGet', 'PlayReport', 'CmpnBd_NumRemain', 'CmpnBd_NumGet_1', 'Bonus_FreeByLose', 'MonthPlay', 'Bonus_FreeSum', 'ExtVar'}},
			key = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.s = reader.read_len_prefixed_utf16_string()
			data.pl = reader.read_len_prefixed_utf16_string()
			data.value = reader.read_list(tag.parameters.value)
			data.key = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.s)
			writer.write_len_prefixed_utf16_string(data.pl)
			writer.write_list(tag.parameters.value, data.value)
			writer.write_len_prefixed_utf16_string(data.key)
		end
    
    	return tag
	end


    return { 
		[0] = Dictionary,
		[1] = SP,
 	}
end


local function Ref()
    	
	function MyName()
    	return {name = "MyName"}
	end

	function PlayCount()
    	tag = {}
    
    	tag.name = 'PlayCount'
    	tag.parameters = {
			unit = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.unit = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.unit)
		end
    
    	return tag
	end

	function Price()
    	tag = {}
    
    	tag.name = 'Price'
    	tag.parameters = {
			unit = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.unit = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.unit)
		end
    
    	return tag
	end

	function Bonus()
    	tag = {}
    
    	tag.name = 'Bonus'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'PropFreeByWin', 'FreeSum', 'PropFreeBySmallWin', 'FreeByLose', 'Lose10Unit'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function CmpnTm()
    	tag = {}
    
    	tag.name = 'CmpnTm'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'RemainUnit', 'DateLast', 'RemainMoney', 'RemainPlay', 'DateEnd'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function CmpnBd()
    	tag = {}
    
    	tag.name = 'CmpnBd'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'NumRemain', 'DateEnd', 'NumGet', 'NumGet_1'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function MonthLimit()
    	return {name = "MonthLimit"}
	end

	function MonthPlay()
    	return {name = "MonthPlay"}
	end

	function RenewTime()
    	tag = {}
    
    	tag.name = 'RenewTime'
    	tag.parameters = {
			minute = {type = STRUCTURE.UINT32_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.minute = reader.read_uint32()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint32(data.minute)
		end
    
    	return tag
	end

	function NexMntTime()
    	return {name = "NexMntTime"}
	end

	function PlayReport()
    	tag = {}
    
    	tag.name = 'PlayReport'
    	tag.parameters = {
			key = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.key = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.key)
		end
    
    	return tag
	end

	function ExtVar()
    	tag = {}
    
    	tag.name = 'ExtVar'
    	tag.parameters = {
			key = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.key = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.key)
		end
    
    	return tag
	end


    return { 
		[0] = MyName,
		[1] = PlayCount,
		[2] = Price,
		[3] = Bonus,
		[4] = CmpnTm,
		[5] = CmpnBd,
		[6] = MonthLimit,
		[7] = MonthPlay,
		[8] = RenewTime,
		[9] = NexMntTime,
		[10] = PlayReport,
		[11] = ExtVar,
 	}
end

return {
	[1] = {name = "Sys", group = Sys},
	[2] = {name = "Talk", group = Talk},
	[3] = {name = "Util", group = Util},
	[4] = {name = "Ref", group = Ref},
}
