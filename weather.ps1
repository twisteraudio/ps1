(curl http://wttr.in/dallas?format=3 -useragent 'curl').content
$asdf = (curl http://wttr.in/dallas?format=3 -useragent 'curl').content

add-type -assemblyname system.speech
$speak = new-object system.speech.synthesis.speechsynthesizer

$speak.speak($asdf)