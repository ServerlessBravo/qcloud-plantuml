# Qcloud Plantuml


## Environment Setup

```bash

# java18
sdk install java 18.0.1-zulu

# inkscape for converting svg to png
brew tap homebrew/cask
brew install --cask inkscape
```

## Generate sprites from SVGs

```bash
./generate.sh
```

## Add missing icons

```bash
mkdir -p tmp_icons
## add missing scv icons in 
./single_generation.sh
## ensure umls generated at dist
rm -rf tmp_icons
```


## Example Usage

```plantuml
@startuml

left to right direction

!define QcloudPuml https://raw.githubusercontent.com/ServerlessBravo/qcloud-plantuml/release/v1.0/dist

!includeurl QcloudPuml/QcloudCommon.puml
!includeurl QcloudPuml/Qcloud_ServerlessCloudFunction.puml
!includeurl QcloudPuml/Qcloud_APIGateway.puml
!includeurl QcloudPuml/Qcloud_CloudObjectStorage.puml

actor "Person" as personAlias

Qcloud_ServerlessCloudFunction(EventFunction, "webapp", "Tencent", "Convert data into json format")
Qcloud_APIGateway(APIGateway, "webapp", "Tencent", "Expose http/https protocols")
Qcloud_CloudObjectStorage(COS, "webapp", "Tencent", "Save users data as json")


personAlias --> APIGateway
APIGateway -->  EventFunction: Trigger Function as user requests
EventFunction -->  COS: Save data into cos

@enduml


```

架构图：

![webapp](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/ServerlessBravo/qcloud-plantuml/master/examples/apigw_trigger_func.puml)


## Reference

- Azure PlantUML: [Link](https://github.com/plantuml-stdlib/Azure-PlantUML)
- PlantUML: [Link](https://github.com/plantuml/plantuml/tree/master/tools)
