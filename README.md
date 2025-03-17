# 🌿 Plant Disease Detection

<!-- <p align="center">
  <img src="app/static/SS.png" alt="Plant Disease Detector Screenshot" width="700">
</p>

<p align="center">
  <a href="https://github.com/imskr/Plant_Disease_Detection/stargazers">
    <img src="https://img.shields.io/github/stars/imskr/Plant_Disease_Detection?style=flat-square&logo=github" alt="Stars">
  </a>
  <a href="https://github.com/imskr/Plant_Disease_Detection/network/members">
    <img src="https://img.shields.io/github/forks/imskr/Plant_Disease_Detection?style=flat-square&logo=github" alt="Forks">
  </a>
  <a href="https://github.com/imskr/Plant_Disease_Detection/issues">
    <img src="https://img.shields.io/github/issues/imskr/Plant_Disease_Detection?style=flat-square&logo=github" alt="Issues">
  </a>
  <a href="https://github.com/imskr/Plant_Disease_Detection/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/imskr/Plant_Disease_Detection?style=flat-square" alt="License">
  </a>
</p> -->

<!-- <p align="center">
  <sub>
    Created by
    <a href="https://github.com/imskr">
      <strong>Shubham Kumar </strong>
    </a>
    <strong>and</strong>
    <a href="https://github.com/imskr/Plant_Disease_Detection/graphs/contributors">
      <strong>other contributors</strong>
    </a>
  </sub>
</p> -->

---

## 📋 Table of Contents
- [Overview](#-overview)
- [Features](#-features)
- [Demo](#-demo)
- [Technologies Used](#-technologies-used)
- [Dataset](#-dataset)
- [Installation](#-installation)
  - [Prerequisites](#prerequisites)
  - [Local Setup](#local-setup)
  - [Docker Setup](#docker-setup)
- [Deployment](#-deployment)
- [Model Training](#-model-training)
- [API Reference](#-api-reference)
- [Contributing](#-contributing)
- [Acknowledgements](#-acknowledgements)
- [License](#-license)
- [Citation](#-citation)

## 🌟 Overview

Plant Disease Detection is an AI-powered web application that allows farmers and gardeners to identify plant diseases by simply uploading a photo of the affected plant. The system uses deep learning to analyze leaf images and accurately diagnose diseases across multiple plant species, helping users take prompt action to protect their crops.

Read more about this project in my article on [TowardsDataScience](https://t.co/iVmRCeUiDI?amp=1).

## ✨ Features

- **Easy-to-use Interface**: Simple drag-and-drop or file selection to upload plant images
- **Real-time Analysis**: Quick processing and immediate disease diagnosis
- **Multi-plant Support**: Covers 14 different plant species and 38 classes of diseases
- **High Accuracy**: Trained on the comprehensive PlantVillage dataset for reliable results
- **Responsive Design**: Works seamlessly on both desktop and mobile devices
- **Cross-platform**: Accessible through any modern web browser

## 🎬 Demo

<!-- <p align="center">
  <img src="app/static/SS.png" alt="Application Screenshot" width="700">
</p> -->

Upload an image of a diseased plant leaf, and the application will:
1. Process the image
2. Analyze the visual patterns
3. Identify the disease, if present
4. Display the result to the user

## 🔧 Technologies Used

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Python, FastAPI/Starlette
- **Machine Learning**: PyTorch, fastai
- **Containerization**: Docker
- **Deployment**: Google Cloud Platform, AWS Elastic Beanstalk

## 📊 Dataset

The model is trained on the [PlantVillage Dataset](https://github.com/spMohanty/PlantVillage-Dataset), which contains over 50,000 expertly curated images of healthy and diseased plant leaves across 14 species:

| Plant Species | Number of Classes | Disease Classes |
|---------------|:-----------------:|:----------------|
| Apple         | 4                 | Apple Scab, Black Rot, Cedar Apple Rust, Healthy |
| Blueberry     | 1                 | Healthy |
| Cherry        | 2                 | Powdery Mildew, Healthy |
| Corn (Maize)  | 4                 | Cercospora Leaf Spot, Common Rust, Northern Leaf Blight, Healthy |
| Grape         | 4                 | Black Rot, Esca (Black Measles), Leaf Blight, Healthy |
| Orange        | 1                 | Huanglongbing (Citrus Greening) |
| Peach         | 2                 | Bacterial Spot, Healthy |
| Bell Pepper   | 2                 | Bacterial Spot, Healthy |
| Potato        | 3                 | Early Blight, Late Blight, Healthy |
| Raspberry     | 1                 | Healthy |
| Soybean       | 1                 | Healthy |
| Squash        | 1                 | Powdery Mildew |
| Strawberry    | 2                 | Leaf Scorch, Healthy |
| Tomato        | 10                | Bacterial Spot, Early Blight, Late Blight, Leaf Mold, Septoria Leaf Spot, Spider Mites, Target Spot, Yellow Leaf Curl Virus, Mosaic Virus, Healthy |

The preprocessed dataset can be downloaded [here](https://drive.google.com/open?id=0B_voCy5O5sXMTFByemhpZllYREU).

## 🚀 Installation

### Prerequisites

- Python 3.7 or higher
- pip (Python package manager)
- Docker (optional, for containerized deployment)

### Local Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/imskr/Plant_Disease_Detection.git
   cd Plant_Disease_Detection
   ```

2. **Set up a virtual environment** (recommended):
   ```bash
   # Using venv
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate

   # Using conda
   conda create -n plant_disease_env python=3.7
   conda activate plant_disease_env
   ```

3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Start the application**:
   ```bash
   python app/server.py serve
   ```

5. **Access the application** in your browser at http://localhost:8080

### Docker Setup

For a containerized setup, ensure Docker is installed on your system. [Installation Guide](https://docs.docker.com/install/)

1. **Build and run with Docker**:
   ```bash
   docker build -t fastai-v3 .
   docker run --rm -it -p 8080:8080 fastai-v3
   ```

2. **Access the application** in your browser at http://localhost:8080

   > **Note for Windows users**: Windows 10 Pro is required for Docker.
   
   > **Note for Linux users**: If you encounter issues, try adding the `--no-cache` flag during build: `docker build --no-cache -t fastai-v3 .`

## 🌐 Deployment

### Google Cloud Platform

For deploying on GCP, follow the detailed guide in [deployment_guide/gcp_deployment.md](./deployment_guide/gcp_deployment.md).

### AWS Elastic Beanstalk

For deploying on AWS, follow the detailed guide in [deployment_guide/aws_deployment.md](./deployment_guide/aws_deployment.md).

## 🧠 Model Training

If you want to train the model yourself, several cloud-based options are available:

- **Google Cloud Platform (Intermediate)**: [Tutorial](https://course.fast.ai/start_gcp.html)
- **Gradient (Easy)**: [Tutorial](https://course.fast.ai/start_gradient.html)
- **AWS EC2 (Advanced)**: [Tutorial](https://course.fast.ai/start_aws.html)

## 📚 API Reference

The application exposes the following endpoints:

- `GET /`: Returns the main HTML page
- `POST /analyze`: Accepts an image file and returns the disease prediction
   - Request: Form-data with a key `file` containing the image
   - Response: JSON with the key `result` containing the predicted disease class

<!-- ## 🤝 Contributing

Contributions to improve the project are welcome! Please check [CONTRIBUTING.md](https://github.com/imskr/Plant_Disease_Detection/blob/master/CONTRIBUTING.md) before making a contribution.

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/amazing-feature`
3. Commit your changes: `git commit -m 'Add some amazing feature'`
4. Push to the branch: `git push origin feature/amazing-feature`
5. Open a Pull Request -->

## 🙏 Acknowledgements

- [FastAI](https://github.com/fastai/fastai) for the deep learning library
- [PlantVillage Dataset](https://github.com/spMohanty/PlantVillage-Dataset) for the training data
- All contributors who have helped improve this project

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📝 Citation

When using any part of this repository, please cite the original [Plant Village Paper](https://arxiv.org/abs/1511.08060):

```bibtex
@article{mohanty2016using,
  title={Using deep learning for image-based plant disease detection},
  author={Mohanty, Sharada P and Hughes, David P and Salathé, Marcel},
  journal={Frontiers in plant science},
  volume={7},
  pages={1419},
  year={2016},
  publisher={Frontiers}
}
```

---

<!-- <p align='center'>
  <a href="https://www.buymeacoffee.com/imskr" target="_blank">
    <img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;">
  </a>
</p> -->
