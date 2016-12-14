<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Chippy Ruxpin</title>
        
        <meta name="description" content="Make the bear talk">
        <meta name="author" content="Chad Francis">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <form action="/" method="post">
                <small>What do you want Chippy Ruxpin to say? (Or type \"twitter\" followed by some search terms)<small>
                <div class="form-group">
                    <label for="speech">Text to say</label>
                    <input type="text" name="speech" class="form-control" id="speech" placeholder="I have a pony, he takes big shits.">
                </div>
                <div class="form-group">
                    <label for="phrase">Canned Phrase</label>
                    <select name="phrase" class="form-control" id="phrase">
                        <option value="">none</option>
                        <option value="believeitornot">doggo: believe it or not...</option>
                        <option value="bitch">say what again...</option>
                        <option value="breath">vader: breathing</option>
                        <option value="dogofwisdom">doggo: ba daba da ba</option>
                        <option value="failed">vader: you have failed me for the last time</option>
                        <option value="faith">vader: I find your lack of faith disturbing</option>
                        <option value="father">vader: No, I am your father</option>
                        <option value="honored">vader: We'd be honored...</option>
                        <option value="merryxmas">clark: boss rant</option>
                        <option value="nerfherder">leia: why you stuck up...</option>
                        <option value="proud">vader: don't be too proud...</option>
                        <option value="surprised">clark: if I woke up tomorrow...</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-default">Go!</button>
                <button type="submit" name="demo" value="1" class="btn btn-default">Directions Demo</button>
            </form>
        </div>
    </body>
</html>