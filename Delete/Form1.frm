VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   10365
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   19125
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   18
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   10365
   ScaleWidth      =   19125
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "DELETE"
      Height          =   435
      Left            =   6000
      TabIndex        =   4
      Top             =   8520
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   735
      Left            =   4920
      TabIndex        =   3
      Top             =   960
      Width           =   5175
   End
   Begin VB.OptionButton Option2 
      Caption         =   "YEAR"
      Height          =   495
      Left            =   480
      TabIndex        =   2
      Top             =   1800
      Width           =   3975
   End
   Begin VB.OptionButton Option1 
      Caption         =   "NAME"
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   840
      Width           =   3975
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form1.frx":0000
      Height          =   5175
      Left            =   600
      TabIndex        =   0
      Top             =   3000
      Width           =   15015
      _ExtentX        =   26485
      _ExtentY        =   9128
      _Version        =   393216
      AllowUpdate     =   -1  'True
      HeadLines       =   1
      RowHeight       =   24
      AllowAddNew     =   -1  'True
      AllowDelete     =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   3720
      Top             =   4080
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   1296
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   $"Form1.frx":0015
      OLEDBString     =   $"Form1.frx":00A3
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "SELECT * FROM STUDENT WHERE 1=2"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Adodc1.RecordSource = "SELECT * FROM STUDENT ORDER BY ROLL"
Adodc1.Refresh
End Sub

Private Sub Text1_Change()
If Option1.Value = True Then
Adodc1.RecordSource = "SELECT * FROM STUDENT WHERE NAME LIKE'" + Text1.Text + "%'"
Adodc1.Refresh
Else
Adodc1.RecordSource = "SELECT * FROM STUDENT WHERE YEAR LIKE'" + Text1.Text + "%'"
Adodc1.Refresh
End If

End Sub
