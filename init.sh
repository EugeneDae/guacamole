uninet(){
  cd .net; ./init.sh ; cd -
}

template(){
  [[ -d dir ]] && rm -rf this/this
  [[ -d dir ]] || cp -r this/.this this/this
}

uninet
template
