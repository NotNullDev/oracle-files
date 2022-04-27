# Fix for exception occuring while building Default Domain

    cmd.exe /c ""C:\Oracle\Middleware\Oracle_Home\oracle_common\common\bin\wlst.cmd" "C:\Users\nauana.nonato\AppData\Roaming\JDeveloper\system12.2.1.4.42.190911.2248\o.j2ee.adrs\BuildDefaultDomain1.py""
    Cannot run program "cmd.exe" (in directory "C:\Oracle\Middleware\Oracle_Home\oracle_common\common\bin"): Malformed argument has embedded quote: "C:\Oracle\Middleware\Oracle_Home\oracle_common\common\bin\wlst.cmd" "C:\Users\nauana.nonato\AppData\Roaming\JDeveloper\system12.2.1.4.42.190911.2248\o.j2ee.adrs\BuildDefaultDomain1.py"
    java.io.IOException: Cannot run program "cmd.exe" (in directory "C:\Oracle\Middleware\Oracle_Home\oracle_common\common\bin"): Malformed argument has embedded quote: "C:\Oracle\Middleware\Oracle_Home\oracle_common\common\bin\wlst.cmd" "C:\Users\nauana.nonato\AppData\Roaming\JDeveloper\system12.2.1.4.42.190911.2248\o.j2ee.adrs\BuildDefaultDomain1.py"
        at java.lang.ProcessBuilder.start(ProcessBuilder.java:1048)
        at oracle.jdevimpl.adrs.weblogic.wlst.ScriptRunnerImpl.runScript(ScriptRunnerImpl.java:106)
        at oracle.jdevimpl.adrs.weblogic.builder.DomainScriptRunnerImpl.runScript(DomainScriptRunnerImpl.java:146)
        at oracle.jdevimpl.adrs.weblogic.builder.DefaultDomainBuilder.createDomain(DefaultDomainBuilder.java:606)
        at oracle.jdevimpl.adrs.weblogic.builder.DefaultDomainBuilder.build(DefaultDomainBuilder.java:274)
        at oracle.jdevimpl.adrs.weblogic.builder.DefaultDomainBuilder$1.run(DefaultDomainBuilder.java:225)
        at org.openide.util.RequestProcessor$Task.run(RequestProcessor.java:1443)
        at org.netbeans.modules.openide.util.GlobalLookup.execute(GlobalLookup.java:68)
        at org.openide.util.lookup.Lookups.executeWith(Lookups.java:303)
        at org.openide.util.RequestProcessor$Processor.run(RequestProcessor.java:2058)
    Caused by: java.lang.IllegalArgumentException: Malformed argument has embedded quote: "C:\Oracle\Middleware\Oracle_Home\oracle_common\common\bin\wlst.cmd" "C:\Users\nauana.nonato\AppData\Roaming\JDeveloper\system12.2.1.4.42.190911.2248\o.j2ee.adrs\BuildDefaultDomain1.py"
        at java.lang.ProcessImpl.needsEscaping(ProcessImpl.java:279)
        at java.lang.ProcessImpl.createCommandLine(ProcessImpl.java:202)
        at java.lang.ProcessImpl.<init>(ProcessImpl.java:436)
        at java.lang.ProcessImpl.start(ProcessImpl.java:140)
        at java.lang.ProcessBuilder.start(ProcessBuilder.java:1029)
        ... 9 more
