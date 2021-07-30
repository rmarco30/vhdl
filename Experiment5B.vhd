entity Experiment5B is
    port (A, B, C : in bit;
          F       : out bit);
end entity;

architecture sim of Experiment5B is
    signal An, Bn, Cn : bit; 
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
    
    U1 : INV1 port map (A, An);
    U2 : INV1 port map (B, Bn);
    U3 : INV1 port map (C, Cn);    
    U4 : AND3 port map (An, Bn, Cn, m0);
    U5 : AND3 port map (An, B,  Cn, m2);
    U6 : AND3 port map (A,  B,  Cn, m6);
    U7 : OR3  port map (m0, m2, m6, F);

end architecture;
