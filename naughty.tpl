<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Naughty Ruxpin</title>
    
    <meta name="description" content="Make the bear talk">
    <meta name="author" content="Chad Francis">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <script src="https://use.fontawesome.com/12a0b300c5.js"></script>
  </head>
  <body style="background-image: url(public/bg_naughty.png)">
    <div class="container">
      <a href="/"><img src="public/naughty_ruxpin.png" class="img-responsive"></a>
      <form action="/naughty" method="post" class="form-inline">
        <div class="well form-group">
          <div class="input-group">
            <input type="text" name="speech" class="form-control" id="speech" placeholder="Type anything here and Mappy will say it... I mean anything!">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-info"><i class="fa fa-bullhorn" aria-hidden="true"></i></button>
            </span>
          </div>
        </div>
        <div class="well form-group">
          <div class="input-group">
            <select name="phrase" class="form-control" id="phrase">
              <option value="">Select a pre-recorded sound file</option>
              <option value="bigbutts">I like big butts...</option>
              <option value="bitch">say what again...</option>
              <option value="believeitornot">doggo: believe it or not...</option>
              <option value="dogofwisdom">doggo: ba daba da ba</option>
              <option value="kissmyass">clark: merry christmas, kiss my ...</option>
              <option value="merryxmas">clark: boss rant</option>
              <option value="surprised">clark: if I woke up tomorrow...</option>
              <option value="grownman">captain: joey... have you ever</option>
              <option value="88miles">doc: if my calculations are correct...</option>
              <option value="dumber">harry: just when I think...</option>
              <option value="nerfherder">leia: why you stuck up...</option>
              <option value="breath">vader: breathing</option>
              <option value="proud">vader: don't be too proud...</option>
              <option value="failed">vader: you have failed me for the last time</option>
              <option value="faith">vader: I find your lack of faith disturbing</option>
              <option value="father">vader: No, I am your father</option>
              <option value="honored">vader: We'd be honored...</option>
              <option value="forceiswithyou">vader: The force is with you...</option>
              <option value="power">vader: If you only knew the power...</option>
              <option value="chewie">chewie: grawgrhghghg...</option>
              <option value="threepio">c-3po: human cyborg relations...</option>
              <option value="trynot">yoda: Try not...</option>
            </select>
            <span class="input-group-btn">
              <button type="submit" class="btn btn-info"><i class="fa fa-play-circle" aria-hidden="true"></i></button>
            </span>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>