<?php
$file=file_get_contents('https://graph.facebook.com/me/friends?access_token=CAAHcIfSDsZBYBAL9fjLt4e0x8QPb0yp2bLd3Izq06oQqTjjZCD998CAr0tg7kIS45hRft9CUPTEtSZASs5u0GQtzowoCGm46VQB3K0SVKZAFFKZCe3bZAQLZBSD3diVoLDDHBLEFdVxVODZAR7tZCPitXiPhv6RoRE6ZAIJKeD2xevHZBxrIzZChvSMW8IDLJqw1iYO1RcOZCIFwKwC7nxAdaPfAV.');
  
$file=str_replace('{"data":[','',$file);
echo "<table style='background:#edeff4;width:auto; border:1px solid #f8f8f8;'>";
echo "<tr><td width='180'><strong>ID</strong></td><td width='180'><strong>Name</strong></td><td><strong>Profile Image</strong></td></tr>";
        if(preg_match_all('~{(.*?)}~', $file ,$title,PREG_SET_ORDER))
        {
               
            foreach ($title as $val)
                {
                 
                $row=explode('{"name":"',$val[0]);
                $row=$row[1];
                $row=explode('","id":"',$row);
                $name=$row[0];
                $id=$row[1];//  we got the id as id=634931521"} now just remove the "}.. for that substr.
                $id=substr($id,0,-2);
                echo "<tr><td>".$id."</td>";
                echo "<td>".$name."</td>";
                echo "<td><iframe  frameborder='0' scrolling='no' marginheight='0' marginwidth='0' vspace='0' src ='https://graph.facebook.com/".$id."/picture' width='50' height='50'></iframe></td></tr>";
                 }
                
            
        }
   echo "</table>";
?>
