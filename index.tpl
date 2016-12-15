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

    <script src="https://use.fontawesome.com/12a0b300c5.js"></script>
  </head>
  <body style="background-image: url(bg.png)">
    <div class="container">
      <img src="mappy_ruxpin.png" class="img-responsive">
      <form action="/" method="post" class="form-inline">
        <div class="well">
          <button type="submit" name="demo" value="1" class="btn btn-info btn-block"><i class="fa fa-map-marker"></i> Directions Demo</button>
          <span class="help-block">Have Mappy read a canned set of turn-by-turn directions from our guidance API</span>
        </div>
        <div class="well">
          <button type="submit" name="tweet" value="1" class="btn btn-info btn-block"><i class="fa fa-twitter"></i> MapQuest Tweets</button>
          <span class="help-block">Mappy will read a random tweet directed at MapQuest</span>
        </div>
        <div class="well form-group">
          <div class="input-group">
            <input type="text" name="speech" class="form-control" id="speech" placeholder="Type anything here and Mappy will say it">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-info"><i class="fa fa-bullhorn" aria-hidden="true"></i></button>
            </span>
          </div>
        </div>
        <div class="well form-group">
          <div class="input-group">
            <select name="phrase" class="form-control" id="phrase">
              <option value="">Select a pre-recorded sound file</option>
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
            <span class="input-group-btn">
              <button type="submit" class="btn btn-info"><i class="fa fa-play-circle" aria-hidden="true"></i></button>
            </span>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>