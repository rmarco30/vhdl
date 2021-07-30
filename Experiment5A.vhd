entity Experiment5A is
    port (A, B, C : in bit;
          F       : out bit);
end entity;

architecture sim of Experiment5A is
    signal An, Bn, Cn : bit;  -- declare signals
    signal m0, m2, m6 : bit;
        
    component INV1
        port (A : in bit;
              F : out bit);
    end component;    
    component AND3
        port (A, B, C : in bit;
              F       : out bit);
    end component;
        component OR3
        port (A, B, C : in bit;
              F       : out bit);
    end component;
    begin
    
    U1 : INV1 port map (A => A, F => An);
    U2 : INV1 port map (A => B, F => Bn);
    U3 : INV1 port map (A => C, F => Cn);
    U4 : AND3 port map (A => An, B => Bn, C => Cn, F => m0);
    U5 : AND3 port map (A => An, B => B,  C => Cn, F => m2);
    U6 : AND3 port map (A => A,  B => B,  C => Cn, F => m6);
    U7 : OR3  port map (A => m0, B => m2, C => m6, F => F);
    
end architecture;   
