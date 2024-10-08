# use -shell-escape for syntax highlight
$lualatex = 'lualatex -interaction=nonstopmode -shell-escape';

# build the glossaries
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
add_cus_dep('acn', 'acr', 0, 'makeglo2gls');
sub makeglo2gls {
        system("makeglossaries $_[0]");
}
