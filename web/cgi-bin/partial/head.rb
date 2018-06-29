require_relative '../env'
$head = <<-"EOS"
<head>
    <title>
        <%= File.basename(__FILE__) %> - Keyword Bookshelf
    </title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="#{$STATIC_FILES}/stylesheets/style.css">
</head>
EOS