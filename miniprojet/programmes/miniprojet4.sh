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
	</head>
	<body class=\"has-background-grey-lighter\">"


echo "		<div class=\"hero-body\">
			<table class=\"table is-striped is-fullwidth\">
				<tr class=\"title is-5\"><th>ligne</th><th>URL</th><th>code HTTP</th><th>encodage</th></tr> "

while read -r URL
do
	reponse=$(curl -s -I -L -w "%{http_code}" -o /dev/null $URL)
	encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $URL | grep -P -o "charset=\S+" | cut -d"=" -f2 | tail -n 1)
	echo "					<tr>
						<td>$lineno</td>
						<td>$URL</td>
						<td>$reponse</td>
						<td>$encodage</td>
					</tr>"
	lineno=$(expr $lineno + 1)
done < $URLS 
 
echo " 			</table>
		</div>
	</body>
</html>"
