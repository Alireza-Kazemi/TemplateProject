# Project Folder Structure Creator

This repository contains scripts for automatically creating a standardized project folder structure.  
It supports **Windows** and **macOS/Linux**.

## 📂 Folder Structure

The scripts will create the following structure based on your chosen project name:

<ProjectName>/
├── Codes(Github)/ %----> Sync this directory with your Github
│ ├── Archive/
│ ├── L1_Nameit/
│ └── L2_Nameit/
├── DataFiles/
│ ├── Archive/
│ ├── L1_Name_R1W1/
│ └── L2_Name_R1W2/
├── Documents <ProjectName>/
│ ├── Archive/
│ ├── Reports(Docs)/
│ └── Trackings&Summaries/
└── ExtraFiles/
└── Archive/


---

## 🖥 Windows Instructions

1. Download `create_project.bat` to your computer.
2. Double-click the file **or** run it in Command Prompt:
   ```cmd
   create_project.bat
   ```
3. When prompted, type your project name (e.g., `MyProject`) and press **Enter**.
4. The folder structure will be created in the same directory as the script.

---

## 🍏 macOS / Linux Instructions

1. Download `create_project.sh` to your computer.
2. Open **Terminal** and navigate to the folder containing the script:
   ```bash
   cd /path/to/script
   ```
3. Make the script executable:
   ```bash
   chmod +x create_project.sh
   ```
4. Run the script:
   ```bash
   ./create_project.sh
   ```
5. When prompted, type your project name (e.g., `MyProject`) and press **Enter**.
6. The folder structure will be created in the same directory as the script.

---

## ⚠️ Notes
- For project names containing spaces, you can type them normally when prompted (e.g., `New Research Project`).
- The scripts will not overwrite existing files, but will create any missing folders.
- On macOS/Linux, you can move the `.sh` file to `/usr/local/bin` and run it from anywhere.

---

## 📜 License
MIT License. Feel free to modify and use in your own projects.


<!-- 	\projectName
		%----> Sync this directory with your Github
		\Codes(Github)
					  \Archive
					  \L1_Nameit
					  \L2_Nameit
					  
		\DataFiles
				  \Archive
				  \L1_Name_R1W1
				  \L2_Name_R1W2	
				  
		%----> Sync this directory with your cloud storage
		\Documents projectName				
				  \Archive
				  \Reports(Docs)
				  \Tracking&Summaries
				  
		\ExtraFiles
				   \Archive -->
