module updown_counter_tb;
    reg Clk;
    reg reset;
    reg UpOrDown;
    wire [5:0] Count;

    
updown_counter uut (.Clk(Clk),.reset(reset),.UpOrDown(UpOrDown),.Count(Count));

    initial Clk = 0;
    always #5 Clk = ~Clk;
    
    initial begin
        
        reset = 0;
        UpOrDown = 0;
        #300;
        UpOrDown = 1;
      #300;
        reset = 1;
        UpOrDown = 0;
        #100;
        reset = 0;  
    end
      
endmodule