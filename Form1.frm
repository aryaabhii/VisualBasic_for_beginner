VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7905
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   12405
   LinkTopic       =   "Form1"
   ScaleHeight     =   7905
   ScaleWidth      =   12405
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Print"
      Height          =   855
      Left            =   2160
      TabIndex        =   2
      Top             =   2520
      Width           =   6255
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   4440
      TabIndex        =   1
      Top             =   960
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Message"
      BeginProperty Font 
         Name            =   "MV Boli"
         Size            =   23.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text1.Text = "Hello World"
End Sub

