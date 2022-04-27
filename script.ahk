~Alt::IsDoubleClick() ? (RemapKeys := !RemapKeys) : ""

#If RemapKeys
       Down::Numpad0
	Up::Numpad1
	Delete::NumpadDiv
       Home::NumpadMult
       PgUp::NumpadSub
       PgDn::NumpadAdd
	
       Right::NumpadDot 
       Esc::Numpad0
       F1::Numpad1
       F2::Numpad2
       F3::Numpad3
       F4::Numpad4
       F5::Numpad5
       F6::Numpad6
       F7::Numpad7
       F8::Numpad8
       F9::Numpad9


#If

IsDoubleClick() {
	static doubleClickTime := DllCall("GetDoubleClickTime")
	KeyWait, % LTrim(A_ThisHotkey, "~")
	return (A_ThisHotKey = A_PriorHotKey) && (A_TimeSincePriorHotkey <= doubleClickTime)
}
