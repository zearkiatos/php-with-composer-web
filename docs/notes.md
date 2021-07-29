`composer dump` //command for process vendor folder

## Install Dependencies for dev example

`composer require --dev phpunit/phpunit`

## Install dependencies for prod

`composer require nesbot/carbon`

## Init Project
`composer init`

## Autoload example

`    "autoload": {
         "files": [
             "src/file1.php",
             "src/file2.php"
         ],
         "classmap": [
             "database/seeds",
             "database/factories"
         ],
        "psr-4": {
            "Caprilespe\\PhpWithComposerWeb\\": "src/"
        }
    }`

## Update composer tool
`composer self-update`