uninet(){
  cd .net; ./init.sh ; cd -
}

thisTemplate(){
  cp -r this/.this this/this
}

uninet
thisTemplate
