import from byllm { Model }

glob llm = Model(model_name="openai/gpt-4o-mini");

node FinanceRequest {
    has query: str;
    can prepare with FinanceWalker entry {
        visitor.data["query"] = self.query;
    }
}

obj FinanceAnswer {
    has title: str;
    has category: str;
    has advice_body: str;
}

walker FinanceWalker {
    has data: dict[str, str] = {};
    can start with `root entry {
        visit [-->(`?FinanceRequest)];
    }

    """Act as a professional, neutral financial advisor. 
    Respond naturally in clear, easy-to-understand language. 
    DO NOT USE MARKDOWN, BOLD, OR ALL-CAPS HEADINGS. Use plain text only.

    Fields:
    - title: A concise, catchy title summarizing the user's query.
    - category: Determine the primary financial topic of the query.
    - advice_body: Provide a detailed, professional, and actionable response in normal paragraph style. 
      You may use simple bullets (- ) for lists if needed.

    Rules:
    - Return only these fields.
    - Do NOT provide personalized investment advice or fiduciary recommendations.
    """
    def get_financial_advice(data: dict[str, str]) -> FinanceAnswer by llm();
}

with entry {
    print(" Welcome to the Jac Financial Advisor ");
    print(" Ask me anything about Finance ");
    
    while (True) {
        let user_query = input("\nYour Financial Question (or type 'exit' or 'quit' to quit): ");

        if (user_query.lower() == "exit" or user_query.lower() == "quit") {
            print("\nThank you for using the Financial Advisor. Goodbye!");
            break;
        }

        if (user_query == "") {
            print("Please enter a question.");
            continue;
        }

        root ++> FinanceRequest(query=user_query);

        agent = FinanceWalker() spawn root;

        let result = agent.get_financial_advice(agent.data);

        if (result != None) {
            print("\n========================================");
            print("Category:", result.category);
            print("Title:", result.title);
            print("========================================\n");
            print(result.advice_body);
            print("\nDisclaimer: This information is for general educational purposes only and should not be taken as personalized financial advice.");
            print("\n");
        } else {
            print("Sorry, I could not generate advice at this time.");
        }
    }
}
