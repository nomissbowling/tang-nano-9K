//---------------------------------------------------------------------------------------
// 
// Project:			light8080 
//
// Filename:		micro_rom.v 		(November 25, 2011) 
// 
//---------------------------------------------------------------------------------------
module micro_rom (
input	        clock, 		// global clock 
input   [8:0]	uc_addr, 	// micro code ROM address
output  reg [31:0]	uc_dout 	// micro code ROM data 
); 
//---------------------------------------------------------------------------------------
// module implementation 
// microcode ROM : see design notes and microcode source file 
reg [31:0] uc_dat; 
always @ (posedge clock) 
begin 
	uc_dout <= uc_dat;
end 
//---------------------------------------------------------------------------------------
always @ (uc_addr) 
begin 
	case (uc_addr) 
		9'h000:	uc_dat <= 32'b00000000000000000000000000000000;
		9'h001:	uc_dat <= 32'b00000000000001001000000001000100;
		9'h002:	uc_dat <= 32'b00000000000001000000000001000100;
		9'h003:	uc_dat <= 32'b10111101101001001000000001001101;
		9'h004:	uc_dat <= 32'b10110110101001000000000001001101;
		9'h005:	uc_dat <= 32'b00100000000000000000000000000000;
		9'h006:	uc_dat <= 32'b00000000000000000000000000000000;
		9'h007:	uc_dat <= 32'b11100100000000000000000000000000;
		9'h008:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h009:	uc_dat <= 32'b00000100000100000000000001010111;
		9'h00a:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h00b:	uc_dat <= 32'b00000100000100000000000001010111;
		9'h00c:	uc_dat <= 32'b00000000101010000000000010010111;
		9'h00d:	uc_dat <= 32'b00001000000000000000110000011100;
		9'h00e:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h00f:	uc_dat <= 32'b00000100000100000000000001010111;
		9'h010:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h011:	uc_dat <= 32'b00001000000000000000110000011100;
		9'h012:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h013:	uc_dat <= 32'b00000000000110001000000001010111;
		9'h014:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h015:	uc_dat <= 32'b00000100000110000000000001010111;
		9'h016:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h017:	uc_dat <= 32'b00001000000000000000110000100010;
		9'h018:	uc_dat <= 32'b00000100000000111000000001010111;
		9'h019:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h01a:	uc_dat <= 32'b00000000101000111000000010010111;
		9'h01b:	uc_dat <= 32'b00001000000000000000110000100101;
		9'h01c:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h01d:	uc_dat <= 32'b10111101101001100000000001001101;
		9'h01e:	uc_dat <= 32'b10110110101001101000000001001101;
		9'h01f:	uc_dat <= 32'b00000000100000101000000001010111;
		9'h020:	uc_dat <= 32'b00001000000000000000110000100010;
		9'h021:	uc_dat <= 32'b00000100000000100000000001010111;
		9'h022:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h023:	uc_dat <= 32'b00000000101000101000000010010111;
		9'h024:	uc_dat <= 32'b10111101101001100000000001001101;
		9'h025:	uc_dat <= 32'b10111010101001101000000001001101;
		9'h026:	uc_dat <= 32'b00000000101000100000000010010111;
		9'h027:	uc_dat <= 32'b00001000000000000000110000100101;
		9'h028:	uc_dat <= 32'b00001000000000000000110000101000;
		9'h029:	uc_dat <= 32'b00000100000000111000000001010111;
		9'h02a:	uc_dat <= 32'b00000000101000111000000010010111;
		9'h02b:	uc_dat <= 32'b00001000000000000000110000101011;
		9'h02c:	uc_dat <= 32'b00000000101000010000000000000000;
		9'h02d:	uc_dat <= 32'b00000000000001010000000001010111;
		9'h02e:	uc_dat <= 32'b00000000101000011000000000000000;
		9'h02f:	uc_dat <= 32'b00000000000001011000000001010111;
		9'h030:	uc_dat <= 32'b00000000101000100000000000000000;
		9'h031:	uc_dat <= 32'b00000000000000010000000001010111;
		9'h032:	uc_dat <= 32'b00000000101000101000000000000000;
		9'h033:	uc_dat <= 32'b00000000000000011000000001010111;
		9'h034:	uc_dat <= 32'b00000000101001010000000000000000;
		9'h035:	uc_dat <= 32'b00000000000000100000000001010111;
		9'h036:	uc_dat <= 32'b00000000101001011000000000000000;
		9'h037:	uc_dat <= 32'b00000100000000101000000001010111;
		9'h038:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h039:	uc_dat <= 32'b00000100011000111000001101001100;
		9'h03a:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h03b:	uc_dat <= 32'b00000100011000111000001101001101;
		9'h03c:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h03d:	uc_dat <= 32'b00000100011000111000001101001110;
		9'h03e:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h03f:	uc_dat <= 32'b00000100011000111000001101001111;
		9'h040:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h041:	uc_dat <= 32'b00000100011000111100001101000100;
		9'h042:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h043:	uc_dat <= 32'b00000100011000111100001101000101;
		9'h044:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h045:	uc_dat <= 32'b00000100011000111100001101000110;
		9'h046:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h047:	uc_dat <= 32'b00000100011000111000001110001110;
		9'h048:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h049:	uc_dat <= 32'b00000100011000111000001101001100;
		9'h04a:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h04b:	uc_dat <= 32'b00000100011000111000001101001101;
		9'h04c:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h04d:	uc_dat <= 32'b00000100011000111000001101001110;
		9'h04e:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h04f:	uc_dat <= 32'b00000100011000111000001101001111;
		9'h050:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h051:	uc_dat <= 32'b00000100011000111100001101000100;
		9'h052:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h053:	uc_dat <= 32'b00000100011000111100001101000101;
		9'h054:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h055:	uc_dat <= 32'b00000100011000111100001101000110;
		9'h056:	uc_dat <= 32'b00000000101010000000000000000000;
		9'h057:	uc_dat <= 32'b00000100011000111000001110001110;
		9'h058:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h059:	uc_dat <= 32'b00000100011000111000001101001100;
		9'h05a:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h05b:	uc_dat <= 32'b00000100011000111000001101001101;
		9'h05c:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h05d:	uc_dat <= 32'b00000100011000111000001101001110;
		9'h05e:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h05f:	uc_dat <= 32'b00000100011000111000001101001111;
		9'h060:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h061:	uc_dat <= 32'b00000100011000111100001101000100;
		9'h062:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h063:	uc_dat <= 32'b00000100011000111100001101000101;
		9'h064:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h065:	uc_dat <= 32'b00000100011000111100001101000110;
		9'h066:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h067:	uc_dat <= 32'b00000100011000111000001110001110;
		9'h068:	uc_dat <= 32'b10111100101100000000001001001101;
		9'h069:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h06a:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h06b:	uc_dat <= 32'b10111100000000000000001010001101;
		9'h06c:	uc_dat <= 32'b00001000000000000000110000011100;
		9'h06d:	uc_dat <= 32'b10111100011100000000001001001111;
		9'h06e:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h06f:	uc_dat <= 32'b00001000000000000000110000011001;
		9'h070:	uc_dat <= 32'b11000000000000000000000000000000;
		9'h071:	uc_dat <= 32'b10111100011001010000001010001111;
		9'h072:	uc_dat <= 32'b00001000000000000000110000011100;
		9'h073:	uc_dat <= 32'b10111100101110001000000001001101;
		9'h074:	uc_dat <= 32'b10100100101110000000000001001101;
		9'h075:	uc_dat <= 32'b10111100011110001000000001001111;
		9'h076:	uc_dat <= 32'b10100100011110000000000001001111;
		9'h077:	uc_dat <= 32'b00000000011110001000000000000000;
		9'h078:	uc_dat <= 32'b00000000101000101000000101001100;
		9'h079:	uc_dat <= 32'b00000000011110000000000000000000;
		9'h07a:	uc_dat <= 32'b00000100101000100000000101001101;
		9'h07b:	uc_dat <= 32'b00000000101000111000000010101000;
		9'h07c:	uc_dat <= 32'b00000100101000111000001101101000;
		9'h07d:	uc_dat <= 32'b00000100101000111000000101000000;
		9'h07e:	uc_dat <= 32'b00000100101000111000000101000001;
		9'h07f:	uc_dat <= 32'b00000100101000111000000101000010;
		9'h080:	uc_dat <= 32'b00000100101000111000000101000011;
		9'h081:	uc_dat <= 32'b00000100101000111000000001000111;
		9'h082:	uc_dat <= 32'b00000100000000000000000100101100;
		9'h083:	uc_dat <= 32'b00000100000000000000000100101101;
		9'h084:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h085:	uc_dat <= 32'b00000000101001100000000000000000;
		9'h086:	uc_dat <= 32'b00000000000001001000000001010111;
		9'h087:	uc_dat <= 32'b00000000101001101000000000000000;
		9'h088:	uc_dat <= 32'b00000100000001000000000001010111;
		9'h089:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h08a:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h08b:	uc_dat <= 32'b00010000000000000000100000000101;
		9'h08c:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h08d:	uc_dat <= 32'b11000000101001000000000010010111;
		9'h08e:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h08f:	uc_dat <= 32'b11000000101001001000000010010111;
		9'h090:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h091:	uc_dat <= 32'b00000000101001100000000000000000;
		9'h092:	uc_dat <= 32'b00000000000001001000000001010111;
		9'h093:	uc_dat <= 32'b00000000101001101000000000000000;
		9'h094:	uc_dat <= 32'b00000100000001000000000001010111;
		9'h095:	uc_dat <= 32'b00001000000000000000110000101110;
		9'h096:	uc_dat <= 32'b00010000000000000000100000001101;
		9'h097:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h098:	uc_dat <= 32'b00000000000001001000000001010111;
		9'h099:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h09a:	uc_dat <= 32'b00000100000001000000000001010111;
		9'h09b:	uc_dat <= 32'b00010000000000000000100000010111;
		9'h09c:	uc_dat <= 32'b11000000101001000000000010010111;
		9'h09d:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h09e:	uc_dat <= 32'b11000000101001001000000010010111;
		9'h09f:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0a0:	uc_dat <= 32'b11000000000001001000000001011111;
		9'h0a1:	uc_dat <= 32'b00000100000001000000000001000100;
		9'h0a2:	uc_dat <= 32'b00000000101000101000000000000000;
		9'h0a3:	uc_dat <= 32'b00000000000001001000000001010111;
		9'h0a4:	uc_dat <= 32'b00000000101000100000000000000000;
		9'h0a5:	uc_dat <= 32'b00000100000001000000000001010111;
		9'h0a6:	uc_dat <= 32'b11000000101110000000000010010111;
		9'h0a7:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0a8:	uc_dat <= 32'b11000000101110001000000010010111;
		9'h0a9:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0aa:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0ab:	uc_dat <= 32'b11000000101000111000000010010111;
		9'h0ac:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0ad:	uc_dat <= 32'b11000000000000000000000010110000;
		9'h0ae:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0af:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0b0:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h0b1:	uc_dat <= 32'b00000000000110001000000001010111;
		9'h0b2:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h0b3:	uc_dat <= 32'b00000100000110000000000001010111;
		9'h0b4:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h0b5:	uc_dat <= 32'b00000000000000110000001101010111;
		9'h0b6:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h0b7:	uc_dat <= 32'b00000100000000111000000001010111;
		9'h0b8:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h0b9:	uc_dat <= 32'b00000000000001100000000001010111;
		9'h0ba:	uc_dat <= 32'b00001000000000000000110000111001;
		9'h0bb:	uc_dat <= 32'b00000000000001101000000001010111;
		9'h0bc:	uc_dat <= 32'b11000000101000100000000010010111;
		9'h0bd:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0be:	uc_dat <= 32'b11000000101000101000000010010111;
		9'h0bf:	uc_dat <= 32'b00001000000000000000110000110100;
		9'h0c0:	uc_dat <= 32'b00000000101001100000000000000000;
		9'h0c1:	uc_dat <= 32'b00000000000000101000000001010111;
		9'h0c2:	uc_dat <= 32'b00000000101001101000000000000000;
		9'h0c3:	uc_dat <= 32'b00000100000000100000000001010111;
		9'h0c4:	uc_dat <= 32'b00000000101000101000000000000000;
		9'h0c5:	uc_dat <= 32'b00000000000001111000000001010111;
		9'h0c6:	uc_dat <= 32'b00000000101000100000000000000000;
		9'h0c7:	uc_dat <= 32'b00000100000001110000000001010111;
		9'h0c8:	uc_dat <= 32'b01100100000000000000000000000000;
		9'h0c9:	uc_dat <= 32'b01000100000000000000000000000000;
		9'h0ca:	uc_dat <= 32'b00000000000001101000000001010111;
		9'h0cb:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h0cc:	uc_dat <= 32'b00000000000001100000000001010111;
		9'h0cd:	uc_dat <= 32'b00000000000000000000000000000000;
		9'h0ce:	uc_dat <= 32'b00000001101001100000000000000000;
		9'h0cf:	uc_dat <= 32'b10010110101001101000000000000000;
		9'h0d0:	uc_dat <= 32'b00000100100000111000000001010111;
		9'h0d1:	uc_dat <= 32'b00000000000001101000000001010111;
		9'h0d2:	uc_dat <= 32'b00001000000000000000110000011111;
		9'h0d3:	uc_dat <= 32'b00000000000001100000000001010111;
		9'h0d4:	uc_dat <= 32'b00000000101000111000000010010111;
		9'h0d5:	uc_dat <= 32'b00000001101001100000000000000000;
		9'h0d6:	uc_dat <= 32'b10011010101001101000000000000000;
		9'h0d7:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0d8:	uc_dat <= 32'b11100100000000000000000000000000;
		9'h0d9:	uc_dat <= 32'b00000001101000101000000000000000;
		9'h0da:	uc_dat <= 32'b00010110101000100000000000000000;
		9'h0db:	uc_dat <= 32'b00001100100001010000000001010111;
		9'h0dc:	uc_dat <= 32'b00000001101000101000000000000000;
		9'h0dd:	uc_dat <= 32'b00011010101000100000000000000000;
		9'h0de:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0df:	uc_dat <= 32'b10111101101001001000000001001101;
		9'h0e0:	uc_dat <= 32'b10110110101001000000000001001101;
		9'h0e1:	uc_dat <= 32'b00001100100000000000000010010111;
		9'h0e2:	uc_dat <= 32'b00000001101001100000000000000000;
		9'h0e3:	uc_dat <= 32'b00010110101001101000000000000000;
		9'h0e4:	uc_dat <= 32'b00001100100000000000000000000000;
		9'h0e5:	uc_dat <= 32'b00000001101001100000000000000000;
		9'h0e6:	uc_dat <= 32'b00011010101001101000000000000000;
		9'h0e7:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0e8:	uc_dat <= 32'b00000001101110001000000000000000;
		9'h0e9:	uc_dat <= 32'b00010110101110000000000000000000;
		9'h0ea:	uc_dat <= 32'b00001100100000000000000000000000;
		9'h0eb:	uc_dat <= 32'b00000001101110001000000000000000;
		9'h0ec:	uc_dat <= 32'b00011010101110000000000000000000;
		9'h0ed:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0ee:	uc_dat <= 32'b10111101101001001000000001001101;
		9'h0ef:	uc_dat <= 32'b10110110101001000000000001001101;
		9'h0f0:	uc_dat <= 32'b00000000100001100000000001010111;
		9'h0f1:	uc_dat <= 32'b10111101101001001000000001001101;
		9'h0f2:	uc_dat <= 32'b10110110101001000000000001001101;
		9'h0f3:	uc_dat <= 32'b00001100100001101000000001010111;
		9'h0f4:	uc_dat <= 32'b10111100011001111000000001001111;
		9'h0f5:	uc_dat <= 32'b10100000011001110000000001001111;
		9'h0f6:	uc_dat <= 32'b00000001101001111000000000000000;
		9'h0f7:	uc_dat <= 32'b00011010101001110000000000000000;
		9'h0f8:	uc_dat <= 32'b00001100000000000000000000000000;
		9'h0f9:	uc_dat <= 32'b10111101101001111000000001001101;
		9'h0fa:	uc_dat <= 32'b10110110101001110000000001001101;
		9'h0fb:	uc_dat <= 32'b00001100100000000000000000000000;
		9'h0fc:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0fd:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0fe:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h0ff:	uc_dat <= 32'b00000100000000000000000000000000;
		9'h100:	uc_dat <= 32'b00001000000000000000100000001001;
		9'h101:	uc_dat <= 32'b00001000000000000000000000010010;
		9'h102:	uc_dat <= 32'b00001000000000000000000000101010;
		9'h103:	uc_dat <= 32'b00001000000000000000010000110011;
		9'h104:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h105:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h106:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h107:	uc_dat <= 32'b00001000000000000000010000111101;
		9'h108:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h109:	uc_dat <= 32'b00001000000000000000010000110111;
		9'h10a:	uc_dat <= 32'b00001000000000000000000000101000;
		9'h10b:	uc_dat <= 32'b00001000000000000000010000110101;
		9'h10c:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h10d:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h10e:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h10f:	uc_dat <= 32'b00001000000000000000010000111110;
		9'h110:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h111:	uc_dat <= 32'b00001000000000000000000000010010;
		9'h112:	uc_dat <= 32'b00001000000000000000000000101010;
		9'h113:	uc_dat <= 32'b00001000000000000000010000110011;
		9'h114:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h115:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h116:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h117:	uc_dat <= 32'b00001000000000000000010000111111;
		9'h118:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h119:	uc_dat <= 32'b00001000000000000000010000110111;
		9'h11a:	uc_dat <= 32'b00001000000000000000000000101000;
		9'h11b:	uc_dat <= 32'b00001000000000000000010000110101;
		9'h11c:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h11d:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h11e:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h11f:	uc_dat <= 32'b00001000000000000000100000000000;
		9'h120:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h121:	uc_dat <= 32'b00001000000000000000000000010010;
		9'h122:	uc_dat <= 32'b00001000000000000000000000100010;
		9'h123:	uc_dat <= 32'b00001000000000000000010000110011;
		9'h124:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h125:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h126:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h127:	uc_dat <= 32'b00001000000000000000010000111011;
		9'h128:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h129:	uc_dat <= 32'b00001000000000000000010000110111;
		9'h12a:	uc_dat <= 32'b00001000000000000000000000011100;
		9'h12b:	uc_dat <= 32'b00001000000000000000010000110101;
		9'h12c:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h12d:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h12e:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h12f:	uc_dat <= 32'b00001000000000000000100000000001;
		9'h130:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h131:	uc_dat <= 32'b00001000000000000000000000010010;
		9'h132:	uc_dat <= 32'b00001000000000000000000000011001;
		9'h133:	uc_dat <= 32'b00001000000000000000010000110011;
		9'h134:	uc_dat <= 32'b00001000000000000000010000101010;
		9'h135:	uc_dat <= 32'b00001000000000000000010000101111;
		9'h136:	uc_dat <= 32'b00001000000000000000000000010000;
		9'h137:	uc_dat <= 32'b00001000000000000000100000000011;
		9'h138:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h139:	uc_dat <= 32'b00001000000000000000010000110111;
		9'h13a:	uc_dat <= 32'b00001000000000000000000000010110;
		9'h13b:	uc_dat <= 32'b00001000000000000000010000110101;
		9'h13c:	uc_dat <= 32'b00001000000000000000010000101000;
		9'h13d:	uc_dat <= 32'b00001000000000000000010000101101;
		9'h13e:	uc_dat <= 32'b00001000000000000000000000001110;
		9'h13f:	uc_dat <= 32'b00001000000000000000100000000010;
		9'h140:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h141:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h142:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h143:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h144:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h145:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h146:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h147:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h148:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h149:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h14a:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h14b:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h14c:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h14d:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h14e:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h14f:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h150:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h151:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h152:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h153:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h154:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h155:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h156:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h157:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h158:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h159:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h15a:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h15b:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h15c:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h15d:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h15e:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h15f:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h160:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h161:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h162:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h163:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h164:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h165:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h166:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h167:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h168:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h169:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h16a:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h16b:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h16c:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h16d:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h16e:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h16f:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h170:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h171:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h172:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h173:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h174:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h175:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h176:	uc_dat <= 32'b00001000000000000000110000011000;
		9'h177:	uc_dat <= 32'b00001000000000000000000000001100;
		9'h178:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h179:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h17a:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h17b:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h17c:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h17d:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h17e:	uc_dat <= 32'b00001000000000000000000000001010;
		9'h17f:	uc_dat <= 32'b00001000000000000000000000001000;
		9'h180:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h181:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h182:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h183:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h184:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h185:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h186:	uc_dat <= 32'b00001000000000000000010000011000;
		9'h187:	uc_dat <= 32'b00001000000000000000010000001000;
		9'h188:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h189:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h18a:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h18b:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h18c:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h18d:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h18e:	uc_dat <= 32'b00001000000000000000010000011010;
		9'h18f:	uc_dat <= 32'b00001000000000000000010000001010;
		9'h190:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h191:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h192:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h193:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h194:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h195:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h196:	uc_dat <= 32'b00001000000000000000010000011100;
		9'h197:	uc_dat <= 32'b00001000000000000000010000001100;
		9'h198:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h199:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h19a:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h19b:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h19c:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h19d:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h19e:	uc_dat <= 32'b00001000000000000000010000011110;
		9'h19f:	uc_dat <= 32'b00001000000000000000010000001110;
		9'h1a0:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a1:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a2:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a3:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a4:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a5:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a6:	uc_dat <= 32'b00001000000000000000010000100000;
		9'h1a7:	uc_dat <= 32'b00001000000000000000010000010000;
		9'h1a8:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1a9:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1aa:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1ab:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1ac:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1ad:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1ae:	uc_dat <= 32'b00001000000000000000010000100010;
		9'h1af:	uc_dat <= 32'b00001000000000000000010000010010;
		9'h1b0:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b1:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b2:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b3:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b4:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b5:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b6:	uc_dat <= 32'b00001000000000000000010000100100;
		9'h1b7:	uc_dat <= 32'b00001000000000000000010000010100;
		9'h1b8:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1b9:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1ba:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1bb:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1bc:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1bd:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1be:	uc_dat <= 32'b00001000000000000000010000100110;
		9'h1bf:	uc_dat <= 32'b00001000000000000000010000010110;
		9'h1c0:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1c1:	uc_dat <= 32'b00001000000000000000100000110000;
		9'h1c2:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1c3:	uc_dat <= 32'b00001000000000000000100000000100;
		9'h1c4:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1c5:	uc_dat <= 32'b00001000000000000000100000100110;
		9'h1c6:	uc_dat <= 32'b00001000000000000000000000111000;
		9'h1c7:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1c8:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1c9:	uc_dat <= 32'b00001000000000000000100000010111;
		9'h1ca:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1cb:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h1cc:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1cd:	uc_dat <= 32'b00001000000000000000100000001100;
		9'h1ce:	uc_dat <= 32'b00001000000000000000000000111010;
		9'h1cf:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1d0:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1d1:	uc_dat <= 32'b00001000000000000000100000110000;
		9'h1d2:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1d3:	uc_dat <= 32'b00001000000000000000110000010001;
		9'h1d4:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1d5:	uc_dat <= 32'b00001000000000000000100000100110;
		9'h1d6:	uc_dat <= 32'b00001000000000000000000000111100;
		9'h1d7:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1d8:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1d9:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h1da:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1db:	uc_dat <= 32'b00001000000000000000110000001010;
		9'h1dc:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1dd:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h1de:	uc_dat <= 32'b00001000000000000000000000111110;
		9'h1df:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1e0:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1e1:	uc_dat <= 32'b00001000000000000000100000110000;
		9'h1e2:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1e3:	uc_dat <= 32'b00001000000000000000100000111000;
		9'h1e4:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1e5:	uc_dat <= 32'b00001000000000000000100000100110;
		9'h1e6:	uc_dat <= 32'b00001000000000000000010000000000;
		9'h1e7:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1e8:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1e9:	uc_dat <= 32'b00001000000000000000100000100010;
		9'h1ea:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1eb:	uc_dat <= 32'b00001000000000000000000000101100;
		9'h1ec:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1ed:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h1ee:	uc_dat <= 32'b00001000000000000000010000000010;
		9'h1ef:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1f0:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1f1:	uc_dat <= 32'b00001000000000000000100000110100;
		9'h1f2:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1f3:	uc_dat <= 32'b00001000000000000000110000001001;
		9'h1f4:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1f5:	uc_dat <= 32'b00001000000000000000100000101011;
		9'h1f6:	uc_dat <= 32'b00001000000000000000010000000100;
		9'h1f7:	uc_dat <= 32'b00001000000000000000100000011100;
		9'h1f8:	uc_dat <= 32'b00001000000000000000100000011011;
		9'h1f9:	uc_dat <= 32'b00001000000000000000110000000100;
		9'h1fa:	uc_dat <= 32'b00001000000000000000100000001010;
		9'h1fb:	uc_dat <= 32'b00001000000000000000110000001000;
		9'h1fc:	uc_dat <= 32'b00001000000000000000100000010101;
		9'h1fd:	uc_dat <= 32'b00001000000000000000000000000000;
		9'h1fe:	uc_dat <= 32'b00001000000000000000010000000110;
		9'h1ff:	uc_dat <= 32'b00001000000000000000100000011100;
	endcase 
end 
// end of microcode ROM

endmodule 
//---------------------------------------------------------------------------------------
