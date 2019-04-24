import groovy.json.JsonSlurper
pipeline {
	 agent any
         options {
		timeout(time: 1, unit: 'HOURS')
		 }
	 stages {
		stage('NW 752') {
		steps {
			sh 'whoami'
			echo 'This is a GET API test'
                        script {
                                  def myurl = 'http://35.174.22.86:3000/sap/bc/adt/abapunit?sap-client=001&sap-language=EN'
			// Use httpRequest Jenkins Plugin /sap/bc/adt/abapunit/testruns	
                          def response = httpRequest consoleLogResponseBody: true,
                          authentication: 'NPL',  
                          url: 'http://35.174.22.86:3000/sap/bc/adt/abapunit?sap-client=001&sap-language=EN',
                          customHeaders:[[name:'x-csrf-token', value:"fetch"]]
                        // Print response  
			  println('Status: '+response.status)
                          println('Response: '+response.content)
                          println('Headers: '+response.headers)
                          println('Token: '+response.headers.get("x-csrf-token"))
                          println('Cookie: '+response.headers.get("set-cookie"))
                          def ReceivedToken = response.headers.get("x-csrf-token").toString()
                          def Cookie = response.headers.get("set-cookie").toString()
                          def SESSION = Cookie.tokenize(',')[1].substring(0, Cookie.tokenize(',')[1].length() - 1)
                          // remove the beginning "[" and trailing "]" encapsulation
                          def Token = ReceivedToken.substring(1, ReceivedToken.length() - 1) 
                          println('SESSION: '+"${SESSION}")
                          println(Token)
                          println(Cookie) 
                               }
		      }
                    }
                 }
          }	
