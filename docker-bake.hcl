variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "APP" {
    default = "invokeai"
}

variable "RELEASE" {
    default = "4.2.7"
}

variable "CU_VERSION" {
    default = "121"
}

variable "BASE_IMAGE_REPOSITORY" {
    default = "ashleykza/runpod-base"
}

variable "BASE_IMAGE_VERSION" {
    default = "2.1.1"
}

variable "CUDA_VERSION" {
    default = "12.1.1"
}

variable "TORCH_VERSION" {
    default = "2.2.2"
}

variable "PYTHON_VERSION" {
    default = "3.11"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}"]
    args = {
        RELEASE = "${RELEASE}"
        BASE_IMAGE = "${BASE_IMAGE_REPOSITORY}:${BASE_IMAGE_VERSION}-python${PYTHON_VERSION}-cuda${CUDA_VERSION}-torch${TORCH_VERSION}"
        INDEX_URL = "https://download.pytorch.org/whl/cu${CU_VERSION}"
        TORCH_VERSION = "${TORCH_VERSION}+cu${CU_VERSION}"
        XFORMERS_VERSION = "0.0.25.post1"
        INVOKEAI_VERSION = "${RELEASE}"
        APP_MANAGER_VERSION = "1.2.1"
        CIVITAI_DOWNLOADER_VERSION = "2.1.0"
    }
}
