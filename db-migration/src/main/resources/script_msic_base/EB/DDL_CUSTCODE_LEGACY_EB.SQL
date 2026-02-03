CREATE OR REPLACE FUNCTION SYSADM.CUSTCODE_LEGACY_EB (legacy_code IN VARCHAR2)
RETURN VARCHAR2
IS
    v_segments      DBMS_SQL.VARCHAR2_TABLE;
    v_total         PLS_INTEGER := 0;
    v_result        VARCHAR2 (4000);
    v_transformed   VARCHAR2 (50);
    v_num           NUMBER;
BEGIN
    -- Séparer la chaîne en segments
    FOR i IN 1 .. REGEXP_COUNT (legacy_code, '\.') + 1
    LOOP
        v_segments (i) := REGEXP_SUBSTR (legacy_code, '[^\.]+', 1, i);
        v_total := i;
    END LOOP;

    -- Traiter chaque segment
    FOR i IN 1 .. v_total
    LOOP
        BEGIN
            v_num := TO_NUMBER (v_segments (i));

            IF i = 1 THEN
                -- Première partie : toujours inchangée
                v_transformed := v_segments (i);
            ELSIF v_num >= 10000 THEN
                v_transformed := TO_CHAR (v_num - 10000);
            ELSIF v_num >= 1000 THEN
                v_transformed := TO_CHAR (v_num - 1000);
            ELSIF v_num < 1000 AND MOD (v_num, 10) = 0 THEN
                v_transformed := TO_CHAR (v_num / 10);
            ELSE
                v_transformed := v_segments (i); -- tel quel
            END IF;
        EXCEPTION
            WHEN VALUE_ERROR THEN
                -- En cas d'erreur (ex : pas un nombre), on garde le segment tel quel
                v_transformed := v_segments (i);
        END;

        -- Ajouter au résultat
        IF i = 1 THEN
            v_result := v_transformed;
        ELSE
            v_result := v_result || '.' || v_transformed;
        END IF;
    END LOOP;

    RETURN v_result;
END;
/
