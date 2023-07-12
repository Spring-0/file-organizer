# File Organizer

The File Organizer script helps organize files in a directory by categorizing them into different folders based on their file extensions.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. Clone the repository:

    `git clone https://github.com/Spring-0/file-organizer.git`

2. Change to the project directory:

    `cd file-organizer`


3. No additional dependencies are required for this script.

## Usage

Run the script with the following command:

```bash
./file_organizer.sh --source /path/to/source/directory --destination /path/to/destination/directory
```

Make sure to replace `/path/to/source/directory` with the actual path to the source directory and `/path/to/destination/directory` with the desired path to the destination directory.

The script will scan the source directory, identify files, and move them into folders based on their file extensions in the destination directory.

## Features
- Categorizes files based on their file extensions.
- Automatically creates folders for each unique file extension.
- Moves files from the source directory to their respective extension folders.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please create a new issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).