uninet(){
  cd .net; ./init.sh ; cd -
}

template(){
  rm -rf this/this
  cp -r this/.this this/this
}

uninet
template
