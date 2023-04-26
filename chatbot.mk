import random

# Define a dictionary containing some common responses
responses = {
    "hi": ["Hello", "Hi there", "Hey"],
    "how are you": ["I'm doing well, thank you", "I'm fine, thank you", "Pretty good"],
    "bye": ["Goodbye", "See you later", "Bye"]
}

# Define a function to get a response for a given message
def get_response(message):
    # Convert the message to lowercase
    message = message.lower()
    
    # Check if the message matches any of the predefined responses
    for key in responses:
        if message in key:
            return random.choice(responses[key])
    
    # If no match found, return a default response
    return "I'm sorry, I didn't understand your message"

# Start the chatbot
while True:
    # Get a message from the user
    message = input("You: ")
    
    # Get a response from the chatbot
    response = get_response(message)
    
    # Print the response
    print("Chatbot:", response)
