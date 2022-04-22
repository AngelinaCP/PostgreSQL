CREATE OR REPLACE FUNCTION fnc_trg_person_delete_audit()
    RETURNS TRIGGER AS $fnc_trg_person_delete_audit$
    BEGIN
        INSERT INTO "person_audit" ("created", "type_event", "row_id", "name", "age", "gender", "address")
        VALUES (now(), 'D', NEW."id", NEW."name", NEW."age", NEW."gender", NEW."address");
        RETURN NEW;
    END;
$fnc_trg_person_delete_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_delete_audit
AFTER DELETE ON  person
    FOR EACH ROW EXECUTE PROCEDURE fnc_trg_person_delete_audit();

