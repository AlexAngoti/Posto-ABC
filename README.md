# 🚗 Sistema de Abastecimento – Delphi + Firebird

Este projeto foi desenvolvido com o objetivo de **consolidar e aplicar diversos conceitos de desenvolvimento de software**, utilizando **boas práticas**, **orientação a objetos**, **interfaces** e **separação de responsabilidades**, tudo em um ambiente **100% nativo**.

O sistema simula o processo de **abastecimento de um posto de combustíveis**, envolvendo entidades como **Tanques**, **Bombas** e **Abastecimentos**, com persistência em banco de dados.

---

## 🛠️ Tecnologias Utilizadas

* **Delphi 12 (VCL)**
* **Firebird SQL 5.0**
* **FireDAC**
* **Programação Orientada a Objetos (OO)**
* **Interfaces (Contracts)**
* **Arquitetura em Camadas**
* **Padrão Repository**
* **Inteiro Nativo (sem frameworks externos)**

---

## 📐 Conceitos Aplicados

Neste projeto foram aplicados, de forma prática:

* ✔ **Orientação a Objetos**
* ✔ **Interfaces para desacoplamento**
* ✔ **Injeção de dependência manual**
* ✔ **Separação entre Domínio, Infraestrutura e UI**
* ✔ **Responsabilidade Única (SRP)**
* ✔ **Baixo acoplamento e alta coesão**
* ✔ **Repository Pattern**
* ✔ **Uso de objetos no lugar de lógica procedural**
* ✔ **Camada de domínio independente de banco e UI**

---

## 🧱 Arquitetura do Projeto

O projeto está organizado em camadas bem definidas:

```
src
├─ domain        → Entidades de negócio (Tanque, Bomba, Abastecimento)
├─ services      → Regras de cálculo e serviços
├─ repository    → Persistência (interfaces e implementações)
├─ infra         → DataModule, conexão e acesso ao banco
└─ forms         → Interface gráfica (VCL)
```

Essa organização garante:

* Facilidade de manutenção
* Evolução do sistema sem impacto nas outras camadas
* Código mais legível e testável

---

## 🗄️ Banco de Dados

* **Firebird SQL**
* Modelagem relacional com:

  * `TANQUE`
  * `BOMBA`
  * `ABASTECIMENTO`
* Uso de **chaves primárias auto-incrementais**
* Integridade referencial via **Foreign Keys**
* Scripts SQL versionados no projeto

---

## 🎯 Objetivo do Projeto

Este projeto **não tem foco comercial**, e sim **didático e técnico**, sendo utilizado para:

* Prática de boas práticas no Delphi
* Consolidação de conceitos de arquitetura
* Demonstração de conhecimento técnico
* Base para evolução futura (relatórios, APIs, etc.)

---

## 📌 Observações

* O sistema é **100% nativo**, sem uso de frameworks externos
* Todas as decisões foram pensadas visando **clareza, organização e boas práticas**
* Ideal para estudo, referência e evolução

---

## 👨‍💻 Autor

Projeto desenvolvido para estudo e aperfeiçoamento técnico em **Delphi + Firebird**, aplicando conceitos modernos de desenvolvimento em um ambiente clássico e robusto.
