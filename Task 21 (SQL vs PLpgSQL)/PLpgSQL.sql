-- noinspection SpellCheckingInspection

CREATE OR REPLACE FUNCTION abc_plpgsql(x int) RETURNS int AS $$
BEGIN
    RETURN (SELECT b FROM abc WHERE a = x LIMIT 1);
END
$$ LANGUAGE plpgsql