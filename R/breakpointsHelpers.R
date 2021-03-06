

#' @export
.vsc.preBreakpoint <- function(){
  # set some state in session?
  # logPrint('pre breakpoint!!!')
  # request `n`
  sendWriteToStdinForFlowControl('n')
  # sendWriteToStdinEvent('n', when = "browserPrompt")
  session$state$startPaused(pausedOn = "breakpoint")
  # send breakpoint event
  sendStoppedEvent('breakpoint')
}

#' @export
.vsc.preDebugSourceBreakpoint <- function(){
  if(tracingState()){
    # set some state in session?
    # logPrint('pre breakpoint!!!')
    # request `n`
    # sendWriteToStdinEvent('n', when = "browserPrompt")
    sendWriteToStdinForFlowControl('n')
    session$state$startPaused(pausedOn = "breakpoint")
    # send breakpoint event
    sendStoppedEvent('breakpoint')
  }
}
