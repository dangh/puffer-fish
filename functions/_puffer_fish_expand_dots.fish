function _puffer_fish_expand_dots -d 'expand .. to ../ and ../. to ../../ etc'
    set -l cmd (commandline --cut-at-cursor)
    set -l split (string split -- ' ' $cmd)
    if string match --quiet --regex -- '^\.$' $split[-1]
        commandline --insert './'
    else if string match --quiet --regex -- '^(\.\./)+$' $split[-1]
        commandline --insert '../'
    else
        commandline --insert '.'
    end
end
