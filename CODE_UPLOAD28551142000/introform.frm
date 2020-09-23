VERSION 5.00
Begin VB.Form introform 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'None
   Caption         =   "Xenopolis Login"
   ClientHeight    =   4020
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "introform.frx":0000
   ScaleHeight     =   268
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   358
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton endwelcomebut 
      Caption         =   "Exit Xenopolis"
      Height          =   465
      Left            =   2970
      TabIndex        =   3
      Top             =   3375
      Width           =   1755
   End
   Begin VB.CommandButton okbut 
      Caption         =   "Enter Xenopolis"
      Height          =   465
      Left            =   705
      TabIndex        =   2
      Top             =   3360
      Width           =   1755
   End
   Begin VB.TextBox txtplanet 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   360
      Left            =   2160
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   2625
      Width           =   2730
   End
   Begin VB.TextBox txtname 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   360
      Left            =   2160
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   2160
      Width           =   2805
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   390
      Left            =   2040
      Shape           =   4  'Rounded Rectangle
      Top             =   2610
      Width           =   3015
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   390
      Left            =   2040
      Shape           =   4  'Rounded Rectangle
      Top             =   2145
      Width           =   3015
   End
End
Attribute VB_Name = "introform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub endwelcomebut_Click()
If MsgBox("Are you sure you want to exit Xenopolis ?", vbQuestion + vbYesNo, "Exit Xenopolis") = vbYes Then End
End Sub

Private Sub Form_Load()
txtname.Text = ""
txtplanet.Text = ""

End Sub

Private Sub okbut_Click()
If txtplanet.Text = "" Then GoTo Noname
Load frmspace
frmspace.Show
Me.Hide
Noname:
MsgBox "Please enter a name for your planet", vbOKOnly, "Enter a Planet Name"
End Sub
