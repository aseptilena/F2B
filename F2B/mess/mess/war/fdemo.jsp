 <html> 
   <head> 
     <title>opening in a pop up </title> 
   </head> 
   <body> 

<h2> Your Facebook Notes.......... </h2>
   <script> 
     function displayUser(user) {
		var userName = document.getElementById('userName');
		var flag=1;

/*
		var g=user.data[0].gender+' ';
		if(g.toUpperCase()=='MALE ')
		{
			flag=111;
		}


	    for(i=0;i<=3;i++)
	    {


		var s= user.data[0].subject+' ';
                var m=user.data[0].subject+' ';  		
*/

            for(i=0;i<user.data.length;i++)
	    {/*
		var greetingText = document.createTextNode(user.data[i].subject+'\n\n'+user.data[i].message);
		userName.appendChild(greetingText);
		document.body.appendChild(greetingText);  
		*/

         	var n=document.createElement('div');
		var f='<form action=\'https://sbose78.appspot.com/search3.jsp\' method=\'post\' >';
		var cf='</form>';
		var b='<input type=\'submit\' value=\'POST THIS TO YOUR BLOG \'>';
		var in_sub='<input name=\'subject\' value=\'';
		var in_sub_close='\'>';

		var in_msg='<textarea name=\'message\' rows=\'10\' cols=\'100\'>';
		var in_msg_close='</textarea>';
 
                n.innerHTML=f+'<br>'+in_sub+user.data[i].subject+in_sub_close+'<br><br>'+in_msg + user.data[i].message + in_msg_close+
		'<br> ------------------'+b+'<br>'+cf+'-----------------------';
                document.getElementById('userName').appendChild(n);
		
		
	    }

//            }  
	
	  
     }

     var appID = 114520588635685;
     if (window.location.hash.length == 0) {
       var path = 'https://www.facebook.com/dialog/oauth?';
   var queryParams = ['client_id=' + appID,
     'redirect_uri=' + 'http://foodportal007.appspot.com/fdemo.jsp',
     'response_type=token',
     'scope=user_notes'	 ];
   var query = queryParams.join('&');
   var url = path + query;
   window.open(url);
     } else {
       var accessToken = window.location.hash.substring(1);
       var path = "https://graph.facebook.com/me/notes?";
   var queryParams = [accessToken, 'callback=displayUser'];
   var query = queryParams.join('&');
   var url = path + query;

   // use jsonp to call the graph
       var script = document.createElement('script');
       script.src = url;
       document.body.appendChild(script);        
     }
   </script> 
   <p id="userName"></p> 
   
   

   
   </body> 
  </html>
