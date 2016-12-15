#!/usr/bin/env python
#
# Chippy Ruxpin by Next Thing Co 2015
# Powered by C.H.I.P., the world's first $9 computer!

from bottle import run, get, post, request, route, redirect, template
import socket

class WebFramework:
    def __init__(self,talkFunc, phraseFunc, dirFunc, tweetFunc):
        self.ip = [(s.connect(('8.8.8.8', 80)), s.getsockname()[0], s.close()) for s in [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]][0][1]
        print( "---------")
        print( "CHIPPY RUXPIN IS ONLINE!")
        print( "In your browser, go to " + str(self.ip) + ":8080")
        print( "---------")
        self.talkFunc = talkFunc
        self.phraseFunc = phraseFunc
        self.dirFunc = dirFunc
        self.tweetFunc = tweetFunc
        
        @route('/')
        def index():
            return template('index')

        @post('/')
        def speak():
            phrase = request.forms.get('phrase')
            speech = request.forms.get('speech')
            demo = request.forms.get('demo')
            tweet = request.forms.get('tweet')

            if(demo == "1"):
                self.dirFunc()
            if(tweet == "1"):
                self.tweetFunc()
            elif(phrase != ""):
                self.phraseFunc( phrase )
            else:
                self.talkFunc( speech )
            redirect('/')

        run(host=self.ip, port=8080, debug=True)
