entity Laboratory2A is
end entity;
 
architecture sim of Laboratory2A is
begin
    -- variable is commonly declared in the head of the process between the 'process is'
    -- keyword and the 'begin' keyword.
    process is
        -- this line create a variable named i that is an integer and initialize to 0.
        variable i : integer := 0;
    begin
        -- The while-'oop will continue to iterate over the enclosed code as long 
        -- as the expression it tests for evaluates to true. 
        -- Therefore, the while-loop is suitable for situations where you don?t know exactly 
        -- how many iteration will be needed in advance.
        
        -- The syntax of the while-loop is:
        -- while <condition> loop
        -- <body> 
        -- end loop;
        -- The <condition> is a boolean true or false. 
        -- It can also be an expression which evaluates to true or false. 
        -- The condition is evaluated before every iteration of the loop, 
        -- and the loop will continue only if the condition is true.
        -- Example expression which is true if i is less than 10: i < 10
        -- Example expression which is true if i is not 10: i /= 10
        -- Example expression which is true if i is greater than or equal to 0, 
        -- and less than 2^8=256: i >= 0 and i < 2**8;
        
        -- Relational Operators
        -- ************************************
        -- * Operator * Description           *
        -- ************************************
        -- * =        * Equal                 *
        -- * /=       * Not equal             *
        -- * <        * Less than             *
        -- * <=       * Less than or equal    *
        -- * >        * Greater than          *
        -- * >=       * Greater than or equal *
        -- ************************************
        
        -- Logical Operators
        -- ********************************************************************
        -- * Operator * Description                                           *
        -- ********************************************************************
        -- * not a    * true if a is false and vice versa                     *
        -- * a and b  * true if a and b is true otherwise false               *          
        -- * a or b   * true if either a or b is true otherwise false         *        
        -- * a nand b * true if either a or b is false otherwise false        *    
        -- * a nor b  * true if both a and b are false otherwise false        *       
        -- * a xor b  * true if exactly one of a or b is true otherwise false *
        -- * a xnor b * true if a and b are equal otherwise false             *
        -- ********************************************************************
        while i < 10 loop
            report "i=" & integer'image(i);
            i := i + 2;
        end loop;
        wait;
 
    end process;
 
end architecture;

