# Instalação do Terraform no Windows

1. Acesse o site oficial do Terraform: [Terraform Downloads](https://developer.hashicorp.com/terraform/downloads)
2. Salve o arquivo `.exe` em uma pasta.
3. Adicione o local do arquivo à variável de ambiente `PATH` do Windows (procure por _variáveis de ambiente_).
4. Teste a instalação do Terraform com o comando:
   ```bash
   terraform version
   ```

# Instalação do Google SDK (CLI)

1. Abra o powershell como administrador e digite:

```bash
(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe", "$env:Temp\GoogleCloudSDKInstaller.exe")
& $env:Temp\GoogleCloudSDKInstaller.exe
```

2. No powershell como adm execute e escolha **A**:
   > Set-ExecutionPolicy Unrestricted -Scope CurrentUser
3. Rode o comando abaixo para testar a instalação:
   > gcloud --version
4. Faça o login com a conta correta no GCP:
   > gcloud auth application-default login
5. Veja os projetos disponíveis:
   > gcloud projects list

# Comandos Básicos do Terraform

1. Inicialize o Terraform (_prepara o diretório de trabalho contendo arquivos de configuração do Terraform_):
   > terraform init
2. Planeje a execução (_cria um plano de execução, mostrando o que o Terraform fará quando você aplicar as mudanças_):
   > terraform plan
3. Aplique as mudanças (_aplica as mudanças necessárias para alcançar o estado desejado da configuração_):
   > terraform apply
4. Verifique o estado atual (_mostra o estado atual dos recursos gerenciados pelo Terraform_):
   > terraform show
5. Atualize o estado (_atualiza o estado do Terraform com base nos recursos reais_):
   > terraform refresh
6. Desfaça as mudanças - **IRREVERSÍVEL** -(_remove todos os recursos gerenciados pelo Terraform_):
   > terraform destroy

# Comandos Básicos do Google SDK (gcloud)

1. Liste as instâncias de VM (_lista todas as instâncias de VM no seu projeto_):
   > gcloud compute instances list
2. Inicie uma instância de VM (\*inicia uma instância de VM específica8):
   > gcloud compute instances start [INSTANCE_NAME]
3. Pare uma instância de VM (_para uma instância de VM específica_):
   > gcloud compute instances stop [INSTANCE_NAME]
4. Obtenha informações sobre uma instância de VM (_fornece detalhes sobre uma instância de VM específica_):
   > gcloud compute instances describe [INSTANCE_NAME]
5. Conecte-se à sua VM (_conecta você à sua instância de VM via SSH_):
   > gcloud compute ssh [INSTANCE_NAME] --zone=[ZONE]

_obs.: preciso ter o arquivo da serviceaccount referente ao projeto na pasta para poder ter as autorizaçoes de IAM_
