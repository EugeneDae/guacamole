# This will create inventory & ansible.cfg to match your uniNetwork! You can use the Default - Dyanmic Inventory - or edit static files.
# You can add inventory files to .net/hosts and it'll be ignored by git.

uninet(){
  [[ -f hosts/node ]] || cp node.j2 hosts/node
  [[ -f hosts/uninet ]] || cp uninet.j2 hosts/uninet
  ln -srf ansible.cfg.j2 ../ansible.cfg
}

template(){
  cd ..
  [[ -d dir ]] && rm -rf this/this
  [[ -d dir ]] || cp -r this/.this this/this
}

main(){
  uninet
  template
}
main
