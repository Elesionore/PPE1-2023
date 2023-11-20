#!/usr/bin/env bash
 
if [ $# -ne 1 ]
then
	echo "un argument attendu exactement"
	exit
fi

URLS=$1
lineno=1

echo "<html>
	<head>
		<meta charset=\"UTF-8\"/>
		<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css\">
<style>
        body {
            background-color: #FDFFD8;
        }
       
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 4px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #A1E8E8;
        }
  </style>
	</head>" >> ../tableaux/tableau_ukr.html

echo "<body>
		<div class="container is-widescreen">



			" >> ../tableaux/tableau_ukr.html

echo "  <table> 
        <thead>
            <tr>
                <th>№</th>
                <th>réponse</th>
                <th>encodage</th>
                <th>URL</th>
                <th>dump-html</th>
                <th>dump-txt</th>
                <th>occurences</th>
                <th>contexte</th>
                <th>concordance</th>
            </tr>
        </thead>" >> ../tableaux/tableau_ukr.html

while read -r URL
do
	reponse=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "			<tr>
                        <td>$lineno</td>    
						<td>$reponse</td>   
						<td>$encodage</td>
 						<td>$URL</td>   
                        <td>html</td>   
                        <td>txt</td>   
                        <td>____</td>   
                        <td>____</td>
                        <td>____</td>
					</tr>" >> ../tableaux/tableau_ukr.html
	lineno=$(expr $lineno + 1)
done < $URLS 
 
echo "</table>
    </div>
	</body>
</html>" >> ../tableaux/tableau_ukr.html
