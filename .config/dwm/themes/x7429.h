static const char norm_fg[] = "#83f1f4";
static const char norm_bg[] = "#010608";
static const char norm_border[] = "#5ba8aa";

static const char sel_fg[] = "#83f1f4";
static const char sel_bg[] = "#0C9DA2";
static const char sel_border[] = "#83f1f4";

static const char urg_fg[] = "#83f1f4";
static const char urg_bg[] = "#0D8E91";
static const char urg_border[] = "#0D8E91";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    // [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
