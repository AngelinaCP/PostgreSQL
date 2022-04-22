CREATE FUNCTION fnc_trg_person_update_audit() RETURNS TRIGGER AS $fnc_trg_person_update_audit$
    BEGIN
        IF (TG_OP = 'UPDATE') THEN
            INSERT INTO person_audit SELECT now(), 'U', NEW.*;
            RETURN NEW;
        END IF;
    END;
$fnc_trg_person_update_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_update_audit
AFTER INSERT ON  person
    FOR EACH ROW EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;


