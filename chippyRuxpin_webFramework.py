#!/usr/bin/env python
#
# Chippy Ruxpin by Next Thing Co 2015
# Powered by C.H.I.P., the world's first $9 computer!

from bottle import run, get, post, request, route, redirect
import socket

class WebFramework:
    def __init__(self,func):
        self.ip = [(s.connect(('8.8.8.8', 80)), s.getsockname()[0], s.close()) for s in [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]][0][1]
        print( "---------")
        print( "CHIPPY RUXPIN IS ONLINE!")
        print( "In your browser, go to " + str(self.ip) + ":8080")
        print( "---------")
        self.talkFunc = func
        
        @route('/')
        def index():
            return '''
                <!doctype html>
                <html lang="en">
                    <head>
                        <meta charset="utf-8">
                        <title>Chippy Ruxpin</title>
                        <meta name="description" content="Make the bear talk">
                        <meta name="author" content="Chad Francis">
                        <!-- Latest compiled and minified CSS -->
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
                        <!-- Optional theme -->
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
                    </head>
                    <body>
                        <form action="/" method="post">
                            <small>What do you want Chippy Ruxpin to say? (Or type \"twitter\" followed by some search terms)<small>
                            <div class="form-group">
                                <label for="speech">Email address</label>
                                <input type="text" name="speech" class="form-control" id="speech" placeholder="I have a pony, he takes big shits.">
                            </div>
                            <button type="submit" class="btn btn-default">Go!</button>
                        </form>
                    </body>
                </html>
            '''
        @post('/')
        def speak():
            speech = request.forms.get('speech')            
            self.talkFunc( speech )
            redirect('/')

        run(host=self.ip, port=8080, debug=True)
