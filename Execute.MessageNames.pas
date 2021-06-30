unit Execute.MessageNames;

// (c)2021 Execute SARL

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  Vcl.Controls,
  System.SysUtils;

function MessageName(Msg: Cardinal): string;
function VirtualKey(Key: WPARAM): string;

implementation

function MessageName(Msg: Cardinal): string;
const
  WM_UAHDESTROYWINDOW     = $0090;
  WM_UAHDRAWMENU          = $0091;
  WM_UAHDRAWMENUITEM      = $0092;
  WM_UAHINITMENU          = $0093;
  WM_UAHMEASUREMENUITEM   = $0094;
  WM_UAHNCPAINTMENUPOPUP  = $0095;
begin
  case Msg of
    WM_CREATE               : Result := 'WM_CREATE';              // $0001
    WM_DESTROY              : Result := 'WM_DESTROY';             // $0002
    WM_MOVE                 : Result := 'WM_MOVE';                // $0003
    WM_SIZE                 : Result := 'WM_SIZE';                // $0005
    WM_ACTIVATE             : Result := 'WM_ACTIVATE';            // $0006
    WM_SETFOCUS             : Result := 'WM_SETFOCUS';            // $0007
    WM_KILLFOCUS            : Result := 'WM_KILLFOCUS';           // $0008
    WM_SETTEXT              : Result := 'WM_SETTEXT';             // $000C
    WM_GETTEXT              : Result := 'WM_GETTEXT';             // $000D
    WM_GETTEXTLENGTH        : Result := 'WM_GETTEXTLENGTH';       // $000E
    WM_PAINT                : Result := 'WM_PAINT';               // $000F
    WM_QUIT                 : Result := 'WM_QUIT';                // $0012
    WM_ERASEBKGND           : Result := 'WM_ERASEBKGND';          // $0014
    WM_SHOWWINDOW           : Result := 'WM_SHOWWINDOW';          // $0018
    WM_ACTIVATEAPP          : Result := 'WM_ACTIVATEAPP';         // $001C
    WM_SETCURSOR            : Result := 'WM_SETCURSOR';           // $0020
    WM_MOUSEACTIVATE        : Result := 'WM_MOUSEACTIVATE';       // $0021
    WM_GETMINMAXINFO        : Result := 'WM_GETMINMAXINFO';       // $0024
    WM_SETFONT              : Result := 'WM_SETFONT';             // $0030
    WM_GETFONT              : Result := 'WM_GETFONT';             // $0031
    WM_GETOBJECT            : Result := 'WM_GETOBJECT';           // $003D
    WM_WINDOWPOSCHANGING    : Result := 'WM_WINDOWPOSCHANGING';   // $0046
    WM_WINDOWPOSCHANGED     : Result := 'WM_WINDOWPOSCHANGED';    // $0047
    WM_NOTIFY               : Result := 'WM_NOTIFY';              // $004E
    WM_NOTIFYFORMAT         : Result := 'WM_NOTIFYFORMAT';        // $0055
    WM_STYLECHANGING        : Result := 'WM_STYLECHANGING';       // $007C
    WM_STYLECHANGED         : Result := 'WM_STYLECHANGED';        // $007D
    WM_GETICON              : Result := 'WM_GETICON';             // $007F
    WM_SETICON              : Result := 'WM_SETICON';             // $0080
    WM_NCCREATE             : Result := 'WM_NCCREATE';            // $0081
    WM_NCDESTROY            : Result := 'WM_NCDESTROY';           // $0082
    WM_NCCALCSIZE           : Result := 'WM_NCCALCSIZE';          // $0083
    WM_NCHITTEST            : Result := 'WM_NCHITTEST';           // $0084
    WM_NCPAINT              : Result := 'WM_NCPAINT';             // $0085
    WM_NCACTIVATE           : Result := 'WM_NCACTIVATE';          // $0086
    WM_GETDLGCODE           : Result := 'WM_GETDLGCODE';          // $0087
    WM_UAHDESTROYWINDOW     : Result := 'WM_UAHDESTROYWINDOW';    // $0090
    WM_UAHDRAWMENU          : Result := 'WM_UAHDRAWMENU';         // $0091
    WM_UAHDRAWMENUITEM      : Result := 'WM_UAHDRAWMENUITEM';     // $0092
    WM_UAHINITMENU          : Result := 'WM_UAHINITMENU';         // $0093
    WM_UAHMEASUREMENUITEM   : Result := 'WM_UAHMEASUREMENUITEM';  // $0094
    WM_UAHNCPAINTMENUPOPUP  : Result := 'WM_UAHNCPAINTMENUPOPUP'; // $0095
    WM_NCMOUSEMOVE          : Result := 'WM_NCMOUSEMOVE';         // $00A0
    WM_NCLBUTTONDOWN        : Result := 'WM_NCLBUTTONDOWN';       // $00A1
    EM_GETSEL               : Result := 'EM_GETSEL';              // $00B0
    EM_SETSEL               : Result := 'EM_SETSEL';              // $00B1
    EM_GETLINECOUNT         : Result := 'EM_GETLINECOUNT';        // $00BA
    EM_LINEINDEX            : Result := 'EM_LINEINDEX';           // $00BB
    EM_REPLACESEL           : Result := 'EM_REPLACESEL';          // $00C2
    EM_LINEFROMCHAR         : Result := 'EM_LINEFROMCHAR';        // $00C9
    EM_GETFIRSTVISIBLELINE  : Result := 'EM_GETFIRSTVISIBLELINE'; // $00CE
    EM_POSFROMCHAR          : Result := 'EM_POSFROMCHAR';         // $00D6
    WM_KEYDOWN              : Result := 'WM_KEYDOWN';             // $0100
    WM_KEYUP                : Result := 'WM_KEYUP';               // $0101
    WM_CHAR                 : Result := 'WM_CHAR';                // $0102
    WM_COMMAND              : Result := 'WM_COMMAND';             // $0111
    WM_SYSCOMMAND           : Result := 'WM_SYSCOMMAND';          // $0112
    WM_TIMER                : Result := 'WM_TIMER';               // $0113
    WM_VSCROLL              : Result := 'WM_VSCROLL';             // $0115
    WM_UPDATEUISTATE        : Result := 'WM_UPDATEUISTATE';       // $0128
    WM_QUERYUISTATE         : Result := 'WM_QUERYUISTATE';        // $0129
    WM_CTLCOLOREDIT         : Result := 'WM_CTLCOLOREDIT';        // $0133
    WM_MOUSEMOVE            : Result := 'WM_MOUSEMOVE';           // $0200
    WM_LBUTTONDOWN          : Result := 'WM_LBUTTONDOWN';         // $0201
    WM_LBUTTONUP            : Result := 'WM_LBUTTONUP';           // $0202
    WM_RBUTTONUP            : Result := 'WM_RBUTTONUP';           // $0205
    WM_RBUTTONDBLCLK        : Result := 'WM_RBUTTONDBLCLK';       // $0206
    WM_PARENTNOTIFY         : Result := 'WM_PARENTNOTIFY';        // $0210
    WM_SIZING               : Result := 'WM_SIZING';              // $0214
    WM_CAPTURECHANGED       : Result := 'WM_CAPTURECHANGED';      // $0215
    WM_MOVING               : Result := 'WM_MOVING';              // $0216
    WM_ENTERSIZEMOVE        : Result := 'WM_ENTERSIZEMOVE';       // $0231
    WM_EXITSIZEMOVE         : Result := 'WM_EXITSIZEMOVE';        // $0232
    WM_IME_SETCONTEXT       : Result := 'WM_IME_SETCONTEXT';      // $0281
    WM_IME_NOTIFY           : Result := 'WM_IME_NOTIFY';          // $0282
    WM_NCMOUSELEAVE         : Result := 'WM_NCMOUSELEAVE';        // $02A2
    WM_MOUSELEAVE           : Result := 'WM_MOUSELEAVE';          // $02A3
    WM_DPICHANGED           : Result := 'WM_DPICHANGED';          // $02E0
    WM_PRINTCLIENT          : Result := 'WM_PRINTCLIENT';         // $0312
    WM_USER                 : Result := 'WM_USER';                // $0400
    WM_USER + 1..WM_APP - 1 :
      case Msg of
      // RichEdit
        WM_USER + 49 : Result := 'EM_SCROLLCARET';
        WM_USER + 50 : Result := 'EM_CANPASTE';
        WM_USER + 51 : Result := 'EM_DISPLAYBAND';
        WM_USER + 52 : Result := 'EM_EXGETSEL';
        WM_USER + 53 : Result := 'EM_EXLIMITTEXT';
        WM_USER + 54 : Result := 'EM_EXLINEFROMCHAR';
        WM_USER + 55 : Result := 'EM_EXSETSEL';
        WM_USER + 56 : Result := 'EM_FINDTEXT';
        WM_USER + 57 : Result := 'EM_FORMATRANGE';
        WM_USER + 58 : Result := 'EM_GETCHARFORMAT';
        WM_USER + 59 : Result := 'EM_GETEVENTMASK';
        WM_USER + 60 : Result := 'EM_GETOLEINTERFACE';
        WM_USER + 61 : Result := 'EM_GETPARAFORMAT';
        WM_USER + 62 : Result := 'EM_GETSELTEXT';
        WM_USER + 63 : Result := 'EM_HIDESELECTION';
        WM_USER + 64 : Result := 'EM_PASTESPECIAL';
        WM_USER + 65 : Result := 'EM_REQUESTRESIZE';
        WM_USER + 66 : Result := 'EM_SELECTIONTYPE';
        WM_USER + 67 : Result := 'EM_SETBKGNDCOLOR';
        WM_USER + 68 : Result := 'EM_SETCHARFORMAT';
        WM_USER + 69 : Result := 'EM_SETEVENTMASK';
        WM_USER + 70 : Result := 'EM_SETOLECALLBACK';
        WM_USER + 71 : Result := 'EM_SETPARAFORMAT';
        WM_USER + 72 : Result := 'EM_SETTARGETDEVICE';
        WM_USER + 73 : Result := 'EM_STREAMIN';
        WM_USER + 74 : Result := 'EM_STREAMOUT';
        WM_USER + 75 : Result := 'EM_GETTEXTRANGE';
        WM_USER + 76 : Result := 'EM_FINDWORDBREAK';
        WM_USER + 77 : Result := 'EM_SETOPTIONS';
        WM_USER + 78 : Result := 'EM_GETOPTIONS';
        WM_USER + 79 : Result := 'EM_FINDTEXTEX';
        WM_USER + 80 : Result := 'EM_GETWORDBREAKPROCEX';
        WM_USER + 81 : Result := 'EM_SETWORDBREAKPROCEX';
      // RichEdit 2.0
        WM_USER + 82 : Result := 'EM_SETUNDOLIMIT';
        WM_USER + 84 : Result := 'EM_REDO';
        WM_USER + 85 : Result := 'EM_CANREDO';
        WM_USER + 86 : Result := 'EM_GETUNDONAME';
        WM_USER + 87 : Result := 'EM_GETREDONAME';
        WM_USER + 88 : Result := 'EM_STOPGROUPTYPING';
        WM_USER + 89 : Result := 'EM_SETTEXTMODE';
        WM_USER + 90 : Result := 'EM_GETTEXTMODE';
      else
        Result := 'WM_USER + ' + IntToStr(Msg - WM_USER);
      end;
    WM_APP                  : Result := 'WM_APP';                 // $8000
    WM_APP + 1.. CM_BASE - 1: Result := 'WM_APP + ' + IntToStr(Msg - WM_APP);
    CM_BASE..CN_BASE - 1    :                                     // $B000
      case Msg of
        CM_DEACTIVATE         : Result := 'CM_DEACTIVATE';          // +1
        CM_CANCELMODE         : Result := 'CM_CANCELMODE';          // +4
        CM_FOCUSCHANGED       : Result := 'CM_FOCUSCHANGED';        // +7
        CM_VISIBLECHANGED     : Result := 'CM_VISIBLECHANGED';      // +11
        CM_TEXTCHANGED        : Result := 'CM_TEXTCHANGED';         // +18
        CM_MOUSEENTER         : Result := 'CM_MOUSEENTER';          // +19
        CM_MOUSELEAVE         : Result := 'CM_MOUSELEAVE';          // +20
        CM_SHOWINGCHANGED     : Result := 'CM_SHOWINGCHANGED';      // +25
        CM_ENTER              : Result := 'CM_ENTER';               // +26
        CM_EXIT               : Result := 'CM_EXIT';                // +27
        CM_DESIGNHITTEST      : Result := 'CM_DESIGNHITTEST';       // +28
        CM_WANTSPECIALKEY     : Result := 'CM_WANTSPECIALKEY';      // +30
        CM_RELEASE            : Result := 'CM_RELEASE';             // +33
        CM_UIACTIVATE         : Result := 'CM_UIACTIVATE';          // +41
        CM_CONTROLLISTCHANGE  : Result := 'CM_CONTROLLISTCHANGE';   // +44
        CM_CHILDKEY           : Result := 'CM_CHILDKEY';            // +46
        CM_HINTSHOW           : Result := 'CM_HINTSHOW';            // +48
        CM_RECREATEWND        : Result := 'CM_RECREATEWND';         // +51
        CM_INVALIDATE         : Result := 'CM_INVALIDATE';          // +52
        CM_ACTIONUPDATE       : Result := 'CM_ACTIONUPDATE';        // +63
        CM_ACTIONEXECUTE      : Result := 'CM_ACTIONEXECUTE';       // +64
        CM_HINTSHOWPAUSE      : Result := 'CM_HINTSHOWPAUSE';       // +65
        CM_MOUSEACTIVATE      : Result := 'CM_MOUSEACTIVATE';       // +75
        CM_CONTROLLISTCHANGING: Result := 'CM_CONTROLLISTCHANGING'; // +76
        CM_UNTHEMECONTROL     : Result := 'CM_UNTHEMECONTROL';      // +78
      else
        Result := 'CM_BASE + ' + IntToStr(Msg - CM_BASE) + ' / 0x' + IntToHex(Msg, 4) + ' / ' + IntToStr(Msg);
      end;
    CN_BASE..CN_BASE + $FFFF:
      Result := 'CN_BASE + ' + MessageName(Msg - CN_BASE) + ' / 0x' + IntToHex(Msg, 4) + ' / ' + IntToStr(Msg);        // $BC00
  else
    Result := '0x' + IntToHex(Msg, 4) + ' / ' + IntToStr(Msg);
  end;
end;

function VirtualKey(Key: WPARAM): string;
begin
  case Key of
    VK_RETURN : Result := 'VK_RETURN';
    VK_ESCAPE : Result := 'VK_ESCAPE';
    VK_SPACE  : Result := 'VK_SPACE';
    VK_SHIFT  : Result := 'VK_SHIFT';
    VK_CONTROL: Result := 'VK_CONTROL';
    VK_HOME   : Result := 'VK_HOME';
    VK_END    : Result := 'VK_END';
    VK_LEFT   : Result := 'VK_LEFT';
    VK_RIGHT  : Result := 'VK_RIGHT';
    Ord('A')..Ord('Z') : Result := Char(Key);
  else
    Result := IntToStr(Key) + ' / 0x' + IntTOHex(Key, 4);
  end;
end;

end.
