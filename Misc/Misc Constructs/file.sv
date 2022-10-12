module tb;

  int fd;
  string str1,str2;

   initial begin

//open the file in the write mode
     fd = $fopen ("hihihi.sv", "w+");

//displays the contents into the file
      $fdisplay(fd,"teams");
    
      $fdisplay(fd,"c");

      $rewind(fd);

//close the file
      $fclose(fd);

//open the file in read mode
      fd = $fopen("hihihi.sv","r");
       $feof(fd);
    fd =$fopen("hihihi.sv","r");
    
    $fgets(str1,fd);
    $display("line:%0s",str1);
    
    $fclose(fd);

    end

endmodule
