CREATE TABLE IF NOT EXISTS audit_log_entries (
  instance_id varchar(255) DEFAULT NULL,
  id varchar(255) PRIMARY KEY NOT NULL,
  payload JSON NULL DEFAULT NULL,
  created_at timestamp(0) NULL DEFAULT NULL
);

CREATE INDEX audit_logs_instance_id_idx ON audit_log_entries (instance_id);
