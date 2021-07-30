entity Experiment4G is
    port (A, B, C                    : in  bit;
          Fa, Fb, Fc, Fd, Fe, Ff, Fg : out bit);
end entity;

architecture sim of Experiment4G is
    begin
    Fa <= ((not A) and (not C)) or B       or (A and C);
    Fb <= ((not B) and (not C)) or (not A) or (B and C);
    Fc <= A        or  (not B)  or C;
    Fd <= ((not A) and (not C)) or ((not A) and B) or (B and (not C)) or (A and (not B) and C);
    Fe <= ((not A) and (not C)) or (B and (not C));
    Ff <= ((not B) and (not C)) or (A and (not C)) or (A and (not B));
    Fg <= ((not A) and B) or (A and (not C)) or (A and (not B));

end architecture;