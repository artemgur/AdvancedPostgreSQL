CREATE INDEX abc_index_a ON abc(a);
CREATE INDEX abc_index_b ON abc(b);
CREATE INDEX abc_index_c ON abc(c);

CREATE INDEX abc_index_ab ON abc(a, b);
CREATE INDEX abc_index_ba ON abc(b, a);

CREATE INDEX abc_index_bc ON abc(b, c);
CREATE INDEX abc_index_cb ON abc(c, b);

CREATE INDEX abc_index_ac ON abc(a, c);
CREATE INDEX abc_index_ca ON abc(c, a);

CREATE INDEX abc_index_abc ON abc(a, b, c);
CREATE INDEX abc_index_acb ON abc(a, c, b);

CREATE INDEX abc_index_bac ON abc(b, a, c);
CREATE INDEX abc_index_bca ON abc(b, c, a);

CREATE INDEX abc_index_cab ON abc(c, a, b);
CREATE INDEX abc_index_cba ON abc(c, b, a);
