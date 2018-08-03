#include "../cefqtclient/clientapp.h"
#include <Windows.h>
#include <tchar.h>

int _tWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    LPTSTR lpCmdLine, int nCmdShow)
//int main(int argc, char *argv[])
{
  CefMainArgs main_args((HINSTANCE)GetModuleHandle(0));
  
  CefRefPtr<ClientApp> app(new ClientApp);

  return CefExecuteProcess(main_args, app.get(), 0);
}
