VERSION 5.00
Begin VB.MDIForm MDI 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   5865
   ClientLeft      =   165
   ClientTop       =   810
   ClientWidth     =   10740
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu File 
      Caption         =   "File"
      Begin VB.Menu New 
         Caption         =   "New"
      End
      Begin VB.Menu New_Window 
         Caption         =   "New_Window"
      End
      Begin VB.Menu Open 
         Caption         =   "Open..."
      End
      Begin VB.Menu Save 
         Caption         =   "Save"
      End
      Begin VB.Menu Save_As 
         Caption         =   "Save_As..."
      End
      Begin VB.Menu Page_Up 
         Caption         =   "Page_Up..."
      End
      Begin VB.Menu Print 
         Caption         =   "Print..."
      End
      Begin VB.Menu Exit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu Edit 
      Caption         =   "Edit"
      Begin VB.Menu Undo 
         Caption         =   "Undo"
      End
      Begin VB.Menu Cut 
         Caption         =   "Cut"
      End
      Begin VB.Menu Copy 
         Caption         =   "Copy"
      End
      Begin VB.Menu Paste 
         Caption         =   "Paste"
      End
      Begin VB.Menu Delete 
         Caption         =   "Delete"
      End
      Begin VB.Menu Search_with_Bing 
         Caption         =   "Search_with_Bing..."
      End
      Begin VB.Menu Find 
         Caption         =   "Find..."
      End
      Begin VB.Menu Find_Next 
         Caption         =   "Find_Next"
      End
      Begin VB.Menu Find_Previous 
         Caption         =   "Find_Previous"
      End
      Begin VB.Menu Replace 
         Caption         =   "Replace..."
      End
      Begin VB.Menu Go_To 
         Caption         =   "Go_To..."
      End
      Begin VB.Menu Select_All 
         Caption         =   "Select_All"
      End
      Begin VB.Menu Date_Time 
         Caption         =   "Date_Time"
      End
   End
   Begin VB.Menu Format 
      Caption         =   "Format"
      Begin VB.Menu Word_Wrap 
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
         Begin VB.Menu Zoom_In 
            Caption         =   "Zoom_In"
         End
         Begin VB.Menu Zoom_Out 
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
Attribute VB_Name = "MDI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim f As New Form3

Private Sub Exit_Click()
r = MsgBox("Do You Want to Exit!", vbInformation + vbYesNoCancel, "For Exit")
If r = vbYes Then
End
End Sub

Private Sub New_Click()
Set f = New Form3
f.Show
End Sub

