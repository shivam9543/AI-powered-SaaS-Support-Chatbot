As per the given instructions, I have developed a fictional SaaS product chatbot named Fitlytic, designed to assist users with health-related queries.Help users track, analyze, and improve their overall well-being.
Reduce repetitive customer support efforts by providing instant, AI-powered responses.


Application Link- https://huggingface.co/spaces/shiningcreature/Your-Health-Fitlytic



How Someone Can Reduce Weight?

To reduce weight effectively, follow these simple and actionable steps:
✔️ Maintain a Calorie Deficit:
Burn more calories than you consume through mindful eating and regular activity.
✔️ Eat Healthy Foods:
Focus on a balanced diet that includes vegetables, fruits, lean proteins, and whole grains.
✔️ Exercise Regularly:
Combine cardio exercises (such as running, cycling) and strength training (like weight lifting) to maximize fat loss and muscle gain.
✔️ Stay Consistent:
Choose a sustainable, realistic routine instead of extreme dieting trends.
✔️ Stay Hydrated and Sleep Well:
Drink enough water throughout the day.
Aim for 7–8 hours of quality sleep every night to support weight loss and recovery.











Project Workflow (Simple Steps)

First of all I have created Knowledge Database from different available sources in form of .md files and store them into one folder.Then have implemented the following process.
1. Upload Knowledge Base
o Upload a ZIP file (Knowledge_Base.zip) that contains .md files (Markdown documents).
2. Extract ZIP
o The app automatically extracts the zip into a folder (Knowledge_Base/).
3. Find Markdown Files
o It automatically finds the folder where .md files are kept.
4. Load Documents
o All .md files are read using DirectoryLoader.
5. Split into Small Chunks
o Each document is split into smaller pieces (chunk size = 500 characters) using RecursiveCharacterTextSplitter.
6. Generate Embeddings
o Each chunk is converted into a vector (size 384) using the model:
"sentence-transformers/paraphrase-MiniLM-L6-v2".
7. Store Embeddings
o All vectors and their related text are stored inside a FAISS database.
8. Take User Query
o The user asks a question via a Streamlit input box.
9. Convert Query to Embedding
o The user's query is also converted into a vector (using the same model).
10. Search Similar Chunks
o FAISS compares the query vector to stored vectors and finds the most similar document chunk.
11. Show Result
o The chatbot displays the most relevant chunk's text as an answer.





Internal Notes (Extra Points)
* FAISS Structure = Embeddings + Text (page_content) + Metadata (optional).
* Embeddings = 384-dimension vectors for both documents and queries.
* Similarity Search = Works by comparing vector distances (smaller distance = more similar).


