CREATE TABLE comments (
    id_comment INT AUTO_INCREMENT PRIMARY KEY,

    task_id INT NOT NULL,
    employe_id INT NOT NULL,

    content TEXT NOT NULL,

    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- relations
    CONSTRAINT fk_comment_task
        FOREIGN KEY (task_id)
        REFERENCES tasks(id_task)
        ON DELETE CASCADE,

    CONSTRAINT fk_comment_employe
        FOREIGN KEY (employe_id)
        REFERENCES employes(id_employe)
        ON DELETE CASCADE
);
