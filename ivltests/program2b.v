// This demonstrates some errors.
program main;

   int foo;
   int bar;

   initial begin
      bar = 1;
      for (foo = 1 ; foo < 10 ; ++foo) begin
	 bar <= bar * foo; // This should be an error!
	 #1 $display("foo = %d, bar=%d", foo, bar);
      end
   end

   final begin
      if (foo !== 10 || bar !== 362_880) begin
	 $display("FAILED -- foo=%d", foo);
      end else begin
	 $display("FAILED -- should not have complied!");
      end
   end

endprogram // main
