program decoherence_desktop;

{$INCLUDE compilerconfig.inc}

{$IFDEF RELEASE}
  {$DEFINE WriteLog}
  {$IFDEF Windows}{$APPTYPE GUI}{$ENDIF}
{$ENDIF}

Uses {$IFDEF useCMEM}cmem,{$ENDIF}{$IFDEF UNIX}cthreads,{$ENDIF} SysUtils,
  decoglobal, Decoherence;

{$R *.res}

begin
  {$IFDEF DEBUG}{$IFDEF HEAP_FILE}
  if FileExists('heap.trc') then
    DeleteFile('heap.trc');
    // Set up -gh output for the Leakview package:
    SetHeapTraceOutput('heap.trc');
  {$ENDIF}{$ENDIF}
  Window.OpenAndRun;
end.

