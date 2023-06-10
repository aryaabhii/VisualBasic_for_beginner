VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "  "
   ClientHeight    =   10560
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   16155
   LinkTopic       =   "Form1"
   ScaleHeight     =   10560
   ScaleWidth      =   16155
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4440
      Top             =   1440
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Traffic Light"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   1
      Left            =   4560
      TabIndex        =   1
      Top             =   240
      Width           =   7095
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Message"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   0
      Left            =   9480
      TabIndex        =   0
      Top             =   2400
      Width           =   4575
   End
   Begin VB.Line Line1 
      BorderWidth     =   40
      DrawMode        =   1  'Blackness
      X1              =   7440
      X2              =   7440
      Y1              =   7200
      Y2              =   9720
   End
   Begin VB.Shape Shape3 
      BackStyle       =   1  'Opaque
      Height          =   1455
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   5280
      Width           =   2175
   End
   Begin VB.Shape Shape2 
      BackStyle       =   1  'Opaque
      Height          =   1455
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   3600
      Width           =   2175
   End
   Begin VB.Shape Shape4 
      Height          =   5295
      Left            =   6240
      Shape           =   4  'Rounded Rectangle
      Top             =   1680
      Width           =   2415
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      Height          =   1455
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   1920
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n As Integer
Private Sub Timer1_Timer()
If n = 3 Then
n = 1
Else
n = n + 1
End If
Select Case n
Case 1
Shape1.BackColor = vbRed
Shape2.BackColor = vbWhite
Shape3.BackColor = vbWhite
Timer1.Interval = 5000
Label1.Caption = "Please! Wait"
Case 2
Shape1.BackColor = vbWhite
Shape2.BackColor = vbYellow
Shape3.BackColor = vbWhite
Timer1.Interval = 5000
Label1.Caption = "Get! Ready"
Case 3
Shape1.BackColor = vbWhite
Shape2.BackColor = vbWhite
Shape3.BackColor = vbGreen
Timer1.Interval = 1000
Label1.Caption = "Now! Go"
End Select
End Sub
