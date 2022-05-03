#!/bin/bashfiles=('/etc/passwd' '/etc/shadow')commands=('date' 'uname -a' 'hostname -s')
for file in ${files[@]}; dols -l $file >> new.txtdonefor user is $(ls /home)dosudo -lU $userdone
for x in {0..2}doresults=$(${commands[$x]})echo "Results of \"${commands[$x]}\" command:"echo resultsecho ""
done
~                                                                               ~                                                                               "~/sys_info2.sh" 21L, 318C 
