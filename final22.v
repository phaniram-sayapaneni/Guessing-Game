`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:03 06/16/2016 
// Design Name: 
// Module Name:    final22 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module final22(clk, cathodes, anodes, rst,btn, sw,sw4, sw5, final_led,led_test, led_x);
 
 
 /*input sww1;
 input sww2;
 input sww4;*/
 ///////////////output led0;
 reg led0;
 /*output ld1;
  output ld2;
   output ld3;
	output ld4;	
	
	reg ld1;
	reg ld2;
	reg ld3;
	reg ld4;
	*/

output final_led;
reg final_led;	
reg sw5_flg;

 integer state0,state1,state2; 
 reg [3:0] fg1;
 
 input [3:0] btn;
 input [3:0] sw;
 reg [7:0] mem0;
  reg [7:0] mem1;
   reg [7:0] mem2;
	 reg [7:0] mem3;
	  integer dig;
	  reg [6:0] sw_state1;
	  reg [6:0] sw_state2;
	  reg [6:0] sw_state3;
	  reg [6:0] sw_state4;
	  reg [3:0] fg;
	  reg [3:0] fg2;////////////////////////////
	  
	  input clk, rst;
 output [6:0] cathodes;
 //output led;
 output [3:0] anodes;
 reg [6:0] cathodes;
 reg [3:0] anodes;
 //reg [3:0] dig;
 reg led;
 reg slow_clock;
 integer count1;
 
 
 reg [3:0] lock_key0;
 reg [3:0] lock_key1;
 reg [3:0] lock_key2;
 reg [3:0] lock_key3;
 
 reg [3:0] key0;
 reg [3:0] key1;
 reg [3:0] key2;
 reg [3:0] key3;
 
 reg [3:0] guess0;
 reg [3:0] guess1;
 reg [3:0] guess2;
 reg [3:0] guess3;
 reg nomore_pl1_fg;

 input sw4, sw5;
 
 reg swag;
 reg swagger; 
 reg rgv;///
 
 
 integer num_of_guesses;
 integer num;
 integer mem_code;
 integer state;
 integer state_x;
 
 integer flag1;
 integer flag2;
 reg [7:0] mem_0;
 reg [7:0] mem_1;
 reg [7:0] mem_2;
 reg [7:0] mem_3;
 integer c1;
 
  reg [7:0] mem00;
 reg [7:0] mem11;
 reg [7:0] mem22;
 reg [7:0] mem33;
 
 reg rst1;
  
 
 reg [15:0] swh_state1;
 reg [15:0] swh_state2;
 reg [15:0] swh_state3;
 reg [15:0] swh_state4;
 
 reg [15:0] swh1;
 reg [15:0] swh2;//
 reg [15:0] swh3;
 reg [15:0] swh4;
 
 
reg [15:0] entered_num;
reg [15:0] original_num;
reg [15:0] tap_num;
 
reg btn_flg2;
reg btn_flg;
 
 output [3:0] led_test;
 reg [3:0] led_test;
 
 
reg pos_flag;
reg neg_flag;
  
reg dead_slow_clock;
 
integer count_dead; 
 
reg [7:0] happy;

output [7:0] led_x;
reg [7:0] led_x;
 
integer sc;// silly count added
integer	fc; 

integer kfc;////integer
integer y; //// just like that
//reg [3:0] kfc; 
 
 
 integer kount;
 integer kount_x;
 integer kount4;
 
 ///////////////
 reg [7:0] mem00_x;
 reg [7:0] mem11_x;
 reg [7:0] mem22_x;
 reg [7:0] mem33_x;
 
 
 
 
 
 
 
 
 
 /////////
 always @(posedge btn[0])
  begin
  
	case(sw)
 
 4'b 1111: sw_state1= 7'b 0111000; 
 4'b 1110: sw_state1= 7'b 0110000;
 4'b 1101: sw_state1= 7'b 0000001;
 4'b 1100: sw_state1= 7'b 0110001;
 4'b 1011: sw_state1= 7'b 0000000;
 4'b 1010: sw_state1= 7'b 0001000;
 4'b 1001: sw_state1= 7'b 0001100;
 4'b 1000: sw_state1= 7'b 0000000;
 4'b 0111: sw_state1= 7'b 0001111;
 4'b 0110: sw_state1= 7'b 0100000;
 4'b 0101: sw_state1= 7'b 0100100;
 4'b 0100: sw_state1= 7'b 1001100;
 4'b 0011: sw_state1= 7'b 0000110;
 4'b 0010: sw_state1= 7'b 0010010;
 4'b 0001: sw_state1= 7'b 1001111;
 4'b 0000: sw_state1= 7'b 0000001;
 endcase
   if(state_x==4)
	begin
   
	 mem00_x= sw_state1; /////////////// mem0 = sw_state1; changed
	end
	else 
	 begin 
	
	 mem0 = sw_state1;
	 end
	//fg[0]=1;
   if(btn[0]==1)
	begin
	fg[0]=1;
	end
	fg2[0]=0;
	lock_key0 =sw;
	//////////
	if(sw4==1)
	begin
	fg2[0]=1;
	end
	
	/////////////////
	
	case(sw)
 
 4'b 1111: swh_state1= 16'b 0000000000001111; 
 4'b 1110: swh_state1= 16'b 0000000000001110;
 4'b 1101: swh_state1= 16'b 0000000000001101;
 4'b 1100: swh_state1= 16'b 0000000000001100;
 4'b 1011: swh_state1= 16'b 0000000000001011;
 4'b 1010: swh_state1= 16'b 0000000000001010;
 4'b 1001: swh_state1= 16'b 0000000000001001;
 4'b 1000: swh_state1= 16'b 0000000000001000;
 4'b 0111: swh_state1= 16'b 0000000000000111;
 4'b 0110: swh_state1= 16'b 0000000000000110;
 4'b 0101: swh_state1= 16'b 0000000000000101;
 4'b 0100: swh_state1= 16'b 0000000000000100;
 4'b 0011: swh_state1= 16'b 0000000000000011;
 4'b 0010: swh_state1= 16'b 0000000000000010;
 4'b 0001: swh_state1= 16'b 0000000000000001;
 4'b 0000: swh_state1= 16'b 0000000000000000;
 endcase
 swh1=swh_state1;
	////////////////////////////////////////////////
	///////////////////////////////////////////////////////just to flush
 
  end
  
  always @(posedge btn[1])
  begin
  
  	case(sw)
 
 4'b 1111: sw_state2= 7'b 0111000; 
 4'b 1110: sw_state2= 7'b 0110000;
 4'b 1101: sw_state2= 7'b 0000001;
 4'b 1100: sw_state2= 7'b 0110001;
 4'b 1011: sw_state2= 7'b 0000000;
 4'b 1010: sw_state2= 7'b 0001000;
 4'b 1001: sw_state2= 7'b 0001100;
 4'b 1000: sw_state2= 7'b 0000000;
 4'b 0111: sw_state2= 7'b 0001111;
 4'b 0110: sw_state2= 7'b 0100000;
 4'b 0101: sw_state2= 7'b 0100100;
 4'b 0100: sw_state2= 7'b 1001100;
 4'b 0011: sw_state2= 7'b 0000110;
 4'b 0010: sw_state2= 7'b 0010010;
 4'b 0001: sw_state2= 7'b 1001111;
 4'b 0000: sw_state2= 7'b 0000001;
 endcase
   
	//mem1 = sw_state2;
	if(state_x==4)
	begin
               /////////////// mem0 = sw_state1; changed
	mem11_x= sw_state2;
	end
	else 
	 begin 
	 mem1 = sw_state2;
	 end
	/////////////////////////////////////
	
	//fg[1] = 1;
	if(btn[1]==1)
	begin
	fg[1]=1;
	end
	fg2[1]=0;
	lock_key1 =sw;
	
	//////////
	if(sw4==1)
	begin
	fg2[1]=1;
	end
	
	/////////////////

	
	case(sw)
 
 4'b 1111: swh_state2= 16'b 0000000011110000; 
 4'b 1110: swh_state2= 16'b 0000000011100000;
 4'b 1101: swh_state2= 16'b 0000000011010000;
 4'b 1100: swh_state2= 16'b 0000000011000000;
 4'b 1011: swh_state2= 16'b 0000000010110000;
 4'b 1010: swh_state2= 16'b 0000000010100000;
 4'b 1001: swh_state2= 16'b 0000000010010000;
 4'b 1000: swh_state2= 16'b 0000000010000000;
 4'b 0111: swh_state2= 16'b 0000000001110000;
 4'b 0110: swh_state2= 16'b 0000000001100000;
 4'b 0101: swh_state2= 16'b 0000000001010000;
 4'b 0100: swh_state2= 16'b 0000000001000000;
 4'b 0011: swh_state2= 16'b 0000000000110000;
 4'b 0010: swh_state2= 16'b 0000000000100000;
 4'b 0001: swh_state2= 16'b 0000000000010000;
 4'b 0000: swh_state2= 16'b 0000000000000000;
 endcase
	 swh2=swh_state2;
	/////////////////////////////////////////////
	
   
	
  end
  
  always @(posedge btn[2])
  begin
  	case(sw)
 
 4'b 1111: sw_state3= 7'b 0111000; 
 4'b 1110: sw_state3= 7'b 0110000;
 4'b 1101: sw_state3= 7'b 0000001;
 4'b 1100: sw_state3= 7'b 0110001;
 4'b 1011: sw_state3= 7'b 0000000;
 4'b 1010: sw_state3= 7'b 0001000;
 4'b 1001: sw_state3= 7'b 0001100;
 4'b 1000: sw_state3= 7'b 0000000;
 4'b 0111: sw_state3= 7'b 0001111;
 4'b 0110: sw_state3= 7'b 0100000;
 4'b 0101: sw_state3= 7'b 0100100;
 4'b 0100: sw_state3= 7'b 1001100;
 4'b 0011: sw_state3= 7'b 0000110;
 4'b 0010: sw_state3= 7'b 0010010;
 4'b 0001: sw_state3= 7'b 1001111;
 4'b 0000: sw_state3= 7'b 0000001;
 endcase
   //mem2 = sw_state3;
	if(state_x==4)
	begin
   /////////////// mem0 = sw_state1; changed
	mem22_x= sw_state3;
	end
	else 
	 begin 
	 
	 mem2 = sw_state3;
	 end
	/////////////////////////////////
	//fg[2]=1;
	if(btn[2]==1)
	begin
	fg[2]=1;
	end
	fg2[2]=0;
	lock_key2 =sw;
	
		//////////
		if(sw4==1)
	begin
	fg2[2]=1;
	end
	
	/////////////////
	
	case(sw)
 
 4'b 1111: swh_state3= 16'b 0000111100000000; 
 4'b 1110: swh_state3= 16'b 0000111000000000;
 4'b 1101: swh_state3= 16'b 0000110100000000;
 4'b 1100: swh_state3= 16'b 0000110000000000;
 4'b 1011: swh_state3= 16'b 0000101100000000;
 4'b 1010: swh_state3= 16'b 0000101000000000;
 4'b 1001: swh_state3= 16'b 0000100100000000;
 4'b 1000: swh_state3= 16'b 0000100000000000;
 4'b 0111: swh_state3= 16'b 0000011100000000;
 4'b 0110: swh_state3= 16'b 0000011000000000;
 4'b 0101: swh_state3= 16'b 0000010100000000;
 4'b 0100: swh_state3= 16'b 0000010000000000;
 4'b 0011: swh_state3= 16'b 0000001100000000;
 4'b 0010: swh_state3= 16'b 0000001000000000;
 4'b 0001: swh_state3= 16'b 0000000100000000;
 4'b 0000: swh_state3= 16'b 0000000000000000;
 endcase
  swh3=swh_state3;
	/////////////////////////////////////////////
   
  end
  
  always @(posedge btn[3])
  begin
  	case(sw)
 
 4'b 1111: sw_state4= 7'b 0111000; 
 4'b 1110: sw_state4= 7'b 0110000;
 4'b 1101: sw_state4= 7'b 0000001;
 4'b 1100: sw_state4= 7'b 0110001;
 4'b 1011: sw_state4= 7'b 0000000;
 4'b 1010: sw_state4= 7'b 0001000;
 4'b 1001: sw_state4= 7'b 0001100;
 4'b 1000: sw_state4= 7'b 0000000;
 4'b 0111: sw_state4= 7'b 0001111;
 4'b 0110: sw_state4= 7'b 0100000;
 4'b 0101: sw_state4= 7'b 0100100;
 4'b 0100: sw_state4= 7'b 1001100;
 4'b 0011: sw_state4= 7'b 0000110;
 4'b 0010: sw_state4= 7'b 0010010;
 4'b 0001: sw_state4= 7'b 1001111;
 4'b 0000: sw_state4= 7'b 0000001;
 endcase
   //mem3 = sw_state4;
	if(state_x==4)
	begin
   /////////////// mem0 = sw_state1; changed
	mem33_x= sw_state4;
	end
	else 
	 begin 
	 mem3 = sw_state4;
	 end
	////////////////////////////////////
	if(btn[3]==1)
	begin
	fg[3]=1;
	end/////////////////////if added
	fg2[3]=0;
	lock_key3 =sw;
/////////
	if(sw4==1)
	begin
	fg2[3]=1;
	end
	
	/////////////////	
	case(sw)
 
 4'b 1111: swh_state4= 16'b 1111000000000000; 
 4'b 1110: swh_state4= 16'b 1110000000000000;
 4'b 1101: swh_state4= 16'b 1101000000000000;
 4'b 1100: swh_state4= 16'b 1100000000000000;
 4'b 1011: swh_state4= 16'b 1011000000000000;
 4'b 1010: swh_state4= 16'b 1010000000000000;
 4'b 1001: swh_state4= 16'b 1001000000000000;
 4'b 1000: swh_state4= 16'b 1000000000000000;
 4'b 0111: swh_state4= 16'b 0111000000000000;
 4'b 0110: swh_state4= 16'b 0110000000000000;
 4'b 0101: swh_state4= 16'b 0101000000000000;
 4'b 0100: swh_state4= 16'b 0100000000000000;
 4'b 0011: swh_state4= 16'b 0011000000000000;
 4'b 0010: swh_state4= 16'b 0010000000000000;
 4'b 0001: swh_state4= 16'b 0001000000000000;
 4'b 0000: swh_state4= 16'b 0000000000000000;
 endcase
	 swh4=swh_state4;
	///////////////////////////////////////////// 
   
 end
 /////////////////////////////memory done 
/* always @(posedge clk)
 begin
 case(sw)
 
 4'b 1111: sw_state= 7'b 0111000; 
 4'b 1110: sw_state= 7'b 0110000;
 4'b 1101: sw_state= 7'b 0000001;
 4'b 1100: sw_state= 7'b 0110001;
 4'b 1011: sw_state= 7'b 0000000;
 4'b 1010: sw_state= 7'b 0001000;
 4'b 1001: sw_state= 7'b 0001100;
 4'b 1000: sw_state= 7'b 0000000;
 4'b 0111: sw_state= 7'b 0001111;
 4'b 0110: sw_state= 7'b 0100000;
 4'b 0101: sw_state= 7'b 0100100;
 4'b 0100: sw_state= 7'b 1001100;
 4'b 0011: sw_state= 7'b 0000110;
 4'b 0010: sw_state= 7'b 0010010;
 4'b 0001: sw_state= 7'b 1001111;
 4'b 0000: sw_state= 7'b 0000001;
 endcase
 end
 */
 ///////////////////////////////////////////////////////////////////////////////////////
/* always @(posedge sw4)
	   begin 		
		flag1=1;//////pl2's chance;
		key0 =lock_key0;
		key1 =lock_key1;
		key2 =lock_key2;
		key3 =lock_key3;
		
		mem_0 = 7'b 0011000;
	   mem_1 = 7'b 1110001;
	   mem_2 = 7'b 1111111;
	   mem_3 = 7'b 0010010;
		
	 ////module1;
	    
		end
      */ 
		/*always @(posedge sw5) ///// another test
		begin
		case(sw5)
		0:rgv=0;
		1:rgv=1;
		endcase
		end*/
		

      always @(sw5)
		begin
		sw5_flg <= ~(sw5_flg);/// latch it as guess;
		//guess0 = lock_key0;
		//guess1 = lock_key1;
		//guess2 = lock_key2;
		//guess3 = lock_key3;
		//num_of_guesses= num_of_guesses+1;
		//y<=y+sw5;///////////////////////////////////// why again?
		end
		
		
		 
		////////////////////////////////////////////test_del_later
		
	  	
	always @(posedge clk)	
  create_dead_slow_clock(clk, dead_slow_clock); ////////////////////dead slow clock on		
  
  always @(posedge dead_slow_clock)
   begin
	if(state_x == 7)
	begin
	   led_x[0]= ~led_x[0];
		led_x[1]= ~led_x[1];
		led_x[2]= ~led_x[2];
		led_x[3]= ~led_x[3];
		led_x[4]= ~led_x[4];
		led_x[5]= ~led_x[5];
		led_x[6]= ~led_x[6];
		led_x[7]= ~led_x[7];
		     
	end
   end	
  

 always @(posedge clk)
 create_slow_clock(clk, slow_clock);
 
 always @(posedge slow_clock)
 begin
  ///////////////////////////////////////////////////////////////////////////////////////////////del
    //kount3= kount3+1;
	 
	 kount4=kount4+1;
    rst1=1;
	 kfc=y;
	 kount=kount+1;
    //pos=sw_pos;

    mem00=mem0;
    mem11=mem1;
    mem22=mem2;
    mem33=mem3;
	//////////////////////back again	 
    led=1;
    fg1[0]=fg[0];
	 fg1[1]=fg[1];
	 fg1[2]= fg[2];
	 fg1[3]= fg[3];///////////////flags expanded
	 final_led=1;
	 tap_num=swh1 | swh2 | swh3 | swh4;
	 
	 
	 
	 
	 
	 if(sw5==0)
	   begin
		  pos_flag=0;
		  //neg_flag=0;
		 end 
	 else if(sw5 == 1)
       begin
         pos_flag=1;		 
	      neg_flag=1;
        end
      
      if (pos_flag == 0 && neg_flag ==1)
		  begin
		    pos_flag=0;
			 neg_flag=0;
			 swagger=1;
		  end
		 else if(pos_flag == 1 && neg_flag ==1)
         begin
         swagger=1;
			end  			
      else       		
	     begin
		  swagger=0;
		  end
	 
	 
	 
	 
	 
	 //////unnncessary but still
	if(kfc>=0 && kfc<1)
	 begin
	 kfc=0;
	 end
	 else if(kfc>=1 && kfc<2)
	 begin
	 kfc=1;
	 end
	 else if(kfc>=2 && kfc<3)
	 begin
	 kfc=2;
	 end
	 else if(kfc>=3 && kfc<4)
	 begin
	 kfc=3;
	 end
	 else if(kfc>=4 && kfc<5)
	 begin
	 kfc=4;
	 end
	 else if(kfc>=5 && kfc<6)
	 begin
	 kfc=5;
	 end
	 else if(kfc>=6 && kfc<7)
	 begin
	 kfc=6;
	 end
	 else if(kfc>=7 && kfc<8)
	 begin
	 kfc=7;
	 end
	 else if(kfc>=8 && kfc<9)
	 begin
	 kfc=8;
	 end
	 else if(kfc>=9 && kfc<10)
	 begin
	 kfc=9;
	 end
	 else if(kfc>=10 && kfc<11)
	 begin
	 kfc=10;
	 end
	 else if(kfc>=11 && kfc<12)
	 begin
	 kfc=11;
	 end
	 else if(kfc>=12 && kfc<13)
	 begin
	 kfc=12;
	 end
	 else if(kfc>13) /////////test_again;
	 begin
	 kfc=13;
	 end
	 else if(kfc<0)
	 begin
	 kfc=14;
	 end
    else
    begin
	 kfc=1;
	 end
	 ///////////////////////////////
	 
	 
	 
	 
	 //if(pos==1 && )
  //end 
	 
/*    if(sw4==1)///player 2 online
      begin
		if(nomore_pl1_fg == 0)
		 begin
		  if(c1<=500000)
		    begin 
	        mem_0= 7'b 0011000;
		     mem_1= 7'b 1110001;
		     mem_2= 7'b 1111111;////pl2
		     mem_3= 7'b 0010010;*/	     
			  
         /*  
		   if(rst==1 && btn_flg == 0)
			  begin
			  mem_0= 7'b 0011000;
		     mem_1= 7'b 1110001;  ///pl1
		     mem_2= 7'b 1111111;
		     mem_3= 7'b 1001111;
			  end
			
			else if(rest ==1 && btn_flg!=0)  
			  begin
           mem_0=mem00;
           mem_1=mem11;
           mem_2=mem22;
           mem_3=mem33; 			  
			  end
			  
			 else if(sw4==1 && btn ) 
			  
			  mem_0= 7'b 0010010;
		     mem_1= 7'b 1111111;
		     mem_2= 7'b 1110001; //2 lo
		     mem_3= 7'b 0000001;
           
           mem_0= 7'b 0010010;
		     mem_1= 7'b 1111111;
		     mem_2= 7'b 1001000; // 2 hi 
		     mem_3= 7'b 11110001;			  
			  
			  
			  
		
			  */
if(state_x==7)
begin 			  
state_x=7;
rst1=0;
end

else
begin  			  
			  //algorithm starts here:
			  if(rst1 ==1) /// state machine starts here;////rst changed to rst1
			  begin 
			    btn_flg = (fg1[0] | fg1[1] | fg1[2] | fg1[3]);
				 btn_flg2 = (fg2[0] | fg2[1] | fg2[2] | fg2[3]);
				 swag=sw5_flg;//////
				 ///////////////////////////////////////swagger = swagger^(swag);
			   if(kount < 350)///changed from equal to less than 
				 begin
				 state_x=1;
				 end	  
				else if(btn_flg>0 && sw4 == 0)
				begin
				state_x=2;
				original_num=tap_num;
				end
			   /////////////////////
				else if(sw4 == 1 && btn_flg2 == 0 && swagger ==0)////swagger added
			   begin
			   state_x=3;
				//original num=tap_num;
				end
				else if(sw4 == 1 && btn_flg2 ==1 && swagger == 0)//// swagger added
				begin
				state_x= 4;
				
				end
				////////////////////////////////
				else if (sw4 == 1 && swagger==1)
				begin
				entered_num = swh1 | swh2 | swh3 | swh4; 
				count1=count1+1;
				
				if(count1==1)
				  begin
				    kount_x=kount_x+1;
				  end	 
				else
				 begin 
			     	if(kount4==count1)
				     begin
				       ///same thing repeating
			      	end
				    else if(kount4!= count1)
				      begin
				       kount_x=kount_x+1;
				      end
				 end
				
				 
				
				  if(original_num == entered_num)
              begin
				  state_x=7;
				  //final_led=1;
				  //
				  case(kount_x)////////////////////////////contgs for led  display  //// count1 changed to final_count
				   
 
				  0: happy= 7'b 0000001;
				  1: happy= 7'b 1001111; 
				  2: happy= 7'b 0010010;
				  3: happy= 7'b 0000110;
				  4: happy= 7'b 1001100;
				  5: happy= 7'b 0100100;
				  6: happy= 7'b 0100000;
				  7: happy= 7'b 0001111;
				  8: happy= 7'b 0000000;
				  9: happy= 7'b 0001100;
				 10: happy= 7'b 0001000;           ///10 
				 11: happy= 7'b 0000000;           //11    
				 12: happy= 7'b 0110001;
				 13: happy= 7'b 0000001;
				 14: happy= 7'b 0110000;
				 15: happy= 7'b 0111000; 
				  endcase
				  
				  
				  end
				  
				  
              else if(original_num < entered_num) //////////////////////////made change here for too low too high
              begin
				  state_x=5;
				  end
				  
              else			  
				  begin
				  state_x=6;
				  end
				  count1=kount4;//////////kill_count
				end
			  
			  
			  end
			  else
			  begin
			  state_x=8;
			  end
		end		
				
				
				
				
				case(state_x)
				1: begin
				     mem_0= 7'b 0011000;
		           mem_1= 7'b 1110001;  ///pl1
		           mem_2= 7'b 1111111;
		           mem_3= 7'b 1001111;
					  led_test[3:0] = 4'b 0001;/////////led test
				   end ///display pl1;
				2: begin
				    mem_0=mem00;
                mem_1=mem11;
                mem_2=mem22;
                mem_3=mem33;
					 led_test[3:0] = 4'b 0010;///////////led test
				   end  //do strobing;
				3: begin
				   mem_0= 7'b 0011000;
		         mem_1= 7'b 1110001;
		         mem_2= 7'b 1111111;////pl2
		         mem_3= 7'b 0010010;
					 led_test[3:0] = 4'b 0011;///////////led test
					
					end//display pl2;
				4: begin
				   mem_0=mem00_x;
               mem_1=mem11_x;
               mem_2=mem22_x;
               mem_3=mem33_x;
					 led_test[3:0] = 4'b 0100;///////////led test
				   end  //do strobing;
				5: begin
				   mem_0= 7'b 0010010;
		         mem_1= 7'b 1111111;
		         mem_2= 7'b 1001000; // 2 hi 
		         mem_3= 7'b 1111001;
		            led_test[3:0] = 4'b 0101;///////////led test			
				   end ///latch it as guess and diplay it as  2 high;
				6: begin
				   mem_0= 7'b 0010010;
		         mem_1= 7'b 1111111;
		         mem_2= 7'b 1110001; //2 lo
		         mem_3= 7'b 0000001;
					 led_test[3:0] = 4'b 0110;///////////led test
					end////////////latch it as guess and display it as 2 low;
				7: begin
				   led=1;
					 mem_0 = 7'b 1111111;
					 mem_1 = 7'b 1111111;
					 mem_2 = 7'b 1111111;///////////////////////////////number counts added:
					 mem_3 = happy;
					 led_test[3:0] = 4'b 0111;///////////led test
					end
				    /// display the counts of guess or atleast blink the leds;  
				8: begin  
				     mem_0= 7'b 0011000;
		           mem_1= 7'b 1110001;  ///pl1
		           mem_2= 7'b 1111111;
		           mem_3= 7'b 1001111; 
					   led_test[3:0] = 4'b 1000;///////////led test
	             end			
			    	 /////nothing state
				
				endcase
				
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  	   
 
 
   
 case (anodes)
 4'b 0111: anodes=4'b 1011;
 4'b 1011: anodes=4'b 1101;
 4'b 1101: anodes=4'b 1110;
 4'b 1110: anodes=4'b 0111;
 4'b 1111: anodes=4'b 0111;
  default: anodes=1111;
 endcase
 case (anodes)
 4'b 0111: dig=4;
 4'b 1011: dig=3;
 4'b 1101: dig=2;
 4'b 1110: dig=1;
 endcase
 /*cathodes=calc_cathode_value(dig);*/
  case (dig)
 1: cathodes = mem_0;
 2: cathodes = mem_1;
 3: cathodes = mem_2;
 4: cathodes = mem_3;
 endcase
 
 end
 

 /*function [6:0] calc_cathode_value;
 input  dig;
 begin*/
/* case (dig)
 1: calc_cathode_value = mem0;
 2: calc_cathode_value = mem1;
 3: calc_cathode_value = mem2;
 4: calc_cathode_value = mem3;
*/ //endcase
 //end
 //endfunction 
 //////////////////////////////////////////////////////////////////strobing done
 /*always @(posedge clk)
 begin
 ld1=sww1;
 ld2=sww2;
 ld4=rst;
 ld3=sww4;
 end*/
 
 
 
 task create_slow_clock;
 input clock;
 inout slow_clock;
 integer count;
 begin
 if (count > 250000)
 begin
 count=0;
 slow_clock = ~slow_clock;
 end
 count = count+1;
 end

 endtask
 
 
 task create_dead_slow_clock;
 input clock;
 inout dead_slow_clock;
 integer count_dead;
 begin
 if (count_dead >25000000)
 begin
 count_dead=0;
 dead_slow_clock = ~dead_slow_clock;
 end
 count_dead = count_dead+1;
 end

 endtask
 
 
 
endmodule
 
  
  
	