VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6855
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   9585
   LinkTopic       =   "Form1"
   ScaleHeight     =   6855
   ScaleWidth      =   9585
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS UI Gothic"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   615
      IMEMode         =   3  'DISABLE
      Left            =   4080
      LinkItem        =   "&H8000000A&"
      PasswordChar    =   "*"
      TabIndex        =   2
      Text            =   "Enter Your Password"
      Top             =   2160
      Width           =   3735
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS UI Gothic"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000A&
      Height          =   615
      Left            =   4080
      TabIndex        =   1
      Text            =   "Enter Your User Id"
      Top             =   1320
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Log In"
      BeginProperty Font 
         Name            =   "MS UI Gothic"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3120
      TabIndex        =   0
      Top             =   3360
      Width           =   3015
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Admin Login Form"
      BeginProperty Font 
         Name            =   "MS UI Gothic"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1320
      TabIndex        =   5
      Top             =   360
      Width           =   6495
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "MS UI Gothic"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1440
      TabIndex        =   4
      Top             =   2280
      Width           =   2175
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "User Id"
      BeginProperty Font 
         Name            =   "MS UI Gothic"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1440
      TabIndex        =   3
      Top             =   1440
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim username As String
Dim password As String
username = "admin"
password = "admin123"
If (username = Text1.Text And password = Text2.Text) Then
MsgBox "Login Successfully..."
Form3.Show
Else
MsgBox "Sorry! Please enter valid credentials."
End If
End Sub

Private Sub Text1_Change()
Text1.ForeColor = vbBlack
End Sub

Private Sub Text2_Change()
Text2.ForeColor = vbBlack
End Sub

Private Sub Text2_Click()
Text2.Text = ""
End Sub
Private Sub Text1_Click()
Text1.Text = ""
End Sub

