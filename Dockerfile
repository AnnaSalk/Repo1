# escape=`

FROM mcr.microsoft.com/dotnet/framework/sdk:4.7.2

WORKDIR 'C:\app'

#zip is not working, tar is
#ADD 6-21/89690.zip .\
COPY 6-21/89690 .\
COPY 6-21/DatabaseSettings.xml .\Debug
# copy 'DB settings' & 'APP SETTINGS PROXY'
ENTRYPOINT ["vstest.console.exe"]
#ENTRYPOINT ["cmd"]
#CMD[""]



