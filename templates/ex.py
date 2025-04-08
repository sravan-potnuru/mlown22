# import os
# import numpy as np
# import tensorflow as tf
# import matplotlib.pyplot as plt
# import pandas as pd
# from tensorflow.keras.models import load_model
# from tensorflow.keras.preprocessing import image

# # Load the model
# model = load_model("model/alexnet_model.h5")

# # Define the class labels
# class_labels = {
#     0: "No_DR",
#     1: "Mild",
#     2: "Moderate",
#     3: "Severe",
#     4: "Proliferate_DR"
# }

# # Directory containing test images
# test_image_folder = r"D:\archive (3)\colored_images\colored_images\Severe"  # Change this to your image folder
# image_size = (224, 224)  # Adjust as per your model's expected input size

# # Directory to save the CSV file
# output_folder = r"D:\archive (3)"  # Change to your preferred directory
# os.makedirs(output_folder, exist_ok=True)  # Ensure the directory exists
# output_csv_path = os.path.join(output_folder, "predictions.csv")

# def preprocess_image(img_path):
#     """Load and preprocess an image for prediction."""
#     img = image.load_img(img_path, target_size=image_size)
#     img_array = image.img_to_array(img)
#     img_array = np.expand_dims(img_array, axis=0)
#     img_array /= 255.0  # Normalize
#     return img_array

# # Get list of images
# image_files = [f for f in os.listdir(test_image_folder) if f.endswith(('.png', '.jpg', '.jpeg'))]

# # Store predictions in a list
# predictions_list = []

# # Process and classify images
# print("\nProcessing images...\n")
# for i, img_name in enumerate(image_files):
#     img_path = os.path.join(test_image_folder, img_name)
#     img_array = preprocess_image(img_path)
    
#     # Make prediction
#     prediction = model.predict(img_array)
#     predicted_class = np.argmax(prediction)
#     predicted_label = class_labels[predicted_class]
    
#     # Store prediction
#     predictions_list.append([img_name, predicted_label])
    
#     # Print progress
#     print(f"[{i+1}/{len(image_files)}] Processed: {img_name} → Prediction: {predicted_label}")

# # Save predictions to a CSV file
# print("\nSaving predictions to CSV...\n")
# predictions_df = pd.DataFrame(predictions_list, columns=["Image Name", "Prediction"])
# predictions_df.to_csv(output_csv_path, index=False)

# # Confirm file save
# print(f"✅ Predictions saved successfully to: {output_csv_path}")

# # Display first 10 images with predictions
# plt.figure(figsize=(12, 8))
# for i, (img_name, predicted_label) in enumerate(predictions_list[:10]):
#     img_path = os.path.join(test_image_folder, img_name)
    
#     plt.subplot(2, 5, i + 1)
#     img = image.load_img(img_path)
#     plt.imshow(img)
#     plt.axis("off")
#     plt.title(f"{img_name}\n{predicted_label}")

# plt.tight_layout()
# plt.show()

# import os
# import shutil
# import numpy as np
# import tensorflow as tf
# import matplotlib.pyplot as plt
# import pandas as pd
# from tensorflow.keras.models import load_model
# from tensorflow.keras.preprocessing import image

# # Load the trained model
# model = load_model("model/alexnet_model.h5")

# # Define class labels
# class_labels = {
#     0: "No_DR",
#     1: "Mild",
#     2: "Moderate",
#     3: "Severe",
#     4: "Proliferate_DR"
# }

# # List of folders containing test images
# test_image_folders = [
#     r"D:\archive (3)\colored_images\colored_images\No_DR",
#     r"D:\archive (3)\colored_images\colored_images\Mild",
#     r"D:\archive (3)\colored_images\colored_images\Moderate",
#     r"D:\archive (3)\colored_images\colored_images\Severe",
#     r"D:\archive (3)\colored_images\colored_images\Proliferate_DR"
# ]  

# # Base output folder where classified images will be saved
# output_base_folder = r"D:\classified_images"
# os.makedirs(output_base_folder, exist_ok=True)

# # Directory to save CSV file
# csv_output_folder = r"D:\predictions_output"
# os.makedirs(csv_output_folder, exist_ok=True)
# csv_output_path = os.path.join(csv_output_folder, "predictions.csv")

# # Set image size expected by the model
# image_size = (224, 224) 

# def preprocess_image(img_path):
#     """Load and preprocess an image for prediction."""
#     img = image.load_img(img_path, target_size=image_size)
#     img_array = image.img_to_array(img)
#     img_array = np.expand_dims(img_array, axis=0)
#     img_array /= 255.0  # Normalize
#     return img_array

# # Store predictions
# predictions_list = []

# # Process images from all folders
# print("\nProcessing images...\n")
# for folder in test_image_folders:
#     if not os.path.exists(folder):
#         print(f"⚠️ Warning: Folder {folder} does not exist. Skipping...")
#         continue

#     image_files = [f for f in os.listdir(folder) if f.endswith(('.png', '.jpg', '.jpeg'))]

#     for i, img_name in enumerate(image_files):
#         img_path = os.path.join(folder, img_name)
#         img_array = preprocess_image(img_path)
        
#         # Predict class
#         prediction = model.predict(img_array)
#         predicted_class = np.argmax(prediction)
#         predicted_label = class_labels[predicted_class]
        
#         # Store prediction
#         predictions_list.append([img_name, predicted_label])

#         # Destination folder for the classified image
#         classified_folder = os.path.join(output_base_folder, predicted_label)
#         os.makedirs(classified_folder, exist_ok=True)

#         # Move image to the classified folder
#         shutil.copy(img_path, os.path.join(classified_folder, img_name))

#         # Print progress
#         print(f"[{i+1}/{len(image_files)}] {img_name} → Predicted: {predicted_label} (Saved to {classified_folder})")

# # Save predictions to CSV
# print("\nSaving predictions to CSV...\n")
# predictions_df = pd.DataFrame(predictions_list, columns=["Image Name", "Prediction"])
# predictions_df.to_csv(csv_output_path, index=False)

# # Confirm file save
# print(f"✅ Predictions saved successfully to: {csv_output_path}")

# # Display first 10 images with predictions
# plt.figure(figsize=(12, 8))
# for i, (img_name, predicted_label) in enumerate(predictions_list[:10]):
#     for folder in test_image_folders:
#         img_path = os.path.join(folder, img_name)
#         if os.path.exists(img_path):
#             break  # Found the correct path
    
#     plt.subplot(2, 5, i + 1)
#     img = image.load_img(img_path)
#     plt.imshow(img)
#     plt.axis("off")
#     plt.title(f"{img_name}\n{predicted_label}")

# plt.tight_layout()
# plt.show()
# import os
# import numpy as np
# import tensorflow as tf
# from tensorflow.keras.models import load_model
# from tensorflow.keras.preprocessing import image
# from collections import defaultdict

# # Load the trained model
# model = load_model("model/alexnet_model.h5")

# # Define class labels
# class_labels = {
#     0: "No_DR",
#     1: "Mild",
#     2: "Moderate",
#     3: "Severe",
#     4: "Proliferate_DR"
# }

# # Path to already classified images
# classified_folder_path = r"D:\classified_images"  # Change this to your classified images folder
# image_size = (224, 224)  # Model input size

# def preprocess_image(img_path):
#     """Load and preprocess an image for prediction."""
#     img = image.load_img(img_path, target_size=image_size)
#     img_array = image.img_to_array(img)
#     img_array = np.expand_dims(img_array, axis=0)
#     img_array /= 255.0  # Normalize
#     return img_array

# # Dictionary to store counts
# classification_match_count = defaultdict(int)

# # Iterate over classification folders
# for class_name in os.listdir(classified_folder_path):
#     class_folder = os.path.join(classified_folder_path, class_name)

#     # Skip if it's not a folder
#     if not os.path.isdir(class_folder):
#         continue

#     image_files = [f for f in os.listdir(class_folder) if f.endswith(('.png', '.jpg', '.jpeg'))]

#     # Count correct classifications
#     correct_count = 0

#     for img_name in image_files:
#         img_path = os.path.join(class_folder, img_name)
#         img_array = preprocess_image(img_path)

#         # Make prediction
#         prediction = model.predict(img_array)
#         predicted_class = np.argmax(prediction)
#         predicted_label = class_labels[predicted_class]

#         # Check if the re-predicted label matches the folder name
#         if predicted_label == class_name:
#             correct_count += 1

#     classification_match_count[class_name] = correct_count

# # Print results
# print("\nClassification Retention Summary:")
# for class_name, count in classification_match_count.items():
#     print(f"{class_name}: {count} images retained classification")


import os
import matplotlib.pyplot as plt

dataset_path = r"D:\classified_images"

# Dictionary to store class-wise image counts
class_counts = {}

# Loop through each class folder
for class_name in os.listdir(dataset_path):
    class_folder = os.path.join(dataset_path, class_name)

    if os.path.isdir(class_folder):
        image_files = [
            f for f in os.listdir(class_folder)
            if f.lower().endswith(('.jpg', '.jpeg', '.png', '.bmp', '.gif'))
        ]
        class_counts[class_name] = len(image_files)

# Data for pie chart
labels = list(class_counts.keys())
sizes = list(class_counts.values())

# Optional: generate a distinct color for each class
colors = plt.cm.tab20.colors[:len(labels)]

# Plot the pie chart
plt.figure(figsize=(8, 8))
plt.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=140)
plt.axis('equal')  # Equal aspect ratio to make the pie circular
plt.title('Image Distribution by Class')
plt.legend(labels, title="Classes", loc="center left", bbox_to_anchor=(1, 0.5))
plt.tight_layout()
plt.show()