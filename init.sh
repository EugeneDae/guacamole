uninet(){
  cd .net; ./init.sh ; cd -
}

thisTemplate(){
  cd template
  cp -r .this this
}

uninet
thisTemplate
