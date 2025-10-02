# Jac Financial Advisor

This is a simple **JacLang project** that uses **Generative AI** to provide financial education and structured advice.  
It demonstrates how to integrate **JacLang** with a **Large Language Model (LLM)** using the `byllm` library.  

The goal of this project is to:
- Show how JacLang can be used to build interactive AI-powered applications.  
- Teach how to define **nodes**, **walkers**, and **objects** to structure information.  
- Provide a practical example of using **LLMs** for financial literacy.  

This project is beginner-friendly and can serve as a **learning exercise** in:
- JacLang fundamentals (nodes, walkers, and entry points).  
- Prompt engineering inside JacLang walkers.  
- Working with external APIs (OpenAI GPT models).  
- Building command-line AI assistants.  

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




