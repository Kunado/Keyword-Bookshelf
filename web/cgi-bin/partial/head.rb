require_relative '../env'
$head = <<-"EOS"
<head>
    <title>ruby cgi script</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="#{$STATIC_FILES}/stylesheets/style.css">
</head>
EOS