function[f] = differentiate(eqn)
   e = strrep(eqn, '.^', '^');
   f = sym(e);
   df  = diff(f);
   f = inline(df);
end