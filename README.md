# Jac Financial Advisor

This is a simple **JacLang** project that uses **Generative AI** to provide financial education and advice in a structured format.  
It demonstrates how to use `jaclang` together with an LLM model.

---

## 🚀 Features
- Interactive financial Q&A in the terminal  
- AI-powered responses using **byllm** and OpenAI GPT models  
- Structured financial responses (Title, Category, Advice body)  
- Educational only – **not personalized financial advice**  

---

## 📂 Project Structure
Generative_AI_Training/
│── fin.jac # Main Jac program
│── README.md # Project documentation

---

## 🛠️ Setup Instructions

### 1. Clone the repository
git clone https://github.com/<your-username>/Generative_AI_Training.git
cd Generative_AI_Training

### 2. Create a Virtual Environment
python3 -m venv .venv
source .venv/bin/activate

### 3. Install Dependencies
pip install jaclang byllm

### 4. Set Your OpenAI API Key
export OPENAI_API_KEY="your-api-key-here"

### Running the Application
jac run fin.jac




