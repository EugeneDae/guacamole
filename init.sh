uninet(){
  cd .net; ./init.sh ; cd -
}

thisTemplate(){
  rm -rf this/this
  cp -r this/.this this/this
}

uninet
thisTemplate
