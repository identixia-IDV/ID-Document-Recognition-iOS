<div align="center">
<img alt="Identixia" src="https://raw.githubusercontent.com/identixia-IDV/identixia-assets/main/brand/logo.png" width="320"/>

<a href="https://identixia.com"><img src="https://img.shields.io/badge/Website-0F766E?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Website" /></a>
<a href="https://docs.identixia.com"><img src="https://img.shields.io/badge/Docs-0F766E?style=for-the-badge&logo=gitbook&logoColor=white" alt="Docs" /></a>
<a href="https://huggingface.co/Identixia"><img src="https://img.shields.io/badge/HuggingFace-FFD21E?style=for-the-badge&logo=huggingface&logoColor=black" alt="Hugging Face" /></a>
<a href="https://hub.docker.com/u/identixia"><img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker Hub" /></a>
<a href="https://playground.identixia.com/"><img src="https://img.shields.io/badge/Playground-0F766E?style=for-the-badge&logo=cloudplayground&logoColor=white" alt="Playground" /></a>
</div>

<div align="center">

# <img src="https://cdn.simpleicons.org/apple/000000" width="32" height="32" alt="" /> ID Document Recognition SDK for iOS — Sample App | Identixia

</div>

Integrate **ID document recognition and OCR** with the **Identixia iOS SDK**. This repository provides a native iOS sample app for reading passports, national ID cards, and driver licenses. Extract identity fields using optical character recognition (OCR), read the machine-readable zone (MRZ), and decode supported document barcodes. This recognition-only sample does not include document liveness checks.

Use the sample to build document capture and data extraction into customer onboarding, Know Your Customer (KYC), and electronic KYC (eKYC) workflows. Processing runs on the device; images are not sent to the Identixia cloud.

> For setup, integration, and API guides, see the [ID Document Recognition SDK documentation for iOS](https://docs.identixia.com). This page covers the sample repository.

## <img src="https://api.iconify.design/lucide/clipboard-list.svg?color=%230F766E" width="24" height="24" alt="" /> SDK overview

The sample includes a demo license. Your own application requires a key issued for its application identifier.

| Topic | Basic information |
| --- | --- |
| **Product** | On-device **document recognition** for iOS |
| **Runtime** | `documentrecognitionsdk` framework with embedded `document.xdb` from the Release |
| **Privacy** | All processing on device — no Identixia cloud |

---

## <img src="https://api.iconify.design/lucide/terminal.svg?color=%230F766E" width="24" height="24" alt="" /> Quick start

### <img src="https://img.shields.io/badge/-1-0F766E?style=for-the-badge" alt="" /> Clone and download the SDK libraries

```bash
git clone https://github.com/identixia-IDV/ID-Document-Recognition-iOS.git
cd ID-Document-Recognition-iOS
```

Download [`documentfullsdk.xcframework.zip`](https://github.com/identixia-IDV/ID-Document-Recognition-Liveness-Detection-iOS/releases/tag/latest) from the [ID-Document-Recognition-Liveness-Detection-iOS Releases](https://github.com/identixia-IDV/ID-Document-Recognition-Liveness-Detection-iOS/releases/tag/latest). Unzip it at the repository root so the frameworks and database packs land in the sample folders, not inside an extra directory.

### <img src="https://img.shields.io/badge/-2-0F766E?style=for-the-badge" alt="" /> Run the demo

Open the Xcode project, set your Team, and run on a physical iPhone.

### <img src="https://img.shields.io/badge/-3-0F766E?style=for-the-badge" alt="" /> Activate / license

1. Copy the id of your own app. On Android this is the application id. On iOS this is the bundle id. The sample id is `com.identixia.documentrecognition.app`.
2. Email that id and the product name to [contact@identixia.com](mailto:contact@identixia.com).
3. Replace the demo key in `DocumentReader/ViewController.swift` with the key you receive.
4. Rebuild, then continue with the next step.

### <img src="https://img.shields.io/badge/-4-0F766E?style=for-the-badge" alt="" /> First capture

Wait for the Home screen to show **Ready**, then select a demo feature. Check the license status on the Result or About screen before integrating the SDK into your own app.

---

## <img src="https://api.iconify.design/lucide/list-checks.svg?color=%230F766E" width="24" height="24" alt="" /> Features

| Capability | What it does |
| --- | --- |
| **OCR / MRZ / barcode** | Read identity fields from ID documents |
| **Document liveness** | Separate Document Liveness Detection product |

---

## <img src="https://api.iconify.design/lucide/pc-case.svg?color=%230F766E" width="24" height="24" alt="" /> System requirements

| | |
| --- | --- |
| Device | Physical iPhone |
| Tools | Xcode |

---

## <img src="https://api.iconify.design/lucide/package.svg?color=%230F766E" width="24" height="24" alt="" /> SDK installation

Download [`documentfullsdk.xcframework.zip`](https://github.com/identixia-IDV/ID-Document-Recognition-Liveness-Detection-iOS/releases/tag/latest) from the [ID-Document-Recognition-Liveness-Detection-iOS Releases](https://github.com/identixia-IDV/ID-Document-Recognition-Liveness-Detection-iOS/releases/tag/latest). Unzip it at the repository root so the frameworks and database packs land in the sample folders, not inside an extra directory.

Download the iOS runtime zip from Releases and unzip the framework at the repository root.

---

## <img src="https://api.iconify.design/lucide/rocket.svg?color=%230F766E" width="24" height="24" alt="" /> Run

Open the Xcode project, set your Team, and run on a physical iPhone.

---

## <img src="https://api.iconify.design/lucide/key-round.svg?color=%230F766E" width="24" height="24" alt="" /> SDK license and activation

1. Run the sample with the bundled key and the sample id below.
2. For your own app, email [contact@identixia.com](mailto:contact@identixia.com) with the platform, your application id or bundle id, and the features you need.
3. Put the key you receive in the same place as the demo key.
4. Rebuild. Activation runs before SDK init. If it fails, the key does not match that id.

Sample id:

- `com.identixia.documentrecognition.app`

Set the key, then activate:

https://github.com/identixia-IDV/ID-Document-Recognition-iOS/blob/aee23b8d144734f8c6f8af3a5b6be49a0d7468d9/DocumentReader/ViewController.swift#L11-L14

https://github.com/identixia-IDV/ID-Document-Recognition-iOS/blob/aee23b8d144734f8c6f8af3a5b6be49a0d7468d9/DocumentReader/ViewController.swift#L218-L218

## <img src="https://api.iconify.design/lucide/braces.svg?color=%230F766E" width="24" height="24" alt="" /> API

The following SDK methods are used by the sample and can also be called from your application.

| API | Purpose |
| --- | --- |
| `activate(license)` then `init()` | Activate the license, then initialize the engine. Run these calls in order on one background thread. |
| Camera | Live capture from the sample Home screen. |
| Gallery | Still image of a passport, national ID, or driver license. |
| `recognize` / document process | Identity, MRZ, barcode, and field text. |
| Document liveness | Not included. Use the document liveness product for that check. |

---

## <img src="https://api.iconify.design/lucide/layers.svg?color=%230F766E" width="24" height="24" alt="" /> SDKs for other platforms

| | Platform | Repo |
| --- | --- | --- |
| <img src="https://cdn.simpleicons.org/android/3DDC84" width="18" height="18" alt="" /> | Android | [ID-Document-Recognition-Android](https://github.com/identixia-IDV/ID-Document-Recognition-Android) |
| <img src="https://cdn.simpleicons.org/apple/000000" width="18" height="18" alt="" /> | iOS ← this repo | [ID-Document-Recognition-iOS](https://github.com/identixia-IDV/ID-Document-Recognition-iOS) |
| <img src="https://cdn.simpleicons.org/flutter/02569B" width="18" height="18" alt="" /> | Flutter | [ID-Document-Recognition-Flutter](https://github.com/identixia-IDV/ID-Document-Recognition-Flutter) |
| <img src="https://cdn.simpleicons.org/react/61DAFB" width="18" height="18" alt="" /> | React Native | [ID-Document-Recognition-React-Native](https://github.com/identixia-IDV/ID-Document-Recognition-React-Native) |
| <img src="https://cdn.simpleicons.org/ionic/3880FF" width="18" height="18" alt="" /> | Ionic Capacitor | [ID-Document-Recognition-Ionic-Capacitor](https://github.com/identixia-IDV/ID-Document-Recognition-Ionic-Capacitor) |
| <img src="https://cdn.simpleicons.org/apachecordova/E8E8E8" width="18" height="18" alt="" /> | Ionic Cordova | [ID-Document-Recognition-Ionic-Cordova](https://github.com/identixia-IDV/ID-Document-Recognition-Ionic-Cordova) |
| <img src="https://cdn.simpleicons.org/windows/0078D4" width="18" height="18" alt="" /> | Windows | [ID-Document-Recognition-Windows](https://github.com/identixia-IDV/ID-Document-Recognition-Windows) |
| <img src="https://cdn.simpleicons.org/docker/2496ED" width="18" height="18" alt="" /> | Linux / Docker | [ID-Document-Recognition-Docker](https://github.com/identixia-IDV/ID-Document-Recognition-Docker) |

---

## <img src="https://api.iconify.design/lucide/mail.svg?color=%230F766E" width="24" height="24" alt="" /> Contact

<div align="center">

<a href="mailto:contact@identixia.com"><img alt="Email contact@identixia.com" src="https://img.shields.io/badge/Email-contact%40identixia.com-0F766E?style=for-the-badge&logo=gmail&logoColor=white" /></a>
<a href="https://wa.me/17018854218"><img alt="WhatsApp +1 (701) 885-4218" src="https://img.shields.io/badge/WhatsApp-%2B1_(701)_885--4218-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" /></a>
<a href="https://t.me/identixia"><img alt="Telegram @identixia" src="https://img.shields.io/badge/Telegram-%40identixia-26A5E4?style=for-the-badge&logo=telegram&logoColor=white" /></a>

</div>

---
