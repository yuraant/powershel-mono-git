FROM mcr.microsoft.com/powershell:ubuntu-18.04
LABEL maintainer="yura.ant@gmail.com" \ 
      name="powershell-mono-git" \
      description="Image includes: curl, git, powershell 6.2, mono PWSH-Module Pester" \
      version="0.2.0"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y binutils curl git mono-devel ca-certificates-mono fsharp mono-vbnc nuget \
  && rm -rf /var/lib/apt/lists/* /tmp/* 

RUN ["pwsh", "-c", "Install-Module -AcceptLicense -Confirm -Name Pester"]



