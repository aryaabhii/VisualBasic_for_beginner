VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8160
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   19920
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   22.5
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Clear"
      Height          =   735
      Left            =   8880
      TabIndex        =   11
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "/"
      Height          =   735
      Left            =   7320
      TabIndex        =   10
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "*"
      Height          =   735
      Left            =   5760
      TabIndex        =   9
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "-"
      Height          =   735
      Left            =   4320
      TabIndex        =   8
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "+"
      Height          =   735
      Left            =   2880
      TabIndex        =   7
      Top             =   5640
      Width           =   1095
   End
   Begin VB.TextBox Text3 
      Height          =   975
      Left            =   6960
      TabIndex        =   6
      Top             =   3600
      Width           =   4815
   End
   Begin VB.TextBox Text2 
      Height          =   975
      Left            =   6960
      TabIndex        =   5
      Top             =   2520
      Width           =   4815
   End
   Begin VB.TextBox Text1 
      Height          =   975
      Left            =   6960
      TabIndex        =   4
      Top             =   1320
      Width           =   4815
   End
   Begin VB.Label Label2 
      Caption         =   "Result                          :   "
      Height          =   735
      Index           =   1
      Left            =   1560
      TabIndex        =   3
      Top             =   3600
      Width           =   4695
   End
   Begin VB.Label Label3 
      Caption         =   "Enter Second Number :"
      Height          =   735
      Left            =   1560
      TabIndex        =   2
      Top             =   2520
      Width           =   4695
   End
   Begin VB.Label Label2 
      Caption         =   "Enter First Number      :"
      Height          =   735
      Index           =   0
      Left            =   1560
      TabIndex        =   1
      Top             =   1440
      Width           =   4695
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Basic Calculator using Visual Basic:"
      Height          =   615
      Left            =   1440
      TabIndex        =   0
      Top             =   360
      Width           =   11655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
''This code of for addition.
Private Sub Command1_Click()
Text3.Text = Int(Text1.Text) + Int(Text2.Text)
End Sub

''This code of for substraction.
Private Sub Command2_Click()
Text3.Text = Int(Text1.Text) - Int(Text2.Text)
End Sub

''This code of for multiplication.
Private Sub Command3_Click()
Text3.Text = Int(Text1.Text) * Int(Text2.Text)
End Sub

''This code of for divission.
Private Sub Command4_Click()
Text3.Text = Int(Text1.Text) / Int(Text2.Text)
End Sub

''This code to clear value from text box.
Private Sub Command5_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
End Sub
