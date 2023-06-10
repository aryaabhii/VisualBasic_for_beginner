VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6060
   ClientLeft      =   165
   ClientTop       =   810
   ClientWidth     =   14430
   LinkTopic       =   "Form1"
   ScaleHeight     =   6060
   ScaleWidth      =   14430
   StartUpPosition =   3  'Windows Default
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   6135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   14535
      _ExtentX        =   25638
      _ExtentY        =   10821
      _Version        =   393217
      Appearance      =   0
      TextRTF         =   $"Form1.frx":0000
   End
   Begin VB.Menu File 
      Caption         =   "File"
      Begin VB.Menu New 
         Caption         =   "New"
         Shortcut        =   ^N
      End
      Begin VB.Menu New_Window 
         Caption         =   "New_Window"
      End
      Begin VB.Menu Open 
         Caption         =   "Open..."
         Shortcut        =   ^O
      End
      Begin VB.Menu Save 
         Caption         =   "Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu Save_As 
         Caption         =   "Save_As..."
      End
      Begin VB.Menu Page_Setup 
         Caption         =   "Page_Setup..."
      End
      Begin VB.Menu Print 
         Caption         =   "Print..."
         Shortcut        =   ^P
      End
      Begin VB.Menu Exit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu Edit 
      Caption         =   "Edit"
      Begin VB.Menu Undo 
         Caption         =   "Undo"
         Shortcut        =   ^Z
      End
      Begin VB.Menu Cut 
         Caption         =   "Cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu Copy 
         Caption         =   "Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu Paste 
         Caption         =   "Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu Delete 
         Caption         =   "Delete"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu Search_with_Bing 
         Caption         =   "Search_with_Bing..."
         Shortcut        =   ^E
      End
      Begin VB.Menu Find 
         Caption         =   "Find"
         Shortcut        =   ^F
      End
      Begin VB.Menu Previous 
         Caption         =   "Find_Previous"
         Shortcut        =   {F3}
      End
      Begin VB.Menu Next 
         Caption         =   "FInd_Next"
         Shortcut        =   +{F3}
      End
      Begin VB.Menu Replace 
         Caption         =   "Replace"
         Shortcut        =   ^H
      End
      Begin VB.Menu Go_To 
         Caption         =   "Go_To..."
         Shortcut        =   ^G
      End
      Begin VB.Menu Select_All 
         Caption         =   "Select_All"
         Shortcut        =   ^A
      End
      Begin VB.Menu Time_Date 
         Caption         =   "Time_Date"
         Shortcut        =   {F5}
      End
   End
   Begin VB.Menu Format 
      Caption         =   "Format"
      Begin VB.Menu Find_Previous 
         Caption         =   "Word_Wrap"
      End
      Begin VB.Menu Font 
         Caption         =   "Font..."
      End
   End
   Begin VB.Menu View 
      Caption         =   "View"
      Begin VB.Menu Zoom 
         Caption         =   "Zoom"
         Begin VB.Menu Zoom_In1 
            Caption         =   "Zoom_In"
         End
         Begin VB.Menu Zoom_In 
            Caption         =   "Zoom_Out"
         End
         Begin VB.Menu Restore_Default_Zoom 
            Caption         =   "Restore_Default_Zoom"
         End
      End
      Begin VB.Menu Status_Bar 
         Caption         =   "Status_Bar"
      End
   End
   Begin VB.Menu Help 
      Caption         =   "Help"
      Begin VB.Menu View_Help 
         Caption         =   "View_Help"
      End
      Begin VB.Menu Send_Feedback 
         Caption         =   "Send_Feedback"
      End
      Begin VB.Menu About_Notepad 
         Caption         =   "About_Notepad"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Exit_Click()
End
End Sub

Private Sub Font_Click()

End Sub

Private Sub Form_resize()
RichTextBox1.Width = Form1.ScaleWidth
RichTextBox1.Height = Form1.ScaleHeight
End Sub

Private Sub New_Click()
Form1.Show
End Sub

Private Sub Open_Click()
commondialog1.showopen
RichTextBox1.LoadFile commondialog1.FileName
End Sub

Private Sub Save_Click()
commondialog1.Showsave
RichTextBox1.SaveFile commondialog1.FileName
End Sub
