use oocui
import iup/Core

main: func (argc:Int, argv: CString*) {
	IUP open(argc&, argv&)
	Handle dialog(Handle label("hello world")) show()
	IUP mainLoop()
	IUP close()
}