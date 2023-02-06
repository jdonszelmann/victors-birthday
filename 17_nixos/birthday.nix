tt:
let
  ascii = {
    "10" = "\n";
    "32" = " ";
    "33" = "!";
    "34" = "\"";
    "35" = "#";
    "36" = "$";
    "37" = "%";
    "38" = "&";
    "39" = "'";
    "40" = "(";
    "41" = ")";
    "42" = "*";
    "43" = "+";
    "44" = ",";
    "45" = "-";
    "46" = ".";
    "47" = "/";
    "48" = "0";
    "49" = "1";
    "50" = "2";
    "51" = "3";
    "52" = "4";
    "53" = "5";
    "54" = "6";
    "55" = "7";
    "56" = "8";
    "57" = "9";
    "58" = ":";
    "59" = ";";
    "60" = "<";
    "61" = "=";
    "62" = ">";
    "63" = "?";
    "64" = "@";
    "65" = "A";
    "66" = "B";
    "67" = "C";
    "68" = "D";
    "69" = "E";
    "70" = "F";
    "71" = "G";
    "72" = "H";
    "73" = "I";
    "74" = "J";
    "75" = "K";
    "76" = "L";
    "77" = "M";
    "78" = "N";
    "79" = "O";
    "80" = "P";
    "81" = "Q";
    "82" = "R";
    "83" = "S";
    "84" = "T";
    "85" = "U";
    "86" = "V";
    "87" = "W";
    "88" = "X";
    "89" = "Y";
    "90" = "Z";
    "91" = "[";
    "92" = "\\";
    "93" = "]";
    "94" = "^";
    "95" = "_";
    "96" = "`";
    "97" = "a";
    "98" = "b";
    "99" = "c";
    "100" = "d";
    "101" = "e";
    "102" = "f";
    "103" = "g";
    "104" = "h";
    "105" = "i";
    "106" = "j";
    "107" = "k";
    "108" = "l";
    "109" = "m";
    "110" = "n";
    "111" = "o";
    "112" = "p";
    "113" = "q";
    "114" = "r";
    "115" = "s";
    "116" = "t";
    "117" = "u";
    "118" = "v";
    "119" = "w";
    "120" = "x";
    "121" = "y";
    "122" = "z";
    "123" = "{";
    "124" = "|";
    "125" = "}";
    "126" = "~";
  };
  uu = sep: s: let uu = builtins.filter builtins.isString (builtins.split (toString sep) (toString s)); in uu;
  ee = a: if (builtins.stringLength a) == 0 then [ ] else [ (builtins.substring 0 1 a) ] ++ ee (builtins.substring 1 ((builtins.stringLength a) - 1) a);
  mapping = ee (builtins.elemAt (uu "=" tt) 0);
  qq = builtins.elemAt (uu "=" tt) 1;
  min = x: y: if x < y then x else y;
  ll = f: p: i: builtins.genList (n: f (builtins.elemAt p n) (builtins.elemAt i n)) (min (builtins.length p) (builtins.length i));
  q = x: builtins.listToAttrs (ll (p: i: { name = p; value = i; }) mapping x);
  p = a: a;
  w = (q [ (dd p) (dd p) (dd p) (dd p) (dd p) ui rr ]);
  y = (q [ (bb p) (bb p) (bb p) (bb p) (bb p) rrr yy ]);
  z = q [ o m op ol jj sr ls ];
  l = { inp, n, f }: builtins.genList (x: if x != n then builtins.elemAt inp x else f (builtins.elemAt inp x)) (builtins.length inp);
  dd = f: ({ td, hh, ... }@c: (f c) // { td = td + 1; });
  bb = f: ({ td, hh, ... }@c: (f c) // { td = td - 1; });
  curr = { ww, td, ... }: builtins.substring td 1 ww;
  zz = v: ({ td, ts, ... }@c: c // { ts = ts + v; });
  b = v: { aa, ts, td, ... }@c: c // { aa = l { inp = aa; n = ts; f = i: i + v; }; };
  o = dd (zz 1);
  m = dd (zz (-1));
  op = dd (b 1);
  ol = dd (b (-1));
  jj = dd ({ aa, ts, jj, ... }@c: c // { jj = jj + ascii.${(toString (builtins.elemAt aa ts))}; });
  sr = { aa, ts, td, ... }@c: if (builtins.elemAt aa ts) == 0 then (c // { hh = 1; z = w; td = td + 1; }) else ((dd p) c);
  ls = { aa, ts, td, ... }@c: if (builtins.elemAt aa ts) != 0 then (c // { hh = 1; z = y; td = td - 1; }) else ((dd p) c);
  ui = dd ({ hh, ... }@c: c // { hh = hh + 1; });
  yy = bb ({ hh, ... }@c: c // { hh = hh + 1; });
  rr = { hh, td, ... }@c: if hh == 1 then c // { z = z; td = td + 1; } else c // { hh = hh - 1; td = td + 1; };
  rrr = { hh, td, ... }@c: if hh == 1 then c // { z = z; td = td + 1; } else c // { hh = hh - 1; td = td - 1; };
  gf = { ww, td, z, ... }@c: if td < (builtins.stringLength ww) then let a = (curr c); in gf (z.${a} c) else c;
in
(gf { ww = qq; td = 0; ts = 0; aa = builtins.genList (_: 0) 10; hh = 0; z = z; jj = ""; }).jj

