CREATE TABLE tasks (
                       id INT AUTO_INCREMENT PRIMARY KEY,

                       title VARCHAR(255) NOT NULL,

                       category ENUM('magasin','administratif','produit') NOT NULL,
                       status   ENUM('a_faire','en_cours','a_reassigner','termine') NOT NULL DEFAULT 'a_faire',
                       priority ENUM('faible','moyenne','elevee') NOT NULL DEFAULT 'moyenne',

                       assigned_to INT NULL,

                       created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                       validated_at DATETIME NULL
);