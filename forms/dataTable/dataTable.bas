
JavaScript
// an array of arrays. One array for each row.
 var data1 = [
    ["Tiger Nixon", "System Architect", "Edinburgh", "5421", "2011/04/25", "$320,800"],
    ["Garrett Winters", "Accountant", "Tokyo", "8422", "2011/07/25", "$170,750"],
    ["Ashton Cox", "Junior Technical Author", "San Francisco", "1562", "2009/01/12", "$86,000"],
    ["Cedric Kelly", "Senior Javascript Developer", "Edinburgh", "6224", "2012/03/29", "$433,060"],
    ["Airi Satou", "Accountant", "Tokyo", "5407", "2008/11/28", "$162,700"],
    ["Brielle Williamson", "Integration Specialist", "New York", "4804", "2012/12/02", "$372,000"],
    ["Herrod Chandler", "Sales Assistant", "San Francisco", "9608", "2012/08/06", "$137,500"],
    ["Rhona Davidson", "Integration Specialist", "Tokyo", "6200", "2010/10/14", "$327,900"],
    ["Colleen Hurst", "Javascript Developer", "San Francisco", "2360", "2009/09/15", "$205,500"],
    ["Sonya Frost", "Software Engineer", "Edinburgh", "1667", "2008/12/13", "$103,600"],
    ["Jena Gaines", "Office Manager", "London", "3814", "2008/12/19", "$90,560"],
    ["Quinn Flynn", "Support Lead", "Edinburgh", "9497", "2013/03/03", "$342,000"],
    ["Charde Marshall", "Regional Director", "San Francisco", "6741", "2008/10/16", "$470,600"],
    ["Haley Kennedy", "Senior Marketing Designer", "London", "3597", "2012/12/18", "$313,500"],
    ["Tatyana Fitzpatrick", "Regional Director", "London", "1965", "2010/03/17", "$385,750"],
    ["Michael Silva", "Marketing Designer", "London", "1581", "2012/11/27", "$198,500"],
    ["Paul Byrd", "Chief Financial Officer (CFO)", "New York", "3059", "2010/06/09", "$725,000"],
    ["Gloria Little", "Systems Administrator", "New York", "1721", "2009/04/10", "$237,500"],
    ["Bradley Greer", "Software Engineer", "London", "2558", "2012/10/13", "$132,000"],
    ["Dai Rios", "Personnel Lead", "Edinburgh", "2290", "2012/09/26", "$217,500"],
    ["Jenette Caldwell", "Development Lead", "New York", "1937", "2011/09/03", "$345,000"],
    ["Yuri Berry", "Chief Marketing Officer (CMO)", "New York", "6154", "2009/06/25", "$675,000"],
    ["Caesar Vance", "Pre-Sales Support", "New York", "8330", "2011/12/12", "$106,450"],
    ["Doris Wilder", "Sales Assistant", "Sidney", "3023", "2010/09/20", "$85,600"],
    ["Angelica Ramos", "Chief Executive Officer (CEO)", "London", "5797", "2009/10/09", "$1,200,000"],
    ["Gavin Joyce", "Developer", "Edinburgh", "8822", "2010/12/22", "$92,575"],
    ["Jennifer Chang", "Regional Director", "Singapore", "9239", "2010/11/14", "$357,650"],
    ["Brenden Wagner", "Software Engineer", "San Francisco", "1314", "2011/06/07", "$206,850"],
    ["Fiona Green", "Chief Operating Officer (COO)", "San Francisco", "2947", "2010/03/11", "$850,000"],
    ["Shou Itou", "Regional Marketing", "Tokyo", "8899", "2011/08/14", "$163,000"],
    ["Michelle House", "Integration Specialist", "Sidney", "2769", "2011/06/02", "$95,400"],
    ["Suki Burks", "Developer", "London", "6832", "2009/10/22", "$114,500"],
    ["Prescott Bartlett", "Technical Author", "London", "3606", "2011/05/07", "$145,000"],
    ["Gavin Cortez", "Team Leader", "San Francisco", "2860", "2008/10/26", "$235,500"],
    ["Martena Mccray", "Post-Sales support", "Edinburgh", "8240", "2011/03/09", "$324,050"],
    ["Unity Butler", "Marketing Designer", "San Francisco", "5384", "2009/12/09", "$85,675"],
    ["Jeff Leon", "Marketer", "Washougal", "98671","1999/03/31", "$80,000"],
    ["Brady Thomas ", "Assistant", "Dallas", "50001","1990/04/12", "$200,000"],
];

var dataJson = JSON.stringify(data1);

// class values are here:
// http://getbootstrap.com/css/#type-alignment
var columns1 = [
            {title: "Name"},
            {title: "Position"},
            {title: "Office"},
            {title: "Extn."},
            {title: "Start date"},
            {title: "Salary", class:"text-right"}
        ];
        
End JavaScript


function Main()
  updateTable()
End function

function DataTable1_onclick(event)
  if typeof(event.target._DT_CellIndex) <> "object" Then return
  Dim row, col
  row = event.target._DT_CellIndex.row
  col = event.target._DT_CellIndex.column
  MsgBox "Click on " & row & ", " & col & ". Value is '" & data1[row][col] & "'."
End function

function updateTable()
  DataTable1.settings.columns = columns1
  DataTable1.settings.data = data1
  DataTable1.build()
End function

function Button1_onclick()
  data1[0][0] += "+"  'Just to make a change to the table
  updateTable()
End function

function Button2_onclick()
  var table = $("#DataTable1").DataTable()
  table.clear()

  DataTable1.settings.data = JSON.parse(dataJson)
  DataTable1.settings.data[0][0] = "George"
  SetTimeout(loadTable, 50)
End function

function loadTable()
  var table = $("#DataTable1").DataTable()
  table.rows.add(DataTable1.settings.data).draw()
End function

function Button3_onclick()
   Dim table 
   table = $("#DataTable1").DataTable() 
   $(table.rows().nodes()).removeClass("highlight")
   $(table.cells().nodes()).removeClass("highlight")
   $(table.column(2).nodes()).addClass("highlight")
End function

function Button4_onclick()
  Dim table 
   table = $("#DataTable1").DataTable() 
   $(table.rows().nodes()).removeClass("highlight")
   $(table.cells().nodes()).removeClass("highlight")
   $(table.row(2).nodes()).addClass("highlight")
End function

function Fliptoggle1_onchange()
  DataTable1.settings.ordering = Fliptoggle1.value
  updateTable()
End function

function Fliptoggle4_onchange()
  DataTable1.settings.paging = Fliptoggle4.value
  updateTable()
End function

function Fliptoggle5_onchange()
  DataTable1.settings.searching = Fliptoggle5.value
  updateTable()
End function

function dataTable_onshow()
  NSB.MsgBox("Added Brady Thomas and Mitchell Leon to the end of the table")
End function
