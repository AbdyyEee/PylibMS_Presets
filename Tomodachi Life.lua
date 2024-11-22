
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
    LIST = 9,
}

local function Mii()
    	
	function Nickname()
    	tag = {}
    
    	tag.name = 'Nickname'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Lastname()
    	tag = {}
    
    	tag.name = 'Lastname'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Firstname()
    	tag = {}
    
    	tag.name = 'Firstname'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Creator()
    	tag = {}
    
    	tag.name = 'Creator'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Character()
    	tag = {}
    
    	tag.name = 'Character'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			suffix = {type = STRUCTURE.LIST, list = {'true', 'false'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.suffix = reader.read_list(tag.parameters.suffix)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.suffix, data.suffix)
		end
    
    	return tag
	end

	function Character16()
    	tag = {}
    
    	tag.name = 'Character16'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			suffix = {type = STRUCTURE.LIST, list = {'true', 'false'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.suffix = reader.read_list(tag.parameters.suffix)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.suffix, data.suffix)
		end
    
    	return tag
	end

	function LongPhrase()
    	tag = {}
    
    	tag.name = 'LongPhrase'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function ShortPhrase()
    	tag = {}
    
    	tag.name = 'ShortPhrase'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			situation = {type = STRUCTURE.LIST, list = {'Despond', 'Worry', 'Nerves', 'Good'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.situation = reader.read_list(tag.parameters.situation)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.situation, data.situation)
		end
    
    	return tag
	end

	function FirstPerson()
    	tag = {}
    
    	tag.name = 'FirstPerson'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function FirstPersonW()
    	tag = {}
    
    	tag.name = 'FirstPersonW'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function MyNickname()
    	tag = {}
    
    	tag.name = 'MyNickname'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function BloodType()
    	tag = {}
    
    	tag.name = 'BloodType'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function FavoriteColor()
    	tag = {}
    
    	tag.name = 'FavoriteColor'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end


    return { 
		[0] = Nickname,
		[1] = Lastname,
		[2] = Firstname,
		[3] = Creator,
		[4] = Character,
		[5] = Character16,
		[6] = LongPhrase,
		[7] = ShortPhrase,
		[8] = FirstPerson,
		[9] = FirstPersonW,
		[10] = MyNickname,
		[11] = BloodType,
		[12] = FavoriteColor,
 	}
end


local function MiiTalk()
    	
	function Speaker()
    	tag = {}
    
    	tag.name = 'Speaker'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function FriendA()
    	tag = {}
    
    	tag.name = 'FriendA'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function FriendB()
    	tag = {}
    
    	tag.name = 'FriendB'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function FriendC()
    	tag = {}
    
    	tag.name = 'FriendC'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function FriendD()
    	tag = {}
    
    	tag.name = 'FriendD'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Lovers()
    	tag = {}
    
    	tag.name = 'Lovers'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Couple()
    	tag = {}
    
    	tag.name = 'Couple'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function BestFriend()
    	tag = {}
    
    	tag.name = 'BestFriend'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Child()
    	tag = {}
    
    	tag.name = 'Child'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function ChildApart()
    	tag = {}
    
    	tag.name = 'ChildApart'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Father()
    	tag = {}
    
    	tag.name = 'Father'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Mother()
    	tag = {}
    
    	tag.name = 'Mother'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function ExLovers()
    	tag = {}
    
    	tag.name = 'ExLovers'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function Divorce()
    	tag = {}
    
    	tag.name = 'Divorce'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end

	function BrotherSister()
    	tag = {}
    
    	tag.name = 'BrotherSister'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			conversion = {type = STRUCTURE.LIST, list = {'Kana', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.conversion = reader.read_list(tag.parameters.conversion)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.conversion, data.conversion)
		end
    
    	return tag
	end


    return { 
		[0] = Speaker,
		[1] = FriendA,
		[2] = FriendB,
		[3] = FriendC,
		[4] = FriendD,
		[5] = Lovers,
		[6] = Couple,
		[7] = BestFriend,
		[8] = Child,
		[9] = ChildApart,
		[10] = Father,
		[11] = Mother,
		[12] = ExLovers,
		[13] = Divorce,
		[14] = BrotherSister,
 	}
end


local function Date()
    	
	function N_Year()
    	tag = {}
    
    	tag.name = 'N_Year'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			zero = {type = STRUCTURE.LIST, list = {'False', 'True'}},
			format = {type = STRUCTURE.LIST, list = {'YY', 'YYYY'}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.zero = reader.read_list(tag.parameters.zero)
			data.format = reader.read_list(tag.parameters.format)
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.zero, data.zero)
			writer.write_list(tag.parameters.format, data.format)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function N_Month()
    	tag = {}
    
    	tag.name = 'N_Month'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			zero = {type = STRUCTURE.LIST, list = {'False', 'True'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.zero = reader.read_list(tag.parameters.zero)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.zero, data.zero)
		end
    
    	return tag
	end

	function N_Day()
    	tag = {}
    
    	tag.name = 'N_Day'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			zero = {type = STRUCTURE.LIST, list = {'False', 'True'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.zero = reader.read_list(tag.parameters.zero)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.zero, data.zero)
		end
    
    	return tag
	end

	function N_Hour()
    	tag = {}
    
    	tag.name = 'N_Hour'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			zero = {type = STRUCTURE.LIST, list = {'False', 'True'}},
			format = {type = STRUCTURE.LIST, list = {'12-hour', '24-hour'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.zero = reader.read_list(tag.parameters.zero)
			data.format = reader.read_list(tag.parameters.format)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.zero, data.zero)
			writer.write_list(tag.parameters.format, data.format)
		end
    
    	return tag
	end

	function N_Minute()
    	tag = {}
    
    	tag.name = 'N_Minute'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			zero = {type = STRUCTURE.LIST, list = {'False', 'True'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.zero = reader.read_list(tag.parameters.zero)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.zero, data.zero)
		end
    
    	return tag
	end

	function N_Second()
    	tag = {}
    
    	tag.name = 'N_Second'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			zero = {type = STRUCTURE.LIST, list = {'False', 'True'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.zero = reader.read_list(tag.parameters.zero)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.zero, data.zero)
		end
    
    	return tag
	end

	function S_Month()
    	tag = {}
    
    	tag.name = 'S_Month'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function S_MonthSh()
    	tag = {}
    
    	tag.name = 'S_MonthSh'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function S_Day()
    	tag = {}
    
    	tag.name = 'S_Day'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function S_Hour()
    	tag = {}
    
    	tag.name = 'S_Hour'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
			format = {type = STRUCTURE.LIST, list = {'12-hour', '24-hour'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.format = reader.read_list(tag.parameters.format)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.format, data.format)
		end
    
    	return tag
	end

	function S_Week()
    	tag = {}
    
    	tag.name = 'S_Week'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function S_WeekSh()
    	tag = {}
    
    	tag.name = 'S_WeekSh'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function S_Season()
    	tag = {}
    
    	tag.name = 'S_Season'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end

	function S_AMPM()
    	tag = {}
    
    	tag.name = 'S_AMPM'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Text', 'Voice'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
		end
    
    	return tag
	end


    return { 
		[0] = N_Year,
		[1] = N_Month,
		[2] = N_Day,
		[3] = N_Hour,
		[4] = N_Minute,
		[5] = N_Second,
		[6] = S_Month,
		[7] = S_MonthSh,
		[8] = S_Day,
		[9] = S_Hour,
		[10] = S_Week,
		[11] = S_WeekSh,
		[12] = S_Season,
		[13] = S_AMPM,
 	}
end


local function Reference()
    	
	function Body()
    	tag = {}
    
    	tag.name = 'Body'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			set = {type = STRUCTURE.LIST, list = {'False', 'True'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
			data.set = reader.read_list(tag.parameters.set)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_list(tag.parameters.set, data.set)
		end
    
    	return tag
	end

	function Headwear()
    	tag = {}
    
    	tag.name = 'Headwear'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Room()
    	tag = {}
    
    	tag.name = 'Room'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Food()
    	tag = {}
    
    	tag.name = 'Food'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Tool()
    	tag = {}
    
    	tag.name = 'Tool'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Treasure()
    	tag = {}
    
    	tag.name = 'Treasure'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Equip()
    	tag = {}
    
    	tag.name = 'Equip'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function SpecialProduct()
    	tag = {}
    
    	tag.name = 'SpecialProduct'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Item()
    	tag = {}
    
    	tag.name = 'Item'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.sp = reader.read_list(tag.parameters.sp)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.sp, data.sp)
		end
    
    	return tag
	end

	function Number()
    	tag = {}
    
    	tag.name = 'Number'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			info = {type = STRUCTURE.LIST, list = {'Price', 'Num', 'NoMark'}},
			zero = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.info = reader.read_list(tag.parameters.info)
			data.zero = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.info, data.info)
			writer.write_uint8(data.zero)
		end
    
    	return tag
	end

	function News()
    	tag = {}
    
    	tag.name = 'News'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			info = {type = STRUCTURE.LIST, list = {'DateDiff', 'Month', 'Hour', 'Day'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.info = reader.read_list(tag.parameters.info)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.info, data.info)
		end
    
    	return tag
	end

	function Island()
    	tag = {}
    
    	tag.name = 'Island'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			info = {type = STRUCTURE.LIST, list = {'Others', 'Mine'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.info = reader.read_list(tag.parameters.info)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.info, data.info)
		end
    
    	return tag
	end

	function Player()
    	tag = {}
    
    	tag.name = 'Player'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT32_1, list = {}},
			info = {type = STRUCTURE.LIST, list = {'Country'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint32()
			data.info = reader.read_list(tag.parameters.info)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint32(data.buffer)
			writer.write_list(tag.parameters.info, data.info)
		end
    
    	return tag
	end

	function Age()
    	tag = {}
    
    	tag.name = 'Age'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
		end
    
    	return tag
	end

	function SongGenre()
    	tag = {}
    
    	tag.name = 'SongGenre'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
		end
    
    	return tag
	end

	function Counter_JP_()
    	tag = {}
    
    	tag.name = 'Counter(JP)'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			counter = {type = STRUCTURE.LIST, list = {'Normal', 'D_ConsonantEuphony', 'None'}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.type = reader.read_list(tag.parameters.type)
			data.counter = reader.read_list(tag.parameters.counter)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.counter, data.counter)
		end
    
    	return tag
	end

	function IslandAddress()
    	tag = {}
    
    	tag.name = 'IslandAddress'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			info = {type = STRUCTURE.LIST, list = {'Others', 'Mine'}},
			kind = {type = STRUCTURE.LIST, list = {'Islands', 'Sea', 'Num1', 'Num0'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.info = reader.read_list(tag.parameters.info)
			data.kind = reader.read_list(tag.parameters.kind)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.info, data.info)
			writer.write_list(tag.parameters.kind, data.kind)
		end
    
    	return tag
	end

	function IslandSub()
    	tag = {}
    
    	tag.name = 'IslandSub'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'Name', 'Voice'}},
			info = {type = STRUCTURE.LIST, list = {'Others', 'Mine'}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.info = reader.read_list(tag.parameters.info)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_list(tag.parameters.info, data.info)
		end
    
    	return tag
	end

	function Currency()
    	return {name = "Currency"}
	end


    return { 
		[0] = Body,
		[1] = Headwear,
		[2] = Room,
		[3] = Food,
		[4] = Tool,
		[5] = Treasure,
		[6] = Equip,
		[7] = SpecialProduct,
		[8] = Item,
		[9] = Number,
		[10] = News,
		[11] = Island,
		[12] = Player,
		[13] = Age,
		[14] = SongGenre,
		[15] = Counter_JP_,
		[16] = IslandAddress,
		[17] = IslandSub,
		[18] = Currency,
 	}
end


local function Song()
    	
	function Note()
    	tag = {}
    
    	tag.name = 'Note'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			pitch = {type = STRUCTURE.LIST, list = {'F#3', 'G3', 'G#3', 'A4', 'A#4', 'F#4', 'G#5', 'A5', 'E2', 'D5', 'D4', 'A#2', 'G#1', 'G#4', 'E5', 'C5', 'A#3', 'G2', 'C2', 'A#1', 'C#2', 'A2', 'F#2', 'E3', 'G4', 'C#5', 'D#3', 'B3', 'C#4', 'D#5', 'G5', 'B2', 'F#5', 'F2', 'B1', 'G1', 'D#2', 'F4', 'C3', 'C#3', 'F3', 'B4', 'A1', 'B5', 'F5', 'C6', 'E4', 'G#2', 'D3', 'A#5', 'A3', 'C4', 'D2', 'D#4'}},
			length = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.pitch = reader.read_list(tag.parameters.pitch)
			data.length = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.pitch, data.pitch)
			writer.write_uint8(data.length)
		end
    
    	return tag
	end

	function Rest()
    	tag = {}
    
    	tag.name = 'Rest'
    	tag.parameters = {
			length = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.length = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.length)
		end
    
    	return tag
	end

	function Text()
    	tag = {}
    
    	tag.name = 'Text'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
		end
    
    	return tag
	end

	function Pitch()
    	tag = {}
    
    	tag.name = 'Pitch'
    	tag.parameters = {
			pitch = {type = STRUCTURE.LIST, list = {'F#3', 'G3', 'G#3', 'A4', 'A#4', 'F#4', 'G#5', 'A5', 'E2', 'D5', 'D4', 'A#2', 'G#1', 'G#4', 'E5', 'C5', 'A#3', 'G2', 'C2', 'A#1', 'C#2', 'A2', 'F#2', 'E3', 'G4', 'C#5', 'D#3', 'B3', 'C#4', 'D#5', 'G5', 'B2', 'F#5', 'F2', 'B1', 'G1', 'D#2', 'F4', 'C3', 'C#3', 'F3', 'B4', 'A1', 'B5', 'F5', 'C6', 'E4', 'G#2', 'D3', 'A#5', 'A3', 'C4', 'D2', 'D#4'}},
		}

    	tag.read = function(reader, data) 
			data.pitch = reader.read_list(tag.parameters.pitch)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.pitch, data.pitch)
		end
    
    	return tag
	end


    return { 
		[0] = Note,
		[1] = Rest,
		[2] = Text,
		[3] = Pitch,
 	}
end


local function Fixed()
    	
	function Width()
    	tag = {}
    
    	tag.name = 'Width'
    	tag.parameters = {
			pixel = {type = STRUCTURE.UINT16_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.pixel = reader.read_uint16()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint16(data.pixel)
		end
    
    	return tag
	end


    return { 
		[0] = Width,
 	}
end


local function Article()
    	
	function Def()
    	return {name = "Def"}
	end

	function Indef()
    	return {name = "Indef"}
	end

	function DefGE()
    	tag = {}
    
    	tag.name = 'DefGE'
    	tag.parameters = {
			case = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.case = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.case)
		end
    
    	return tag
	end

	function IndefGE()
    	tag = {}
    
    	tag.name = 'IndefGE'
    	tag.parameters = {
			case = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.case = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.case)
		end
    
    	return tag
	end


    return { 
		[0] = Def,
		[1] = Indef,
		[2] = DefGE,
		[3] = IndefGE,
 	}
end


local function Gender()
    	
	function Mii()
    	tag = {}
    
    	tag.name = 'Mii'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			male = {type = STRUCTURE.STRING, list = {}},
			female = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.male = reader.read_len_prefixed_utf16_string()
			data.female = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.male)
			writer.write_len_prefixed_utf16_string(data.female)
		end
    
    	return tag
	end

	function MyMii()
    	tag = {}
    
    	tag.name = 'MyMii'
    	tag.parameters = {
			male = {type = STRUCTURE.STRING, list = {}},
			female = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.male = reader.read_len_prefixed_utf16_string()
			data.female = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.male)
			writer.write_len_prefixed_utf16_string(data.female)
		end
    
    	return tag
	end

	function MiiTalk()
    	tag = {}
    
    	tag.name = 'MiiTalk'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'BrotherSister', 'Lovers', 'ExLovers', 'Speaker', 'FriendD', 'BestFriend', 'Child', 'FriendB', 'FriendC', 'ChildApart', 'Divorce', 'FriendA', 'Couple'}},
			male = {type = STRUCTURE.STRING, list = {}},
			female = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.male = reader.read_len_prefixed_utf16_string()
			data.female = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_len_prefixed_utf16_string(data.male)
			writer.write_len_prefixed_utf16_string(data.female)
		end
    
    	return tag
	end

	function MiiSpeaker()
    	tag = {}
    
    	tag.name = 'MiiSpeaker'
    	tag.parameters = {
			male = {type = STRUCTURE.STRING, list = {}},
			female = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.male = reader.read_len_prefixed_utf16_string()
			data.female = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.male)
			writer.write_len_prefixed_utf16_string(data.female)
		end
    
    	return tag
	end

	function Body()
    	tag = {}
    
    	tag.name = 'Body'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Headwear()
    	tag = {}
    
    	tag.name = 'Headwear'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Room()
    	tag = {}
    
    	tag.name = 'Room'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Food()
    	tag = {}
    
    	tag.name = 'Food'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Tool()
    	tag = {}
    
    	tag.name = 'Tool'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Treasure()
    	tag = {}
    
    	tag.name = 'Treasure'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Equip()
    	tag = {}
    
    	tag.name = 'Equip'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function SpecialProduct()
    	tag = {}
    
    	tag.name = 'SpecialProduct'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end

	function Item()
    	tag = {}
    
    	tag.name = 'Item'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			masculine = {type = STRUCTURE.STRING, list = {}},
			feminine = {type = STRUCTURE.STRING, list = {}},
			neuter = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.masculine = reader.read_len_prefixed_utf16_string()
			data.feminine = reader.read_len_prefixed_utf16_string()
			data.neuter = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.masculine)
			writer.write_len_prefixed_utf16_string(data.feminine)
			writer.write_len_prefixed_utf16_string(data.neuter)
		end
    
    	return tag
	end


    return { 
		[0] = Mii,
		[1] = MyMii,
		[2] = MiiTalk,
		[3] = MiiSpeaker,
		[4] = Body,
		[5] = Headwear,
		[6] = Room,
		[7] = Food,
		[8] = Tool,
		[9] = Treasure,
		[10] = Equip,
		[11] = SpecialProduct,
		[12] = Item,
 	}
end


local function SingularPlural()
    	
	function Body()
    	tag = {}
    
    	tag.name = 'Body'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Headwear()
    	tag = {}
    
    	tag.name = 'Headwear'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Room()
    	tag = {}
    
    	tag.name = 'Room'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Food()
    	tag = {}
    
    	tag.name = 'Food'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Tool()
    	tag = {}
    
    	tag.name = 'Tool'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Treasure()
    	tag = {}
    
    	tag.name = 'Treasure'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Equip()
    	tag = {}
    
    	tag.name = 'Equip'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function SpecialProduct()
    	tag = {}
    
    	tag.name = 'SpecialProduct'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Item()
    	tag = {}
    
    	tag.name = 'Item'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Number()
    	tag = {}
    
    	tag.name = 'Number'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end

	function Hour()
    	tag = {}
    
    	tag.name = 'Hour'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			singular = {type = STRUCTURE.STRING, list = {}},
			plural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.singular = reader.read_len_prefixed_utf16_string()
			data.plural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_len_prefixed_utf16_string(data.singular)
			writer.write_len_prefixed_utf16_string(data.plural)
		end
    
    	return tag
	end


    return { 
		[0] = Body,
		[1] = Headwear,
		[2] = Room,
		[3] = Food,
		[4] = Tool,
		[5] = Treasure,
		[6] = Equip,
		[7] = SpecialProduct,
		[8] = Item,
		[9] = Number,
		[10] = Hour,
 	}
end


local function GenderSingularPlural()
    	
	function Body()
    	tag = {}
    
    	tag.name = 'Body'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Headwear()
    	tag = {}
    
    	tag.name = 'Headwear'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Room()
    	tag = {}
    
    	tag.name = 'Room'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Food()
    	tag = {}
    
    	tag.name = 'Food'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Tool()
    	tag = {}
    
    	tag.name = 'Tool'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Treasure()
    	tag = {}
    
    	tag.name = 'Treasure'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Equip()
    	tag = {}
    
    	tag.name = 'Equip'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function SpecialProduct()
    	tag = {}
    
    	tag.name = 'SpecialProduct'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end

	function Item()
    	tag = {}
    
    	tag.name = 'Item'
    	tag.parameters = {
			buffer = {type = STRUCTURE.UINT8_0, list = {}},
			sp = {type = STRUCTURE.LIST, list = {'Singular', 'Plural'}},
			masculineSingular = {type = STRUCTURE.STRING, list = {}},
			masculinePlural = {type = STRUCTURE.STRING, list = {}},
			feminineSingular = {type = STRUCTURE.STRING, list = {}},
			femininePlural = {type = STRUCTURE.STRING, list = {}},
			neuterSingular = {type = STRUCTURE.STRING, list = {}},
			neuterPlural = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.buffer = reader.read_uint8()
			data.sp = reader.read_list(tag.parameters.sp)
			data.masculineSingular = reader.read_len_prefixed_utf16_string()
			data.masculinePlural = reader.read_len_prefixed_utf16_string()
			data.feminineSingular = reader.read_len_prefixed_utf16_string()
			data.femininePlural = reader.read_len_prefixed_utf16_string()
			data.neuterSingular = reader.read_len_prefixed_utf16_string()
			data.neuterPlural = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.buffer)
			writer.write_list(tag.parameters.sp, data.sp)
			writer.write_len_prefixed_utf16_string(data.masculineSingular)
			writer.write_len_prefixed_utf16_string(data.masculinePlural)
			writer.write_len_prefixed_utf16_string(data.feminineSingular)
			writer.write_len_prefixed_utf16_string(data.femininePlural)
			writer.write_len_prefixed_utf16_string(data.neuterSingular)
			writer.write_len_prefixed_utf16_string(data.neuterPlural)
		end
    
    	return tag
	end


    return { 
		[0] = Body,
		[1] = Headwear,
		[2] = Room,
		[3] = Food,
		[4] = Tool,
		[5] = Treasure,
		[6] = Equip,
		[7] = SpecialProduct,
		[8] = Item,
 	}
end


local function Format()
    	
	function InitialCap()
    	return {name = "InitialCap"}
	end

	function InitialCapSP()
    	return {name = "InitialCapSP"}
	end

	function Elision()
    	tag = {}
    
    	tag.name = 'Elision'
    	tag.parameters = {
			normal = {type = STRUCTURE.STRING, list = {}},
			elision = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.normal = reader.read_len_prefixed_utf16_string()
			data.elision = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.normal)
			writer.write_len_prefixed_utf16_string(data.elision)
		end
    
    	return tag
	end

	function Particle()
    	tag = {}
    
    	tag.name = 'Particle'
    	tag.parameters = {
			char = {type = STRUCTURE.LIST, list = {'none', 'to', 'ni', 'ya', 'wo', 'ha', 'ga', 'san'}},
		}

    	tag.read = function(reader, data) 
			data.char = reader.read_list(tag.parameters.char)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.char, data.char)
		end
    
    	return tag
	end

	function Patchim()
    	tag = {}
    
    	tag.name = 'Patchim'
    	tag.parameters = {
			patchim = {type = STRUCTURE.STRING, list = {}},
			nopatchim = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.patchim = reader.read_len_prefixed_utf16_string()
			data.nopatchim = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_len_prefixed_utf16_string(data.patchim)
			writer.write_len_prefixed_utf16_string(data.nopatchim)
		end
    
    	return tag
	end

	function AndSP()
    	return {name = "AndSP"}
	end


    return { 
		[0] = InitialCap,
		[1] = InitialCapSP,
		[2] = Elision,
		[3] = Particle,
		[4] = Patchim,
		[5] = AndSP,
 	}
end


local function Nuance()
    	
	function CS_Rate()
    	tag = {}
		tag.byte_order = "kak"
    	tag.name = 'CS_Rate'
    	tag.parameters = {
			rate = {type = STRUCTURE.UINT16_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.rate = reader.read_uint16()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint16(data.rate)
		end
    
    	return tag
	end

	function CS_Vol()
    	tag = {}
    
    	tag.name = 'CS_Vol'
    	tag.parameters = {
			Vol = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.Vol = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.Vol)
		end
    
    	return tag
	end

	function CS_Pause()
    	tag = {}
    
    	tag.name = 'CS_Pause'
    	tag.parameters = {
			len = {type = STRUCTURE.UINT16_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.len = reader.read_uint16()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint16(data.len)
		end
    
    	return tag
	end

	function CS_Reset()
    	return {name = "CS_Reset"}
	end

	function Echo()
    	tag = {}
    
    	tag.name = 'Echo'
    	tag.parameters = {
			gain = {type = STRUCTURE.UINT8_0, list = {}},
			delay = {type = STRUCTURE.UINT16_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.gain = reader.read_uint8()
			data.delay = reader.read_uint16()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.gain)
			writer.write_uint16(data.delay)
		end
    
    	return tag
	end

	function Preset()
    	tag = {}
    
    	tag.name = 'Preset'
    	tag.parameters = {
			param = {type = STRUCTURE.LIST, list = {'Default', 'Idol', 'Subdued_Voice', 'No_Intonation', 'Scream'}},
		}

    	tag.read = function(reader, data) 
			data.param = reader.read_list(tag.parameters.param)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.param, data.param)
		end
    
    	return tag
	end

	function Song_Chorus()
    	tag = {}
    
    	tag.name = 'Song_Chorus'
    	tag.parameters = {
			target = {type = STRUCTURE.LIST, list = {'0', '2', '1'}},
			ratio = {type = STRUCTURE.UINT32_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.target = reader.read_list(tag.parameters.target)
			data.ratio = reader.read_uint32()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.target, data.target)
			writer.write_uint32(data.ratio)
		end
    
    	return tag
	end

	function CS_Toi()
    	tag = {}
    
    	tag.name = 'CS_Toi'
    	tag.parameters = {
			type = {type = STRUCTURE.LIST, list = {'diacritized', 'lhp', 'orth', 'pyt', 'nts'}},
			orth_text = {type = STRUCTURE.STRING, list = {}},
		}

    	tag.read = function(reader, data) 
			data.type = reader.read_list(tag.parameters.type)
			data.orth_text = reader.read_len_prefixed_utf16_string()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.type, data.type)
			writer.write_len_prefixed_utf16_string(data.orth_text)
		end
    
    	return tag
	end

	function CS_Mw()
    	return {name = "CS_Mw"}
	end

	function CS_Tn()
    	tag = {}
    
    	tag.name = 'CS_Tn'
    	tag.parameters = {
			tn = {type = STRUCTURE.LIST, list = {'sms', 'spell', 'address', 'normal'}},
		}

    	tag.read = function(reader, data) 
			data.tn = reader.read_list(tag.parameters.tn)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.tn, data.tn)
		end
    
    	return tag
	end

	function CS_Wait()
    	tag = {}
    
    	tag.name = 'CS_Wait'
    	tag.parameters = {
			time = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.time = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.time)
		end
    
    	return tag
	end

	function CS_Spell()
    	tag = {}
    
    	tag.name = 'CS_Spell'
    	tag.parameters = {
			time = {type = STRUCTURE.UINT16_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.time = reader.read_uint16()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint16(data.time)
		end
    
    	return tag
	end

	function CS_Eos()
    	tag = {}
    
    	tag.name = 'CS_Eos'
    	tag.parameters = {
			eos = {type = STRUCTURE.LIST, list = {'true', 'false'}},
		}

    	tag.read = function(reader, data) 
			data.eos = reader.read_list(tag.parameters.eos)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.eos, data.eos)
		end
    
    	return tag
	end

	function CS_ReadMode()
    	tag = {}
    
    	tag.name = 'CS_ReadMode'
    	tag.parameters = {
			mode = {type = STRUCTURE.LIST, list = {'line', 'character', 'sentence', 'explicit', 'word'}},
		}

    	tag.read = function(reader, data) 
			data.mode = reader.read_list(tag.parameters.mode)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.mode, data.mode)
		end
    
    	return tag
	end

	function Song_WordStretch()
    	tag = {}
    
    	tag.name = 'Song_WordStretch'
    	tag.parameters = {
			mode = {type = STRUCTURE.LIST, list = {'Only_Last', 'Only_Vowel', 'Whole_Word', 'Only_Top'}},
		}

    	tag.read = function(reader, data) 
			data.mode = reader.read_list(tag.parameters.mode)
 		end
    
    	tag.write = function(writer, data) 
			writer.write_list(tag.parameters.mode, data.mode)
		end
    
    	return tag
	end

	function LenAdjust_First()
    	tag = {}
    
    	tag.name = 'LenAdjust_First'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end

	function LenAdjust_Second()
    	tag = {}
    
    	tag.name = 'LenAdjust_Second'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end

	function LenAdjust_SecondLast()
    	tag = {}
    
    	tag.name = 'LenAdjust_SecondLast'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end

	function LenAdjust_Last()
    	tag = {}
    
    	tag.name = 'LenAdjust_Last'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_1, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end

	function Pitch_Smooth()
    	tag = {}
    
    	tag.name = 'Pitch_Smooth'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end

	function Pitch_Mod_Width()
    	tag = {}
    
    	tag.name = 'Pitch_Mod_Width'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end

	function Pitch_Mod_Rate()
    	tag = {}
    
    	tag.name = 'Pitch_Mod_Rate'
    	tag.parameters = {
			val = {type = STRUCTURE.UINT8_0, list = {}},
		}

    	tag.read = function(reader, data) 
			data.val = reader.read_uint8()
 		end
    
    	tag.write = function(writer, data) 
			writer.write_uint8(data.val)
		end
    
    	return tag
	end


    return { 
		[0] = CS_Rate,
		[1] = CS_Vol,
		[2] = CS_Pause,
		[3] = CS_Reset,
		[4] = Echo,
		[5] = Preset,
		[6] = Song_Chorus,
		[7] = CS_Toi,
		[8] = CS_Mw,
		[9] = CS_Tn,
		[10] = CS_Wait,
		[11] = CS_Spell,
		[12] = CS_Eos,
		[13] = CS_ReadMode,
		[14] = Song_WordStretch,
		[15] = LenAdjust_First,
		[16] = LenAdjust_Second,
		[17] = LenAdjust_SecondLast,
		[18] = LenAdjust_Last,
		[19] = Pitch_Smooth,
		[20] = Pitch_Mod_Width,
		[21] = Pitch_Mod_Rate,
 	}
end

return {
	[1] = {name = "Mii", group = Mii},
	[2] = {name = "MiiTalk", group = MiiTalk},
	[3] = {name = "Date", group = Date},
	[4] = {name = "Reference", group = Reference},
	[5] = {name = "Song", group = Song},
	[6] = {name = "Fixed", group = Fixed},
	[7] = {name = "Article", group = Article},
	[8] = {name = "Gender", group = Gender},
	[9] = {name = "SingularPlural", group = SingularPlural},
	[10] = {name = "GenderSingularPlural", group = GenderSingularPlural},
	[11] = {name = "Format", group = Format},
	[12] = {name = "Nuance", group = Nuance},
}