# SecuraLocal AI: On-Device Code Security Auditor

SecuraLocal AI is an offline, privacy-first desktop application designed to audit local codebases for security vulnerabilities (OWASP Top 10) and generate secure patches instantly using on-device AI.

## 🚀 Why Snapdragon & ONNX?
Cloud-based AI coding tools require sending proprietary source code to external servers. This tool ensures **Zero-Cloud Privacy** by executing entirely on your local machine.

It is optimized for **Snapdragon-powered HP PCs** by leveraging the ONNX Runtime with the `QNNExecutionProvider`. By offloading the LLM inference (using TinyLlama-ONNX) to the Hexagon NPU, the application achieves:
- **Sub-second latency** for patch generation.
- **Zero battery drain** compared to heavy discrete GPU inference.
- **100% data privacy** as no network requests are ever made.

## 🛠️ Installation & Usage
1. Download a quantized ONNX model (e.g., TinyLlama) from Hugging Face and place it in the `/models` directory.
2. Double-click the `start.bat` file for a 1-click automated setup.
3. The dashboard will automatically launch in your browser at `http://127.0.0.1:5000`.
4. Paste a local directory path and click "Scan".