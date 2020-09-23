VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmspace 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   " Xenopolis"
   ClientHeight    =   6705
   ClientLeft      =   765
   ClientTop       =   825
   ClientWidth     =   9585
   FillColor       =   &H0000C000&
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H000000FF&
   Icon            =   "LANDER.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   Picture         =   "LANDER.frx":000C
   ScaleHeight     =   6705
   ScaleWidth      =   9585
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton housing 
      Caption         =   "Housing"
      Height          =   375
      Left            =   240
      TabIndex        =   42
      Top             =   600
      Width           =   1815
   End
   Begin VB.CommandButton military 
      Caption         =   "Military"
      Height          =   375
      Left            =   240
      TabIndex        =   41
      Top             =   960
      Width           =   1815
   End
   Begin VB.CommandButton research 
      Caption         =   "Research"
      Height          =   375
      Left            =   240
      TabIndex        =   40
      Top             =   1320
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Attack"
      Height          =   375
      Left            =   240
      TabIndex        =   39
      Top             =   1680
      Width           =   1815
   End
   Begin VB.CommandButton clearmsg 
      Caption         =   "Clear message"
      Height          =   375
      Left            =   240
      TabIndex        =   38
      Top             =   2520
      Width           =   1815
   End
   Begin VB.CommandButton exitbut 
      Caption         =   "Exit"
      Height          =   375
      Left            =   240
      TabIndex        =   37
      Top             =   3960
      Width           =   1815
   End
   Begin VB.CommandButton soundbut 
      Caption         =   "Sound ON"
      Height          =   375
      Left            =   240
      TabIndex        =   36
      Top             =   2880
      Width           =   1815
   End
   Begin VB.CommandButton connectbut 
      Caption         =   "Disconnected"
      Height          =   375
      Left            =   240
      TabIndex        =   35
      Top             =   5400
      Width           =   1815
   End
   Begin VB.CommandButton multiok 
      Caption         =   "Multiplayer OFF"
      Height          =   375
      Left            =   240
      TabIndex        =   34
      Top             =   3600
      Width           =   1815
   End
   Begin VB.CommandButton sendscout 
      Caption         =   "Send scout"
      Height          =   375
      Left            =   240
      TabIndex        =   33
      Top             =   5760
      Width           =   1815
   End
   Begin VB.CommandButton battle 
      Caption         =   "Engage in battle"
      Height          =   375
      Left            =   240
      TabIndex        =   32
      Top             =   6120
      Width           =   1815
   End
   Begin VB.CommandButton pausebut 
      Caption         =   "Pause"
      Height          =   375
      Left            =   240
      TabIndex        =   31
      Top             =   3240
      Width           =   1815
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   4470
      Top             =   6285
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.PictureBox housepic 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   645
      Left            =   4710
      Picture         =   "LANDER.frx":4B374
      ScaleHeight     =   645
      ScaleWidth      =   2055
      TabIndex        =   20
      Top             =   4950
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   360
      Left            =   7860
      Picture         =   "LANDER.frx":4F8EC
      ScaleHeight     =   24
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   52
      TabIndex        =   5
      Top             =   6990
      Visible         =   0   'False
      Width           =   780
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   360
      Left            =   7050
      Picture         =   "LANDER.frx":5020E
      ScaleHeight     =   24
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   52
      TabIndex        =   4
      Top             =   6990
      Visible         =   0   'False
      Width           =   780
   End
   Begin VB.Timer Timer1 
      Interval        =   50
      Left            =   8685
      Top             =   6975
   End
   Begin VB.PictureBox pirate 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   360
      Left            =   4575
      Picture         =   "LANDER.frx":50B30
      ScaleHeight     =   24
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   52
      TabIndex        =   3
      Top             =   2655
      Width           =   780
   End
   Begin VB.Timer gameloop 
      Interval        =   100
      Left            =   9120
      Top             =   6975
   End
   Begin VB.PictureBox picWork 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   5115
      Left            =   120
      ScaleHeight     =   5115
      ScaleWidth      =   3615
      TabIndex        =   1
      Top             =   8520
      Width           =   3615
   End
   Begin VB.PictureBox picPad_m 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   960
      Left            =   3300
      Picture         =   "LANDER.frx":51452
      ScaleHeight     =   960
      ScaleWidth      =   2145
      TabIndex        =   0
      Top             =   7500
      Width           =   2145
   End
   Begin VB.PictureBox back 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   3060
      Left            =   7200
      Picture         =   "LANDER.frx":526D4
      ScaleHeight     =   3060
      ScaleWidth      =   2340
      TabIndex        =   6
      Top             =   3600
      Width           =   2340
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "%"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   1560
         TabIndex        =   30
         Top             =   2040
         Width           =   255
      End
      Begin VB.Label morale 
         BackStyle       =   0  'Transparent
         Caption         =   "100"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   1200
         TabIndex        =   29
         Top             =   2040
         Width           =   495
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Morale:"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   28
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label lblplanet 
         BackStyle       =   0  'Transparent
         ForeColor       =   &H00C0C0FF&
         Height          =   255
         Left            =   840
         TabIndex        =   27
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Rank 
         BackStyle       =   0  'Transparent
         Caption         =   "Sir"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   1200
         TabIndex        =   26
         Top             =   840
         Width           =   975
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Rank:"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   25
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Networth:"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   24
         Top             =   600
         Width           =   855
      End
      Begin VB.Label networth 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         ForeColor       =   &H00C0FFFF&
         Height          =   255
         Left            =   1200
         TabIndex        =   23
         Top             =   600
         Width           =   975
      End
      Begin VB.Label lblresearch 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label2"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   1200
         TabIndex        =   18
         Top             =   2280
         Width           =   585
      End
      Begin VB.Label label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Research :"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   17
         Top             =   2280
         Width           =   945
      End
      Begin VB.Label lblsoldiers 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label2"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   1200
         TabIndex        =   16
         Top             =   1800
         Width           =   585
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Androids:"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   15
         Top             =   1800
         Width           =   810
      End
      Begin VB.Label lblhouses 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label2"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   1200
         TabIndex        =   14
         Top             =   1320
         Width           =   585
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Houses :"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   13
         Top             =   1320
         Width           =   765
      End
      Begin VB.Label lblstat 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Status of Planet"
         ForeColor       =   &H00C0C0FF&
         Height          =   195
         Left            =   480
         TabIndex        =   12
         Top             =   120
         Width           =   1380
      End
      Begin VB.Label lbldate 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Date"
         ForeColor       =   &H00FF00FF&
         Height          =   195
         Left            =   975
         TabIndex        =   11
         Top             =   2760
         Width           =   435
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Money :"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   225
         TabIndex        =   10
         Top             =   1080
         Width           =   690
      End
      Begin VB.Label lblmoney 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label2"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   1200
         TabIndex        =   9
         Top             =   1080
         Width           =   1065
      End
      Begin VB.Label label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Citizens :"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   240
         TabIndex        =   8
         Top             =   1560
         Width           =   795
      End
      Begin VB.Label lblcitizens 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Label2"
         ForeColor       =   &H00C0FFFF&
         Height          =   195
         Left            =   1200
         TabIndex        =   7
         Top             =   1560
         Width           =   585
      End
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Commands"
      ForeColor       =   &H00FFFF00&
      Height          =   255
      Left            =   240
      TabIndex        =   43
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label lblmplayer 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Multiplayer"
      ForeColor       =   &H00FFFF80&
      Height          =   195
      Left            =   240
      TabIndex        =   22
      Top             =   5160
      Width           =   945
   End
   Begin VB.Label Label8 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Messages"
      ForeColor       =   &H00FFFF80&
      Height          =   195
      Left            =   2400
      TabIndex        =   21
      Top             =   240
      Width           =   855
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Options"
      ForeColor       =   &H00FFFF80&
      Height          =   195
      Left            =   240
      TabIndex        =   19
      Top             =   2280
      Width           =   675
   End
   Begin VB.Label message 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      ForeColor       =   &H0080FF80&
      Height          =   2145
      Left            =   2400
      TabIndex        =   2
      Top             =   480
      Width           =   7125
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "frmspace"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim player As plyr
Dim pcount As Long

Private Sub battle_Click()
If player.connected = True Then
If Trim(Len(player.ename)) <> 0 Then
If MsgBox("Are you sure you want to attack the planet " & player.eplanetname & " with all you current forces ? ", vbYesNo, "Attack : Begin combat") = vbYes Then
message.Caption = ""
message.Caption = message.Caption & "You deploy your forces and await the outcome..." & vbCrLf
war
End If
Else
MsgBox "You do not know anything about your enemies forces!!! Send a scout to obtain enemy information before attacking.", vbOKOnly, "Attack : Begin combat"
End If
Else
MsgBox "You are not connected yet. Click on connect to play a multiplayer game, or click on Multiplayer OFF to play a single player game.", vbExclamation + vbOKOnly, "Not connected"
End If
End Sub

Private Sub clearmsg_Click()
message.Caption = ""
End Sub


Private Sub Command1_Click()
Dim numpirates As Long
Dim outcome As Long
Dim losses As Long
Dim wcash As Long
Dim wtech As Long
Dim ransound As Integer
player.dopirate = True
Timer1.Enabled = True

If morale.Caption < 50 Then GoTo noattack
If morale.Caption > 50 Then GoTo attack

attack:
message.Caption = ""
message.Caption = message.Caption & "You deploy your soldiers to the enemy planet and begin the battle..."
message.Caption = message.Caption & vbCrLf & vbCrLf
Randomize Timer
numpirates = (Int(Rnd * 5) + 10) * Int(((player.year * 12) + (player.month * 30)) * 5 / 10)
outcome = ((player.military * 2) + (player.research * 3)) - numpirates

' Won the battle
If outcome >= 0 Then
wcash = (Int(Rnd * 100) + 1) + (Int((Rnd * 15) + 10) / 100) * player.money
wtech = (Int(Rnd * 3) + 1)
losses = Int(player.military / 8) - Int(player.research / 2)

player.money = player.money + wcash
player.research = player.research + wtech
player.military = player.military - losses

message.Caption = message.Caption & "Success!! Your men return victorious!"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "From searching the pirates wreckage, your people gain $" & Str(wcash) & " and " & Str(wtech) & " research points!"

If losses <= 0 Then
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "You did not lose any men in battle."
Else
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "You lost " & Str(losses) & " brave men in battle."
End If

message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage report :"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage inflicted : " & Str(((player.military * 4) + (player.research * 3)))
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage received  : " & Str(numpirates)
morale.Caption = morale.Caption - 12

Else ' Lost the battle
wcash = (Int(Rnd * 100) + 1) + (Int((Rnd * 15) + 10) / 100) * player.money
wtech = (Int(Rnd * 3) + 1)
losses = Int(player.military / 6) - Int(player.research / 2)

player.money = player.money - wcash
player.research = player.research - wtech
player.military = player.military - losses

If player.research <= 0 Then player.research = 0
message.Caption = message.Caption & "You have failed! Your men return defeated!"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The pirates have plundered your ships and have taken $" & Str(wcash) & " with them. They have also destroyed our research centers, causing us to lose " & Str(wtech) & " research points!!"
message.Caption = message.Caption & vbCrLf
If losses < 0 Then losses = 0
message.Caption = message.Caption & "You lost " & Str(losses) & " brave men in battle."

message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage report :"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage inflicted : " & Str(((player.military * 4) + (player.research * 3)))
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage received  : " & Str(numpirates)
morale.Caption = morale.Caption - 25
GoTo hell
End If ' End if outcome
noattack:
message.Caption = "Your morale is to low, your men will no longer go into battle"
hell:
End Sub

Private Sub exitbut_Click()
If MsgBox("Are you sure you want to exit Xenopolis ?", vbQuestion + vbYesNo, "Exit Xenopolis") = vbYes Then End
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim playername As String
Dim planetname As String

'Make sure the game is not paused
player.paused = False

'Disable pirate timer until attacked
pcount = 0
pirate.Visible = False
Timer1.Enabled = False

'hide the house picture
player.dohouse = False
housepic.Visible = False

' Initialize sound
player.dosound = True
soundbut.Caption = "Sound effects ON"

'Clear messages
message.Caption = ""

' Set game speed to 5.5 seconds per loop
gameloop.Interval = "5500"

Randomize Timer

'Initialize player data
player.citizens = 87
player.money = 15000

player.month = 1
player.day = 1
player.year = 0

player.houses = 10
player.taxes = 10

player.military = 5
player.research = 5
morale.Caption = "100"

'Get Player and Planet Name
playername$ = introform.txtname.Text
planetname$ = introform.txtplanet.Text

lblplanet.Caption = planetname$
player.name = playername$
player.planetname = planetname$

updatestats
message.Caption = "Commander " & Trim(playername$) & ", you have currently been given charge of the Planet " & Trim(planetname$) & ". In five months, the Emperor of the Galaxy will come and inspect your lands. Do not dissapoint His Majesty. Good Luck." & vbCrLf

'Set up the multiplayer stuff
player.multiok = False              'Set default to single player
hidemultibar
Winsock1.Protocol = sckUDPProtocol
Winsock1.RemotePort = 1183
Winsock1.RemoteHost = "191.0.0.2"
Winsock1.LocalPort = 1183
Winsock1.Bind

End Sub


Private Sub housing_Click()
If Str(player.houses) < 500 Then cost$ = 750
If Str(player.houses) > 500 Then cost$ = 2500
Dim canbuild As Integer
Dim howmanyhouses As String
If MsgBox("There are currently " & Trim(Str(player.houses)) & " houses and " & Trim(Str(player.citizens)) & " citizens on your planet. Each home can house up to 10 people. Would you like to build houses ?", vbYesNo, "Housing : Build houses") = vbYes Then
canbuild = Fix(player.money / cost$)
If canbuild > 0 Then
howmanyhouses$ = InputBox("With your current resources, you can build a maximum of " & Trim$(Str(canbuild)) & " houses. How many do you want to build ? ( Enter 0 to cancel )", "Housing : Build houses")
        If Val(howmanyhouses$) <= canbuild Then
        If player.dosound = True Then playsound "building.wav"
        player.money = player.money - (Val(howmanyhouses$) * cost$)
        player.houses = player.houses + Val(howmanyhouses$)
        If player.houses >= 99999999 Then player.houses = 99999999
        If player.dohouse = False Then
        player.dohouse = True
        housepic.Visible = True
        End If
        Else
        MsgBox "I'm sorry, you cannot afford to build that many houses.", vbOKOnly, "Not enough money!"
        End If
Else
MsgBox "I'm sorry, you cannot afford to build any houses.", vbOKOnly, "Not enough money!"
End If
End If
updatestats
End Sub

Private Sub military_Click()
Dim cantrain As Long
Dim howmany As String
If MsgBox("You currently own " & Trim(Str(player.military)) & " androids. Each androids costs $750. For every androids you train it will require 1 citizen Would you like to buy androids ?", vbYesNo, "Military : Buy androids") = vbYes Then
cantrain = Fix(player.money / 750)
If cantrain > 0 Then
    howmany$ = InputBox("With your current resources, you can buy a maximum of " & Trim$(Str(cantrain)) & " androids. How many would you like to buy ? ( Enter 0 to cancel )", "Military : Buy androids")
        If Val(howmany$) <= cantrain Then
        player.money = player.money - (Val(howmany$) * 500)
        player.military = player.military + Val(howmany$)
        If player.military >= 999999999 Then player.military = 999999999
        Else
        MsgBox "I'm sorry, you cannot afford to buy that many androids.", vbOKOnly, "Not enough money!"
        End If
Else
MsgBox "I'm sorry, you cannot afford to buy any androids.", vbOKOnly, "Not enough money!"
End If

End If
updatestats
End Sub

Private Sub multiok_Click()
If player.multiok = True Then
player.multiok = False
multiok.Caption = "Multiplayer OFF"
hidemultibar
Else
player.multiok = True
multiok.Caption = "Multiplayer ON"
showmultibar
End If
End Sub



Private Sub pausebut_Click()
If player.paused = True Then
player.paused = False
gameloop.Enabled = True
pausebut.Caption = "Pause"
updatestats
message.Caption = "Game unpaused"
Else
player.paused = True
gameloop.Enabled = False
pausebut.Caption = "Unpause"
message.Caption = "Game paused"
End If
End Sub

Private Sub research_Click()
Dim cantrain As Long
Dim howmany As String
If MsgBox("Your technology level is currently at " & Trim(Str(player.research)) & " points. It costs $4500 to research each point. However the higher your research points, the more your people will be able to prosper and defend themselves from enemies. Would you like to increase your research points ?", vbYesNo, "Research : Inscrease points") = vbYes Then
cantrain = Fix(player.money / 4500)
If cantrain > 0 Then
    howmany$ = InputBox("With your current resources, you can research " & Trim$(Str(cantrain)) & " points. How many points would you like to research ? ( Enter 0 to cancel )", "Research : Increase points")
        If Val(howmany$) <= cantrain Then
        player.money = player.money - (Val(howmany$) * 4500)
        player.research = player.research + Val(howmany$)
        If player.research >= 999999999 Then player.research = 999999999
        Else
        MsgBox "I'm sorry, you cannot afford to research that many points.", vbOKOnly, "Not enough money!"
        End If
Else
MsgBox "I'm sorry, you cannot afford to do any research at all.", vbOKOnly, "Not enough money!"
End If

End If
updatestats
End Sub

Private Sub gameloop_Timer()
player.day = player.day + 1
If player.day >= 30 Then
player.day = 1
player.month = player.month + 1
End If
If player.month >= 12 Then
player.month = 1
player.year = player.year + 1
End If

If player.citizens < (player.houses * 10) Then
player.citizens = Fix(player.citizens + Int((1 / 5) * ((player.houses * 10) - player.citizens))) + Int(player.research / 4)
If player.citizens >= 999999999 Then player.citizens = 999999999
End If

researchbonus$ = player.research * 0.1
upkeep$ = player.military * 0.5
player.money = player.money + (20 * player.citizens * 0.5 + researchbonus$ - upkeep$)
If player.money >= 999999999 Then player.money = 999999999


updatestats

Randomize Timer
If Int(Rnd * 6) + 1 = 2 Then attacked

End Sub

Public Sub updatestats()
' Update labels
lblmoney.Caption = Str(player.money)
lblcitizens.Caption = Str(player.citizens)
lblhouses.Caption = Str(player.houses)
lblsoldiers.Caption = Str(player.military)
lblresearch.Caption = Str(player.research) & " pts."
lbldate.Caption = Str(player.day) & " / " & Str(player.month) & " / " & Str(5000 + player.year)
If morale.Caption = 100 Then GoTo Noincrease
morale.Caption = morale.Caption + 2
Noincrease:
'Networth Formula
networth.Caption = Str(player.citizens) * 5 + Str(player.houses) * 7 + Str(player.military) * 10 + Str(player.research) * 15
'Rank System
If networth.Caption < 5000 Then Rank.Caption = "Sir"
If networth.Caption >= 5000 Then Rank.Caption = "Lord"
If networth.Caption >= 15000 Then Rank.Caption = "Captian"
If networth.Caption >= 30000 Then Rank.Caption = "General"
If networth.Caption >= 75000 Then Rank.Caption = "Prince"
If networth.Caption >= 200000 Then Rank.Caption = "Emperor"
If networth.Caption >= 1000000 Then Rank.Caption = "God"
'Update messages
If player.citizens >= (((player.houses) * 10) - 5) Then message.Caption = message.Caption & vbCrLf & "WARNING!! Your people have nowhere to live! Build more houses!"
End Sub

Public Sub attacked()
Dim numpirates As Long
Dim outcome As Long
Dim losses As Long
Dim wcash As Long
Dim wtech As Long
Dim ransound As Integer

If player.month > 3 And player.year >= 0 Then

If player.dosound = True Then

Randomize Timer
ransound = Int(Rnd * 2) + 1
Select Case ransound
Case 1: playsound "attacked.wav"
Case 2: playsound "war.wav"
End Select

End If 'end player dosound

player.dopirate = True
Timer1.Enabled = True

message.Caption = ""
message.Caption = "Your planet is under attack by a horde of inter-galactic pirates! "
message.Caption = message.Caption & "You deploy your soldiers and begin the battle..."
message.Caption = message.Caption & vbCrLf & vbCrLf
Randomize Timer
numpirates = (Int(Rnd * 5) + 10) * Int(((player.year * 12) + (player.month * 30)) * 5 / 10)
outcome = ((player.military * 4) + (player.research * 3)) - numpirates

' Won the battle
If outcome >= 0 Then
wcash = (Int(Rnd * 100) + 1) + (Int((Rnd * 15) + 10) / 100) * player.money
wtech = (Int(Rnd * 3) + 1)
losses = Int(player.military / 8) - Int(player.research / 2)

player.money = player.money + wcash
player.research = player.research + wtech
player.military = player.military - losses

message.Caption = message.Caption & "Success!! Your men return victorious!"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "From searching the pirates wreckage, your people gain $" & Str(wcash) & " and " & Str(wtech) & " research points!"

If losses <= 0 Then
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "You did not lose any men in battle."
Else
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "You lost " & Str(losses) & " brave men in battle."
End If

message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage report :"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage inflicted : " & Str(((player.military * 4) + (player.research * 3)))
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage received  : " & Str(numpirates)


Else ' Lost the battle
wcash = (Int(Rnd * 100) + 1) + (Int((Rnd * 15) + 10) / 100) * player.money
wtech = (Int(Rnd * 3) + 1)
losses = Int(player.military / 6) - Int(player.research / 2)

player.money = player.money - wcash
player.research = player.research - wtech
player.military = player.military - losses

If player.research <= 0 Then player.research = 0
message.Caption = message.Caption & "You have failed the defend your planet! Your men return defeated!"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The pirates have plundered the lands and have taken $" & Str(wcash) & " with them. They have also destroyed our research centers, causing us to lose " & Str(wtech) & " research points!!"
message.Caption = message.Caption & vbCrLf
If losses < 0 Then losses = 0
message.Caption = message.Caption & "You lost " & Str(losses) & " brave men in battle."

message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage report :"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage inflicted : " & Str(((player.military * 4) + (player.research * 3)))
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage received  : " & Str(numpirates)


End If ' End if outcome

End If ' End if player month
End Sub

Public Sub playsound(soundfile As String)
Dim Soundname As String
Dim wFlags As Integer
Dim x As Integer
    Soundname$ = App.Path & "\sounds\" & soundfile$
    wFlags% = SND_ASYNC Or SND_NODEFAULT
    x% = sndPlaySound(Soundname$, wFlags%)
End Sub

Private Sub soundbut_Click()

If player.dosound = False Then
player.dosound = True
soundbut.Caption = "Sound effects ON"
Else
player.dosound = True
player.dosound = False
soundbut.Caption = "Sound effects OFF"
End If

End Sub

Private Sub Timer1_Timer()
If player.dopirate = True Then

pcount = pcount + 1
pirate.Visible = True
If pcount > 75 Then
Timer1.Enabled = False
pirate.Visible = False
End If

Select Case Int(Rnd * 2) + 1
Case 1: pirate.Picture = Picture1.Picture
Case 2: pirate.Picture = Picture2.Picture
End Select

End If
End Sub


Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim nextaction As String

nextaction$ = ""
Winsock1.GetData nextaction$

Select Case UCase$(Trim$(nextaction$))
Case "CONNECT"
Winsock1.SendData "CONNECTOK"
player.connected = True
connectbut.Caption = "Connected"

Case "CONNECTOK"
player.connected = True

Case "GETENEMYNAME"
Winsock1.SendData "N:" & Trim(Str(Len(player.name))) & ":" & Trim(Str(Len(player.planetname))) & Trim(player.name) & Trim(player.planetname)

Case "GETHOUSES"
Winsock1.SendData "H:" & Trim(Str(player.houses))

Case "GETSOLDIERS"
Winsock1.SendData "S:" & Trim(Str(player.military))

Case "LOST"
message.Caption = message.Caption & "We have been repelled! Our men return defeated" & vbCrLf
message.Caption = message.Caption & "The enemy has retaliated and taken $" & Trim(Str(player.lcash)) & " with them."
message.Caption = message.Caption & "They have also wrecked our research centers, causing us to lose " & Trim(Str(player.ltech)) & " research points!" & vbCrLf

If player.elosses <= 0 Then player.elosses = 0
If player.losses <= 0 Then player.losses = 0
message.Caption = message.Caption & "We lost " & Trim(Str(player.elosses)) & " warriors in battle." & vbCrLf
message.Caption = message.Caption & "The enemy lost " & Trim(Str(player.elosses)) & " men in battle." & vbCrLf & vbCrLf
message.Caption = message.Caption & "Damage report :" & vbCrLf
message.Caption = message.Caption & "Damage inflicted :" & Trim(Str(player.dmginflicted)) & vbCrLf
message.Caption = message.Caption & "Damage received :" & Trim(Str(player.dmgreceived)) & vbCrLf

player.money = player.money - player.lcash
player.research = player.research - player.ltech
player.military = player.military - player.elosses

Case "WON"
message.Caption = message.Caption & "Success! We have won the war!!" & vbCrLf
message.Caption = message.Caption & "We managed to ransack the enemy's planet and earned $" & Trim(Str(player.lcash)) & "."
message.Caption = message.Caption & "we have destroyed their research centers and gained " & Trim(Str(player.ltech)) & " research points!" & vbCrLf

If player.elosses <= 0 Then player.elosses = 0
If player.losses <= 0 Then player.losses = 0
message.Caption = message.Caption & "We lost " & Trim(Str(player.elosses)) & " warriors in battle." & vbCrLf
message.Caption = message.Caption & "The enemy lost " & Trim(Str(player.elosses)) & " men in battle." & vbCrLf & vbCrLf
message.Caption = message.Caption & "Damage report :" & vbCrLf
message.Caption = message.Caption & "Damage inflicted :" & Trim(Str(player.dmginflicted)) & vbCrLf
message.Caption = message.Caption & "Damage received :" & Trim(Str(player.dmgreceived)) & vbCrLf

player.money = player.money + player.lcash
player.research = player.research + player.ltech
player.military = player.military - player.elosses

Case Else

If Left$(Trim(nextaction$), 2) = "N:" Then
player.ename = Mid(nextaction$, 6, Val(Mid(nextaction$, 3, 1)))
player.eplanetname = Mid(nextaction$, 6 + Val(Mid(nextaction$, 3, 1)), Val(Mid(nextaction$, 5, 1)))
End If

If Left$(Trim(nextaction$), 2) = "H:" Then
player.ehouses = Val(Mid(nextaction$, 3, Len(Trim(nextaction$)) - 2))
End If

If Left$(Trim(nextaction$), 2) = "S:" Then
player.emilitary = Val(Mid(nextaction$, 3, Len(Trim(nextaction$)) - 2))
End If

If Left$(Trim(nextaction$), 2) = "W:" Then
message.Caption = ""
message.Caption = "You have been attacked by forces from the planet " & Mid(nextaction$, 3, Len(Trim(nextaction$)) - 2) & "!"
player.eplanetname = Trim(Mid(nextaction$, 3, Len(Trim(nextaction$)) - 2))
retaliate
End If

If Left$(Trim(nextaction$), 3) = "LM:" Then
player.lcash = Val(Trim(Mid(nextaction$, 4, Len(Trim(nextaction$)) - 3)))
End If

If Left$(Trim(nextaction$), 3) = "LT:" Then
player.ltech = Val(Trim(Mid(nextaction$, 4, Len(Trim(nextaction$)) - 3)))
End If

If Left$(Trim(nextaction$), 3) = "LL:" Then
player.losses = Val(Trim(Mid(nextaction$, 4, Len(Trim(nextaction$)) - 3)))
End If

If Left$(Trim(nextaction$), 3) = "LE:" Then
player.elosses = Val(Trim(Mid(nextaction$, 4, Len(Trim(nextaction$)) - 3)))
End If

If Left$(Trim(nextaction$), 4) = "LDR:" Then
player.dmgreceived = Val(Trim(Mid(nextaction$, 5, Len(Trim(nextaction$)) - 4)))
End If

If Left$(Trim(nextaction$), 4) = "LDI:" Then
player.dmginflicted = Val(Trim(Mid(nextaction$, 5, Len(Trim(nextaction$)) - 4)))
End If

End Select

End Sub

Private Sub connectbut_Click()
If player.connected = True Then disconnect Else disconnect
doconnect
End Sub

Public Sub doconnect()
Dim remotehostadd As String
remotehostadd$ = InputBox("Specify IP address to connect to : ", "Remote IP Address required")
If Len(Trim$(remotehostadd$)) <> 0 Then
Winsock1.RemoteHost = remotehostadd$
Winsock1.SendData "CONNECT"
End If
End Sub

Public Sub disconnect()
Winsock1.Close
connectbut.Caption = "Disconnected"
player.connected = False
End Sub

Public Sub showmultibar()
lblmplayer.Visible = True
connectbut.Visible = True
sendscout.Visible = True
battle.Visible = True
End Sub

Public Sub hidemultibar()
lblmplayer.Visible = False
connectbut.Visible = False
sendscout.Visible = False
battle.Visible = False
End Sub

Private Sub sendscout_Click()
Dim scoutcost As Long
Randomize Timer
scoutcost = (player.military * 100) * ((Int(Rnd * 2) + 2) / 4)
If player.connected Then
If player.money < scoutcost Then
MsgBox "Commander, sending a scout to the enemy planet will cost us $" & Str(scoutcost) & ". You do not have enough money to do so.", vbInformation + vbOKOnly, "Not enough money!"
ElseIf player.money >= scoutcost Then
If MsgBox("Commander, sending a scout to the enemy planet will cost us $" & Str(scoutcost) & ". Are you sure you want to scout the enemy planet ?", vbInformation + vbYesNo, "Send Scout") = vbYes Then
player.money = player.money - scoutcost
Winsock1.SendData "GETENEMYNAME"
Winsock1.SendData "GETHOUSES"
Winsock1.SendData "GETSOLDIERS"
sendscout.Caption = "View enemy data"
doscout
End If
End If
Else
MsgBox "You are not connected yet. Click on connect to play a multiplayer game, or click on Multiplayer OFF to play a single player game.", vbExclamation + vbOKOnly, "Not connected"
End If
End Sub

Public Sub doscout()
Dim essoldiers As Long
Dim eshouses As Long
Dim prob As Long

If Len(player.ename) > 0 Then
Randomize Timer
If Int(Rnd * 2) + 1 = 1 Then
eshouses = player.ehouses + (-1 * (2 / 100) * player.ehouses)
Else
eshouses = player.ehouses + ((10 / 100) * player.ehouses)
End If

Randomize Timer
If Int(Rnd * 2) + 1 = 1 Then
essoldiers = player.emilitary + (-1 * (10 / 100) * player.emilitary)
Else
essoldiers = player.emilitary + ((10 / 100) * player.emilitary)
End If

prob = essoldiers - player.military

message.Caption = ""
message.Caption = message.Caption & "Scout Report" & vbCrLf
message.Caption = message.Caption & "Commander, I have scouted the planet of " & player.eplanetname & ", ruled by Commander " & player.ename & ". " & vbCrLf & vbCrLf
message.Caption = message.Caption & "They have about " & Str(eshouses) & " houses. Which gives them a maximum population of " & Trim(Str(eshouses * 10)) & " citizens. "
message.Caption = message.Caption & "An estimated number of " & Str(essoldiers) & " soldiers guard their planet. "

If prob < -50 And prob > -250 Then message.Caption = message.Caption & "Victory is a certainty!"
If prob < -1 And prob > -50 Then message.Caption = message.Caption & "They are nothing compared to us."
If prob <= 0 Then message.Caption = message.Caption & "We have a good chance of destroying them."
If prob > 0 And prob < 50 Then message.Caption = message.Caption & "We might have a chance against them."
If prob > 50 And prob < 250 Then message.Caption = message.Caption & "We are no match for them."
If prob > 250 Then message.Caption = message.Caption & "Attacking them would be - suicidal..."

sendscout.Caption = "Send scout"
Else
message.Caption = "Your scout returns with precious enemy information. Click on 'View enemy data' to view it"
End If
End Sub

Public Sub war()
Winsock1.SendData "W:" & Trim(player.planetname)
End Sub

Public Sub retaliate()
Dim numpirates As Long
Dim outcome As Long

Winsock1.SendData "GETENEMYNAME"
Winsock1.SendData "GETHOUSES"
Winsock1.SendData "GETSOLDIERS"

message.Caption = message.Caption & "You deploy your soldiers and begin the battle..."
message.Caption = message.Caption & vbCrLf & vbCrLf
Randomize Timer
numpirates = ((player.emilitary * 4) + (player.eresearch * 3))
outcome = ((player.military * 4) + (player.research * 3)) - numpirates

' Won the battle
If outcome >= 0 Then
wcash = (Int(Rnd * 100) + 1) + (Int((Rnd * 15) + 10) / 100) * player.money
wtech = (Int(Rnd * 3) + 1)
losses = Int(player.military / 8) - Int(player.research / 2)
elosses = Int(player.emilitary / 8) - Int(player.eresearch / 2)

player.money = player.money + wcash
player.research = player.research + wtech
player.military = player.military - losses

message.Caption = message.Caption & "Success!! Your men return victorious!"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "From searching the enemies wreckage, your people gain $" & Str(wcash) & " and " & Str(wtech) & " research points!"

If losses <= 0 Then
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "You did not lose any men in battle."
Else
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "You lost " & Str(losses) & " brave men in battle."
End If

If elosses <= 0 Then
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The enemy did not lose any men in battle."
Else
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The enemy lost " & Str(losses) & " brave men in battle."
End If

message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage report :"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage inflicted : " & Str(((player.military * 4) + (player.research * 3)))
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage received  : " & Str(numpirates)

Winsock1.SendData "LM:" & Str(wcash)
Winsock1.SendData "LT:" & Str(wtech)
Winsock1.SendData "LL:" & Str(elosses)
Winsock1.SendData "LE:" & Str(losses)
Winsock1.SendData "LDR:" & Str(((player.military * 4) + (player.research * 3)))
Winsock1.SendData "LDI:" & Str(numpirates)
Winsock1.SendData "LOST"

Else ' Lost the battle
wcash = (Int(Rnd * 100) + 1) + (Int((Rnd * 15) + 10) / 100) * player.money
wtech = (Int(Rnd * 3) + 1)
losses = Int(player.military / 6) - Int(player.research / 2)
elosses = Int(player.emilitary / 8) - Int(player.eresearch / 2)

player.money = player.money - wcash
player.research = player.research - wtech
player.military = player.military - losses

If player.research <= 0 Then player.research = 0
message.Caption = message.Caption & "You have failed the defend your planet! Your men return defeated!"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The enemy has plundered the lands and have taken $" & Str(wcash) & " with them. They have also destroyed our research centers, causing us to lose " & Str(wtech) & " research points!!"
message.Caption = message.Caption & vbCrLf
If losses < 0 Then losses = 0
message.Caption = message.Caption & "You lost " & Str(losses) & " brave men in battle."

If elosses <= 0 Then
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The enemy did not lose any men in battle."
Else
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "The enemy lost " & Str(losses) & " brave men in battle."
End If

message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage report :"
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage inflicted : " & Str(((player.military * 4) + (player.research * 3)))
message.Caption = message.Caption & vbCrLf
message.Caption = message.Caption & "Damage received  : " & Str(numpirates)

Winsock1.SendData "LM:" & Str(wcash)
Winsock1.SendData "LT:" & Str(wtech)
Winsock1.SendData "LL:" & Str(elosses)
Winsock1.SendData "LE:" & Str(losses)
Winsock1.SendData "LDR:" & Str(((player.military * 4) + (player.research * 3)))
Winsock1.SendData "LDI:" & Str(numpirates)
Winsock1.SendData "WON"

End If ' End if outcome

End Sub

