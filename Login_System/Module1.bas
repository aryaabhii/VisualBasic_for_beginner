Attribute VB_Name = "Module1"
Public c As ADODB.Connection
Public r As ADODB.Recordset
Public sql As String
Public Function CONN()
Set c = New ADODB.Connection
c.Open "Provider = msdaora.1; user id = Abhijeet/Kumar; persist security info = false"
Set r = New ADODB.Recordset
End Function
