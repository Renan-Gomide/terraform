# Instale o Terraform

- Vá até o site;
- Salve o arquivo.exe em uma pasta
- Adicione o local do arquivo a variável de ambiente PATH do windows
- Teste o terraform com o comando:
  > terraform version

# Instale o Google SDK

- Abram o powershell com admin e digite:

  ```bash
  (New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe", "$env:Temp\GoogleCloudSDKInstaller.exe")
  & $env:Temp\GoogleCloudSDKInstaller.exe
  ```

- No powershell como adm execute e escolha **A**:
  > Set-ExecutionPolicy Unrestricted -Scope CurrentUser
- Rode o comando abaixo para testar:
  > gcloud --version
- Faça o login com a conta correta no GCP:
  > gcloud auth application-default login
