

# Version 2.1.0
# Works only for US numbers for now pulling AD accounts 
##########################################################################
############# Num Scraper ###############################
######################################

$Username = Read-Host -Prompt 'Input User Name' # enter in username here
$aduser = Get-ADUser $Username -Properties * | select DistinguishedName,Description,Division,Title,PasswordLastSet,TelephoneNumber # scrapes profile
$aduser
$Grabphone = $aduser | Select-Object -Property TelephoneNumber # takes phone number and reformats output
$Formatnum = Out-String -InputObject $Grabphone.TelephoneNumber
$phone = $Formatnum.Substring(0,5)


# O365 Exclusion policy Checker
$group1 = "AD Group name here"
$adchecker1 = Get-ADGroupMember -Identity $group1 -Recursive | Select -ExpandProperty SamAccountName


# Core script 
# oh yeah its all coming togeather. - Kronk
echo ""
echo "O365 Policy Excluded Checker"
echo '--------------------------'
if ($adchecker1 -contains $username) {
    Write-Host "$Username exists in the O365 Policy Exclude from Blocked Countries group" -ForegroundColor green
} else {
      Write-Host "$Username not exists in the O365 Policy Exclude from Blocked Countries group" -ForegroundColor red
}

echo " "
echo "Phone"
echo '--------------------------'
# Takes first 4 digits of the number and compares it to library of area codes in the states
# scrapped this site for area code data https://www.allareacodes.com/area_code_listings_by_state.htm

if ([string]$phone -like "+1201"){
    Write-Host "$phone is from
Jersey City, NJ" -ForegroundColor green
 Pause   
 break
}

if ([string]$phone -like "+1202") {
    Write-Host Write-Host "$phone is from 
District of Columbia" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1203") {
    Write-Host "$phone is from 
Bridgeport, CT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1204") {
    Write-Host "$phone is from 
Manitoba" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1205") {
    Write-Host "$phone is from 
Birmingham, AL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1206") 
    {
    Write-Host "$phone is from 
Seattle, WA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1207") {
    Write-Host "$phone is from 
Portland, ME" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1208") {
    Write-Host "$phone is from 
Idaho" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1209") {
    Write-Host "$phone is from 
Stockton, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1210") {
    Write-Host "$phone is from 
San Antonio, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1212") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1213") {
    Write-Host "$phone is from 
Los Angeles, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1214") {
    Write-Host "$phone is from 
Dallas, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1215") {
    Write-Host "$phone is from 
Philadelphia, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1216") {
    Write-Host "$phone is from 
Cleveland, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1217") {
    Write-Host "$phone is from 
Springfield, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1218") {
    Write-Host "$phone is from 
Duluth, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1219") {
    Write-Host "$phone is from 
Hammond, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1220") {
    Write-Host "$phone is from 
Newark, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1223") {
    Write-Host "$phone is from 
Lancaster, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1224") {
    Write-Host "$phone is from 
Elgin, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1225") {
    Write-Host "$phone is from 
Baton Rouge, LA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1226") {
    Write-Host "$phone is from 
London, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1228") {
    Write-Host "$phone is from 
Gulfport, MS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1229") {
    Write-Host "$phone is from 
Albany, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1231") {
    Write-Host "$phone is from 
Muskegon, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1234") {
    Write-Host "$phone is from 
Akron, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1236") {
    Write-Host "$phone is from
Vancouver, BC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1239") {
    Write-Host "$phone is from 
Cape Coral, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1240") {
    Write-Host "$phone is from 
Germantown, MD" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1248") {
    Write-Host "$phone is from 
Troy, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1249") {
    Write-Host "$phone is from 
Sudbury, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1250") {
    Write-Host "$phone is from 
Kelowna, BC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1251") {
    Write-Host "$phone is from 
Mobile, AL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1252") {
    Write-Host "$phone is from 
Greenville, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1253") {
    Write-Host "$phone is from 
Tacoma, WA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1254") {
    Write-Host "$phone is from
Killeen, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1256") {
    Write-Host "$phone is from 
Huntsville, AL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1260") {
    Write-Host "$phone is from 
Fort Wayne, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1262") {
    Write-Host "$phone is from 
Kenosha, WI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1267") {
    Write-Host "$phone is from 
Philadelphia, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1269") {
    Write-Host "$phone is from 
Kalamazoo, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1270") {
    Write-Host "$phone is from 
Bowling Green, KY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1272") {
    Write-Host "$phone is from Scranton, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1276") {
    Write-Host "$phone is from 
Bristol, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1279") {
    Write-Host "$phone is from 
Sacramento, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1281") {
    Write-Host "$phone is from 
Houston, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1289") {
    Write-Host "$phone is from 
Hamilton, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1301") {
    Write-Host "$phone is from 
Germantown, MD" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1302") {
    Write-Host "$phone is from 
Delaware" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1303") {
    Write-Host "$phone is from 
Denver, CO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1304") {
    Write-Host "$phone is from 
West Virginia" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1305") {
    Write-Host "$phone is from 
Miami, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1306") {
    Write-Host "$phone is from 
Saskatchewan" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1307") {
    Write-Host "$phone is from 
Wyoming" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1308") {
    Write-Host "$phone is from 
Grand Island, NE" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1309") {
    Write-Host "$phone is from 
Peoria, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1310") {
    Write-Host "$phone is from 
Los Angeles, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1312") {
    Write-Host "$phone is from 
Chicago, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1313") {
    Write-Host "$phone is from 
Detroit, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1314") {
    Write-Host "$phone is from 
St. Louis, MO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1315") {
    Write-Host "$phone is from 
Syracuse, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1316") {
    Write-Host "$phone is from 
Wichita, KS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1317") {
    Write-Host "$phone is from 
Indianapolis, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1318") {
    Write-Host "$phone is from 
Shreveport, LA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1319") {
    Write-Host "$phone is from 
Cedar Rapids, IA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1320") {
    Write-Host "$phone is from 
St. Cloud, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1321") {
    Write-Host "$phone is from 
Orlando, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1323") {
    Write-Host "$phone is from 
Los Angeles, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1325") {
    Write-Host "$phone is from 
Abilene, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1330") {
    Write-Host "$phone is from 
Akron, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1331") {
    Write-Host "$phone is from 
Aurora, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1332") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1334") {
    Write-Host "$phone is from 
Montgomery, AL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1336") {
    Write-Host "$phone is from 
Greensboro, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1337") {
    Write-Host "$phone is from 
Lafayette, LA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1339") {
    Write-Host "$phone is from 
Boston, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1340") {
    Write-Host "$phone is from 
Virgin Islands" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1343") {
    Write-Host "$phone is from 
Ottawa, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1346") {
    Write-Host "$phone is from 
Houston, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1347") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1351") {
    Write-Host "$phone is from 
Lowell, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1352") {
    Write-Host "$phone is from 
Gainesville, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1360") {
    Write-Host "$phone is from 
Vancouver, WA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1361") {
    Write-Host "$phone is from 
Corpus Christi, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1364") {
    Write-Host "$phone is from 
Bowling Green, KY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1365") {
    Write-Host "$phone is from 
Hamilton, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1367") {
    Write-Host "$phone is from 
Quebec, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1380") {
    Write-Host "$phone is from 
Columbus, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1385") {
    Write-Host "$phone is from 
Salt Lake City, UT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1386") {
    Write-Host "$phone is from 
Palm Coast, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1401") {
    Write-Host "$phone is from 
Providence, RI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1402") {
    Write-Host "$phone is from 
Omaha, NE" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1403") {
    Write-Host "$phone is from 
Calgary, AB" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1404") {
    Write-Host "$phone is from 
Atlanta, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1405") {
    Write-Host "$phone is from 
Oklahoma City, OK" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1406") {
    Write-Host "$phone is from 
Montana" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1407") {
    Write-Host "$phone is from 
Orlando, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1408") {
    Write-Host "$phone is from 
San Jose, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1409") {
    Write-Host "$phone is from 
Beaumont, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1410") {
    Write-Host "$phone is from 
Baltimore, MD" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1412") {
    Write-Host "$phone is from 
Pittsburgh, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1413") {
    Write-Host "$phone is from 
Springfield, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1414") {
    Write-Host "$phone is from 
Milwaukee, WI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1415") {
    Write-Host "$phone is from 
San Francisco, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1416") {
    Write-Host "$phone is from 
Toronto, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1417") {
    Write-Host "$phone is from 
Springfield, MO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1418") {
    Write-Host "$phone is from 
Quebec, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1419") {
    Write-Host "$phone is from 
Toledo, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1423") {
    Write-Host "$phone is from 
Chattanooga, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1424") {
    Write-Host "$phone is from 
Los Angeles, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1425") {
    Write-Host "$phone is from 
Bellevue, WA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1430") {
    Write-Host "$phone is from 
Tyler, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1431") {
    Write-Host "$phone is from 
Manitoba" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1432") {
    Write-Host "$phone is from 
Midland, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1434") {
    Write-Host "$phone is from 
Lynchburg, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1435") {
    Write-Host "$phone is from 
St. George, UT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1437") {
    Write-Host "$phone is from 
Toronto, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1438") {
    Write-Host "$phone is from 
Montreal, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1440") {
    Write-Host "$phone is from 
Parma, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1442") {
    Write-Host "$phone is from 
Oceanside, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1443") {
    Write-Host "$phone is from 
Baltimore, MD" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1445") {
    Write-Host "$phone is from 
Philadelphia, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1450") {
    Write-Host "$phone is from 
Granby, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1458") {
    Write-Host "$phone is from 
Eugene, OR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1463") {
    Write-Host "$phone is from 
Indianapolis, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1469") {
    Write-Host "$phone is from 
Dallas, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1470") {
    Write-Host "$phone is from 
Atlanta, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1475") {
    Write-Host "$phone is from 
Bridgeport, CT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1478") {
    Write-Host "$phone is from 
Macon, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1479") {
    Write-Host "$phone is from 
Fort Smith, AR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1480") {
    Write-Host "$phone is from 
Mesa, AZ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1484") {
    Write-Host "$phone is from 
Allentown, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1501") {
    Write-Host "$phone is from 
Little Rock, AR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1502") {
    Write-Host "$phone is from 
Louisville, KY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1503") {
    Write-Host "$phone is from 
Portland, OR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1504") {
    Write-Host "$phone is from 
New Orleans, LA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1505") {
    Write-Host "$phone is from 
Albuquerque, NM" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1506") {
    Write-Host "$phone is from 
New Brunswick" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1507") {
    Write-Host "$phone is from 
Rochester, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1508") {
    Write-Host "$phone is from 
Worcester, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1509") {
    Write-Host "$phone is from 
Spokane, WA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1510") {
    Write-Host "$phone is from 
Oakland, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1512") {
    Write-Host "$phone is from 
Austin, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1513") {
    Write-Host "$phone is from 
Cincinnati, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1514") {
    Write-Host "$phone is from 
Montreal, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1515") {
    Write-Host "$phone is from 
Des Moines, IA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1516") {
    Write-Host "$phone is from 
Hempstead, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1517") {
    Write-Host "$phone is from 
Lansing, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1518") {
    Write-Host "$phone is from 
Albany, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1519") {
    Write-Host "$phone is from 
London, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1520") {
    Write-Host "$phone is from 
Tucson, AZ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1530") {
    Write-Host "$phone is from 
Redding, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1531") {
    Write-Host "$phone is from 
Omaha, NE" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1534") {
    Write-Host "$phone is from 
Eau Claire, WI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1539") {
    Write-Host "$phone is from 
Tulsa, OK" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1540") {
    Write-Host "$phone is from 
Roanoke, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1541") {
    Write-Host "$phone is from 
Eugene, OR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1548") {
    Write-Host "$phone is from 
London, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1551") {
    Write-Host "$phone is from 
Jersey City, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1559") {
    Write-Host "$phone is from 
Fresno, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1561") {
    Write-Host "$phone is from 
West Palm Beach, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1562") {
    Write-Host "$phone is from 
Long Beach, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1563") {
    Write-Host "$phone is from 
Davenport, IA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1564") {
    Write-Host "$phone is from 
Vancouver, WA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1567") {
    Write-Host "$phone is from 
Toledo, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1570") {
    Write-Host "$phone is from 
Scranton, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1571") {
    Write-Host "$phone is from 
Arlington, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1573") {
    Write-Host "$phone is from 
Columbia, MO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1574") {
    Write-Host "$phone is from 
South Bend, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1575") {
    Write-Host "$phone is from 
Las Cruces, NM" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1579") {
    Write-Host "$phone is from 
Granby, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1580") {
    Write-Host "$phone is from 
Lawton, OK" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1581") {
    Write-Host "$phone is from 
Quebec, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1585") {
    Write-Host "$phone is from 
Rochester, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1586") {
    Write-Host "$phone is from 
Warren, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1587") {
    Write-Host "$phone is from 
Calgary, AB" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1601") {
    Write-Host "$phone is from 
Jackson, MS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1602") {
    Write-Host "$phone is from 
Phoenix, AZ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1603") {
    Write-Host "$phone is from 
New Hampshire" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1604") {
    Write-Host "$phone is from 
Vancouver, BC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1605") {
    Write-Host "$phone is from 
South Dakota" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1606") {
    Write-Host "$phone is from 
Ashland, KY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1607") {
    Write-Host "$phone is from 
Binghamton, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1608") {
    Write-Host "$phone is from 
Madison, WI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1609") {
    Write-Host "$phone is from 
Trenton, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1610") {
    Write-Host "$phone is from 
Allentown, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1612") {
    Write-Host "$phone is from 
Minneapolis, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1613") {
    Write-Host "$phone is from 
Ottawa, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1614") {
    Write-Host "$phone is from 
Columbus, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1615") {
    Write-Host "$phone is from 
Nashville, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1616") {
    Write-Host "$phone is from 
Grand Rapids, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1617") {
    Write-Host "$phone is from 
Boston, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1618") {
    Write-Host "$phone is from 
Belleville, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1619") {
    Write-Host "$phone is from 
San Diego, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1620") {
    Write-Host "$phone is from 
Hutchinson, KS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1623") {
    Write-Host "$phone is from 
Phoenix, AZ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1626") {
    Write-Host "$phone is from 
Pasadena, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1628") {
    Write-Host "$phone is from 
San Francisco, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1629") {
    Write-Host "$phone is from 
Nashville, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1630") {
    Write-Host "$phone is from 
Aurora, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1631") {
    Write-Host "$phone is from 
Brentwood, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1636") {
    Write-Host "$phone is from 
O'Fallon, MO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1639") {
    Write-Host "$phone is from 
Saskatchewan" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1640") {
    Write-Host "$phone is from 
Trenton, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1641") {
    Write-Host "$phone is from 
Mason City, IA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1646") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1647") {
    Write-Host "$phone is from 
Toronto, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1650") {
    Write-Host "$phone is from 
San Mateo, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1651") {
    Write-Host "$phone is from 
St. Paul, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1657") {
    Write-Host "$phone is from 
Anaheim, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1660") {
    Write-Host "$phone is from 
Sedalia, MO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1661") {
    Write-Host "$phone is from 
Bakersfield, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1662") {
    Write-Host "$phone is from 
Southaven, MS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1667") {
    Write-Host "$phone is from 
Baltimore, MD" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1669") {
    Write-Host "$phone is from 
San Jose, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1670") {
    Write-Host "$phone is from 
Northern Mariana Islan" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1671") {
    Write-Host "$phone is from 
Guam" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1678") {
    Write-Host "$phone is from 
Atlanta, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1680") {
    Write-Host "$phone is from 
Syracuse, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1681") {
    Write-Host "$phone is from 
West Virginia" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1682") {
    Write-Host "$phone is from 
Fort Worth, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1684") {
    Write-Host "$phone is from 
American Samoa" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1701") {
    Write-Host "$phone is from 
North Dakota" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1702") {
    Write-Host "$phone is from 
Las Vegas, NV" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1703") {
    Write-Host "$phone is from 
Arlington, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1704") {
    Write-Host "$phone is from 
Charlotte, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1705") {
    Write-Host "$phone is from 
Sudbury, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1706") {
    Write-Host "$phone is from 
Augusta, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1707") {
    Write-Host "$phone is from 
Santa Rosa, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1708") {
    Write-Host "$phone is from 
Cicero, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1709") {
    Write-Host "$phone is from 
Newfoundland/Labrador" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1712") {
    Write-Host "$phone is from 
Sioux City, IA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1713") {
    Write-Host "$phone is from 
Houston, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1714") {
    Write-Host "$phone is from 
Anaheim, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1715") {
    Write-Host "$phone is from 
Eau Claire, WI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1716") {
    Write-Host "$phone is from 
Buffalo, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1717") {
    Write-Host "$phone is from 
Lancaster, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1718") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1719") {
    Write-Host "$phone is from 
Colorado Springs, CO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1720") {
    Write-Host "$phone is from 
Denver, CO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1724") {
    Write-Host "$phone is from 
New Castle, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1725") {
    Write-Host "$phone is from 
Las Vegas, NV" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1726") {
    Write-Host "$phone is from 
San Antonio, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1727") {
    Write-Host "$phone is from 
St. Petersburg, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1731") {
    Write-Host "$phone is from 
Jackson, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1732") {
    Write-Host "$phone is from 
Toms River, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1734") {
    Write-Host "$phone is from 
Ann Arbor, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1737") {
    Write-Host "$phone is from 
Austin, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1740") {
    Write-Host "$phone is from 
Newark, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1743") {
    Write-Host "$phone is from 
Greensboro, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1747") {
    Write-Host "$phone is from 
Los Angeles, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1754") {
    Write-Host "$phone is from 
Fort Lauderdale, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1757") {
    Write-Host "$phone is from 
Virginia Beach, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1760") {
    Write-Host "$phone is from 
Oceanside, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1762") {
    Write-Host "$phone is from 
Augusta, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1763") {
    Write-Host "$phone is from 
Brooklyn Park, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1765") {
    Write-Host "$phone is from 
Muncie, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1769") {
    Write-Host "$phone is from 
Jackson, MS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1770") {
    Write-Host "$phone is from 
Roswell, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1772") {
    Write-Host "$phone is from 
Port St. Lucie, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1773") {
    Write-Host "$phone is from 
Chicago, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1774") {
    Write-Host "$phone is from 
Worcester, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1775") {
    Write-Host "$phone is from 
Reno, NV" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1778") {
    Write-Host "$phone is from 
Vancouver, BC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1779") {
    Write-Host "$phone is from 
Rockford, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1780") {
    Write-Host "$phone is from 
Edmonton, AB" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1781") {
    Write-Host "$phone is from 
Boston, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1782") {
    Write-Host "$phone is from 
Nova Scotia/PE Island" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1785") {
    Write-Host "$phone is from 
Topeka, KS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1786") {
    Write-Host "$phone is from 
Miami, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1787") {
    Write-Host "$phone is from 
Puerto Rico" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1801") {
    Write-Host "$phone is from 
Salt Lake City, UT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1802") {
    Write-Host "$phone is from 
Vermont" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1803") {
    Write-Host "$phone is from 
Columbia, SC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1804") {
    Write-Host "$phone is from 
Richmond, VA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1805") {
    Write-Host "$phone is from 
Oxnard, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1806") {
    Write-Host "$phone is from 
Lubbock, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1807") {
    Write-Host "$phone is from 
Kenora, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1808") {
    Write-Host "$phone is from 
Hawaii" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1810") {
    Write-Host "$phone is from 
Flint, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1812") {
    Write-Host "$phone is from 
Evansville, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1813") {
    Write-Host "$phone is from 
Tampa, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1814") {
    Write-Host "$phone is from 
Erie, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1815") {
    Write-Host "$phone is from 
Rockford, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1816") {
    Write-Host "$phone is from 
Kansas City, MO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1817") {
    Write-Host "$phone is from 
Fort Worth, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1818") {
    Write-Host "$phone is from 
Los Angeles, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1819") {
    Write-Host "$phone is from 
Sherbrooke, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1820") {
    Write-Host "$phone is from 
Oxnard, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1825") {
    Write-Host "$phone is from 
Calgary, AB" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1828") {
    Write-Host "$phone is from 
Asheville, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1830") {
    Write-Host "$phone is from 
New Braunfels, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1831") {
    Write-Host "$phone is from 
Salinas, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1832") {
    Write-Host "$phone is from 
Houston, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1838") {
    Write-Host "$phone is from 
Albany, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1843") {
    Write-Host "$phone is from 
Charleston, SC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1845") {
    Write-Host "$phone is from 
New City, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1847") {
    Write-Host "$phone is from 
Elgin, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1848") {
    Write-Host "$phone is from 
Toms River, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1850") {
    Write-Host "$phone is from 
Tallahassee, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1854") {
    Write-Host "$phone is from 
Charleston, SC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1856") {
    Write-Host "$phone is from 
Camden, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1857") {
    Write-Host "$phone is from 
Boston, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1858") {
    Write-Host "$phone is from 
San Diego, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1859") {
    Write-Host "$phone is from 
Lexington-Fayette, KY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1860") {
    Write-Host "$phone is from 
Hartford, CT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1862") {
    Write-Host "$phone is from 
Newark, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1863") {
    Write-Host "$phone is from 
Lakeland, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1864") {
    Write-Host "$phone is from 
Greenville, SC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1865") {
    Write-Host "$phone is from 
Knoxville, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1867") {
    Write-Host "$phone is from 
Northern Canada" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1870") {
    Write-Host "$phone is from 
Jonesboro, AR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1872") {
    Write-Host "$phone is from 
Chicago, IL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1873") {
    Write-Host "$phone is from 
Sherbrooke, QC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1878") {
    Write-Host "$phone is from 
Pittsburgh, PA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1901") {
    Write-Host "$phone is from 
Memphis, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1902") {
    Write-Host "$phone is from 
Nova Scotia/PE Island" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1903") {
    Write-Host "$phone is from 
Tyler, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1904") {
    Write-Host "$phone is from 
Jacksonville, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1905") {
    Write-Host "$phone is from 
Hamilton, ON" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1906") {
    Write-Host "$phone is from 
Marquette, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1907") {
    Write-Host "$phone is from 
Alaska" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1908") {
    Write-Host "$phone is from 
Elizabeth, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1909") {
    Write-Host "$phone is from 
San Bernardino, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1910") {
    Write-Host "$phone is from 
Fayetteville, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1912") {
    Write-Host "$phone is from 
Savannah, GA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1913") {
    Write-Host "$phone is from 
Overland Park, KS" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1914") {
    Write-Host "$phone is from 
Yonkers, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1915") {
    Write-Host "$phone is from 
El Paso, TX" -ForegroundColor green
 Pause   
 break
}
if ($phone -like "+1916") {
    Write-Host "$phone is from 
Sacramento, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1917") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1918") {
    Write-Host "$phone is from 
Tulsa, OK" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1919") {
    Write-Host "$phone is from 
Raleigh, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1920") {
    Write-Host "$phone is from 
Green Bay, WI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1925") {
    Write-Host "$phone is from 
Concord, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1928") {
    Write-Host "$phone is from 
Yuma, AZ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1929") {
    Write-Host "$phone is from 
New York, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1930") {
    Write-Host "$phone is from 
Evansville, IN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1931") {
    Write-Host "$phone is from 
Clarksville, TN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1934") {
    Write-Host "$phone is from 
Brentwood, NY" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1936") {
    Write-Host "$phone is from 
Conroe, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1937") {
    Write-Host "$phone is from 
Dayton, OH" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1938") {
    Write-Host "$phone is from 
Huntsville, AL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1939") {
    Write-Host "$phone is from 
Puerto Rico" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1940") {
    Write-Host "$phone is from 
Denton, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1941") {
    Write-Host "$phone is from 
North Port, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1947") {
    Write-Host "$phone is from 
Troy, MI" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1949") {
    Write-Host "$phone is from 
Irvine, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1951") {
    Write-Host "$phone is from 
Riverside, CA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1952") {
    Write-Host "$phone is from 
Bloomington, MN" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1954") {
    Write-Host "$phone is from 
Fort Lauderdale, FL" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1956") {
    Write-Host "$phone is from 
Laredo, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1959") {
    Write-Host "$phone is from 
Hartford, CT" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1970") {
    Write-Host "$phone is from 
Fort Collins, CO" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1971") {
    Write-Host "$phone is from 
Portland, OR" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1972") {
    Write-Host "$phone is from 
Dallas, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1973") {
    Write-Host "$phone is from 
Newark, NJ" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1978") {
    Write-Host "$phone is from 
Lowell, MA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1979") {
    Write-Host "$phone is from 
College Station, TX" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1980") {
    Write-Host "$phone is from 
Charlotte, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1984") {
    Write-Host "$phone is from 
Raleigh, NC" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1985") {
    Write-Host "$phone is from 
Houma, LA" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1986") {
    Write-Host "$phone is from 
Idaho" -ForegroundColor green
 Pause   
 break
}
if ([string]$phone -like "+1989") {
    Write-Host "$phone is from 
Saginaw, MI" -ForegroundColor green
 Pause   
 break
}
else { 
    Write-Host "Phone is not in the USA" -ForegroundColor red
    Pause
    break 
}

