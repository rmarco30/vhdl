entity Laboratory5 is
    port (A, B, C           : in bit;
          Fa, Fb, Fc,
          Fd, Fe, Ff, Fg    : out bit);
end entity;

architecture sim of Laboratory5 is
    signal An, Bn, Cn : bit;       -- INV1 signals

    signal and_1, and_2, and_3,    -- AND2 signals
           and_4, and_5, and_6,
           and_7, and_8, and_9,
           and_10, and_11, and_12 : bit;

    signal and_13 : bit;           -- AND3 signal
        
    component INV1
        port (A : in bit;
              F : out bit);
    end component;

    component AND2
        port (A, B    : in bit;
              F       : out bit);
    end component;

    component AND3
        port (A, B, C : in bit;
              F       : out bit);
    end component;

    component OR2
        port (A, B    : in bit;
              F       : out bit);
    end component;

    component OR3
        port (A, B, C : in bit;
              F       : out bit);
    end component;

    component OR4
        port (A, B, C, D : in bit;
              F          : out bit);
    end component;

    begin
    
    U1 : INV1 port map (A => A, F => An);
    U2 : INV1 port map (A => B, F => Bn);
    U3 : INV1 port map (A => C, F => Cn);

    U4 : AND2 port map(A => A, B => B, F => and_1);    -- A and B
    U5 : AND2 port map(A => A, B => C, F => and_2);    -- A and C
    U6 : AND2 port map(A => B, B => C, F => and_3);    -- B and C

    U7 : AND2 port map(A => An, B => Bn, F => and_4);  -- An and Bn
    U8 : AND2 port map(A => An, B => Cn, F => and_5);  -- An and Cn
    U9 : AND2 port map(A => Bn, B => Cn, F => and_6);  -- Bn and Cn

    U10 : AND2 port map(A => An, B => B, F => and_7);  -- An and B
    U11 : AND2 port map(A => An, B => C, F => and_8);  -- An and C

    U12 : AND2 port map(A => Bn, B => A, F => and_9);  -- Bn and A
    U13 : AND2 port map(A => Bn, B => C, F => and_10); -- Bn and C

    U14 : AND2 port map(A => Cn, B => A, F => and_11); -- Cn and A
    U15 : AND2 port map(A => Cn, B => B, F => and_12); -- Cn and B

    U16 : AND3 port map (A => A, B => Bn, C => C, F => and_13); -- A and Bn and C

    U17 : OR3  port map (A => and_5, B => B, C => and_2,  F => Fa);
    U18 : OR3  port map (A => An, B => and_6, C => and_3, F => Fb);
    U19 : OR3  port map (A => Bn, B => C, C => A, F => Fc);
    U21 : OR4  port map (A => and_5, B => and_7, C => and_13, D => and_12, F => Fd);
    U22 : OR2  port map (A => and_5, B => and_12, F => Fe);
    U23 : OR3  port map (A => and_6, B => and_9, C => and_11, F => Ff);
    U24 : OR3  port map (A => and_7, B => and_9, C => and_12, F => Fg);

end architecture;