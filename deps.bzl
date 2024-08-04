load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_dependencies():
    go_repository(
        name = "com_github_andybalholm_brotli",
        importpath = "github.com/andybalholm/brotli",
        sum = "h1:8uQZIdzKmjc/iuPu7O2ioW48L81FgatrcpfFmiq/cCs=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_apapsch_go_jsonmerge_v2",
        importpath = "github.com/apapsch/go-jsonmerge/v2",
        sum = "h1:axGnT1gRIfimI7gJifB699GoE/oq+F2MU7Dml6nw9rQ=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_aymerick_douceur",
        importpath = "github.com/aymerick/douceur",
        sum = "h1:Mv+mAeH1Q+n9Fr+oyamOlAkUNPWPlA8PPGR0QAaYuPk=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_bmatcuk_doublestar",
        importpath = "github.com/bmatcuk/doublestar",
        sum = "h1:YroD6BJCZBYx06yYFEWvUuKVWQn3vLLQAVmDmvTSaiQ=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_burntsushi_toml",
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:o7IhLm0Msx3BaB+n3Ag7L8EVlByGnpq14C4YWiu/gL8=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_bytedance_sonic",
        importpath = "github.com/bytedance/sonic",
        sum = "h1:uNSnscRapXTwUgTyOF0GVljYD08p9X/Lbr9MweSV3V0=",
        version = "v1.10.0-rc3",
    )
    go_repository(
        name = "com_github_chenzhuoyu_base64x",
        importpath = "github.com/chenzhuoyu/base64x",
        sum = "h1:77cEq6EriyTZ0g/qfRdp61a3Uu/AWrgIq2s0ClJV1g0=",
        version = "v0.0.0-20230717121745-296ad89f973d",
    )
    go_repository(
        name = "com_github_chenzhuoyu_iasm",
        importpath = "github.com/chenzhuoyu/iasm",
        sum = "h1:9fhXjVzq5hUy2gkhhgHl95zG2cEAhw9OSGs8toWWAwo=",
        version = "v0.9.0",
    )
    go_repository(
        name = "com_github_cloudykit_fastprinter",
        importpath = "github.com/CloudyKit/fastprinter",
        sum = "h1:sR+/8Yb4slttB4vD+b9btVEnWgL3Q00OBTzVT8B9C0c=",
        version = "v0.0.0-20200109182630-33d98a066a53",
    )
    go_repository(
        name = "com_github_cloudykit_jet_v6",
        importpath = "github.com/CloudyKit/jet/v6",
        sum = "h1:EpcZ6SR9n28BUGtNJSvlBqf90IpjeFr36Tizxhn/oME=",
        version = "v6.2.0",
    )
    go_repository(
        name = "com_github_creack_pty",
        importpath = "github.com/creack/pty",
        sum = "h1:uDmaGzcdjhF4i/plgjmEsriH11Y0o7RKapEf/LDaM3w=",
        version = "v1.1.9",
    )
    go_repository(
        name = "com_github_davecgh_go_spew",
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_exaring_otelpgx",
        importpath = "github.com/exaring/otelpgx",
        sum = "h1:z1ayuDusPITNOhzvmx3nLpFax+tv7Hu7mdrjtgW3ZeA=",
        version = "v0.6.2",
    )
    go_repository(
        name = "com_github_fatih_structs",
        importpath = "github.com/fatih/structs",
        sum = "h1:Q7juDM0QtcnhCpeyLGQKyg4TOIghuNXrkL32pHAUMxo=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_flosch_pongo2_v4",
        importpath = "github.com/flosch/pongo2/v4",
        sum = "h1:gv+5Pe3vaSVmiJvh/BZa82b7/00YUGm0PIyVVLop0Hw=",
        version = "v4.0.2",
    )
    go_repository(
        name = "com_github_gabriel_vasile_mimetype",
        importpath = "github.com/gabriel-vasile/mimetype",
        sum = "h1:w5qFW6JKBz9Y393Y4q372O9A7cUSequkh1Q7OhCmWKU=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gin_contrib_sse",
        importpath = "github.com/gin-contrib/sse",
        sum = "h1:Y/yl/+YNO8GZSjAhjMsSuLt29uWRFHdHYUb5lYOV9qE=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_gin_gonic_gin",
        importpath = "github.com/gin-gonic/gin",
        sum = "h1:4idEAncQnU5cB7BeOkPtxjfCSye0AAm1R0RVIqJ+Jmg=",
        version = "v1.9.1",
    )
    go_repository(
        name = "com_github_go_logr_logr",
        importpath = "github.com/go-logr/logr",
        sum = "h1:pKouT5E8xu9zeFC39JXRDukb6JFQPXM5p5I91188VAQ=",
        version = "v1.4.1",
    )
    go_repository(
        name = "com_github_go_logr_stdr",
        importpath = "github.com/go-logr/stdr",
        sum = "h1:hSWxHoqTgW2S2qGc0LTAI563KZ5YKYRhT3MFKZMbjag=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_go_playground_assert_v2",
        importpath = "github.com/go-playground/assert/v2",
        sum = "h1:JvknZsQTYeFEAhQwI4qEt9cyV5ONwRHC+lYKSsYSR8s=",
        version = "v2.2.0",
    )
    go_repository(
        name = "com_github_go_playground_locales",
        importpath = "github.com/go-playground/locales",
        sum = "h1:EWaQ/wswjilfKLTECiXz7Rh+3BjFhfDFKv/oXslEjJA=",
        version = "v0.14.1",
    )
    go_repository(
        name = "com_github_go_playground_universal_translator",
        importpath = "github.com/go-playground/universal-translator",
        sum = "h1:Bcnm0ZwsGyWbCzImXv+pAJnYK9S473LQFuzCbDbfSFY=",
        version = "v0.18.1",
    )
    go_repository(
        name = "com_github_go_playground_validator_v10",
        importpath = "github.com/go-playground/validator/v10",
        sum = "h1:9c50NUPC30zyuKprjL3vNZ0m5oG+jU0zvx4AqHGnv4k=",
        version = "v10.14.1",
    )
    go_repository(
        name = "com_github_goccy_go_json",
        importpath = "github.com/goccy/go-json",
        sum = "h1:CrxCmQqYDkv1z7lO7Wbh2HN93uovUHgrECaO5ZrCXAU=",
        version = "v0.10.2",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        importpath = "github.com/golang/protobuf",
        sum = "h1:LUVKkCeviFUMKqHa4tXIIij/lbhnMbP7Fn5wKdKkRh4=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_golang_snappy",
        importpath = "github.com/golang/snappy",
        sum = "h1:yAGX7huGHXlcLOEtBnF4w7FQwA26wojNCwOYAEhLjQM=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_gomarkdown_markdown",
        importpath = "github.com/gomarkdown/markdown",
        sum = "h1:EcQR3gusLHN46TAD+G+EbaaqJArt5vHhNpXAa12PQf4=",
        version = "v0.0.0-20230922112808-5421fefb8386",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:ofyhxvXcZhMsU5ulbFiLKl/XBFqE1GSq7atu8tAmTRI=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_google_gofuzz",
        importpath = "github.com/google/gofuzz",
        sum = "h1:A8PeW59pxE9IoFRqBp37U+mSNaQoZ46F1f0f863XSXw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_uuid",
        importpath = "github.com/google/uuid",
        sum = "h1:1p67kYwdtXjb0gL0BPiP1Av9wiZPo5A8z2cWkTZ+eyU=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_gorilla_css",
        importpath = "github.com/gorilla/css",
        sum = "h1:BQqNyPTi50JCFMTw/b67hByjMVXZRwGha6wxVGkeihY=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_iris_contrib_schema",
        importpath = "github.com/iris-contrib/schema",
        sum = "h1:CPSBLyx2e91H2yJzPuhGuifVRnZBBJ3pCOMbOvPZaTw=",
        version = "v0.0.6",
    )
    go_repository(
        name = "com_github_jackc_pgerrcode",
        importpath = "github.com/jackc/pgerrcode",
        sum = "h1:Dj0L5fhJ9F82ZJyVOmBx6msDp/kfd1t9GRfny/mfJA0=",
        version = "v0.0.0-20240316143900-6e2875d9b438",
    )
    go_repository(
        name = "com_github_jackc_pgpassfile",
        importpath = "github.com/jackc/pgpassfile",
        sum = "h1:/6Hmqy13Ss2zCq62VdNG8tM1wchn8zjSGOBJ6icpsIM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_jackc_pgservicefile",
        importpath = "github.com/jackc/pgservicefile",
        sum = "h1:bbPeKD0xmW/Y25WS6cokEszi5g+S0QxI/d45PkRi7Nk=",
        version = "v0.0.0-20221227161230-091c0ba34f0a",
    )
    go_repository(
        name = "com_github_jackc_pgx_v5",
        importpath = "github.com/jackc/pgx/v5",
        sum = "h1:SWJzexBzPL5jb0GEsrPMLIsi/3jOo7RHlzTjcAeDrPY=",
        version = "v5.6.0",
    )
    go_repository(
        name = "com_github_jackc_puddle_v2",
        importpath = "github.com/jackc/puddle/v2",
        sum = "h1:RhxXJtFG022u4ibrCSMSiu5aOq1i77R3OHKNJj77OAk=",
        version = "v2.2.1",
    )
    go_repository(
        name = "com_github_joker_jade",
        importpath = "github.com/Joker/jade",
        sum = "h1:Qbeh12Vq6BxURXT1qZBRHsDxeURB8ztcL6f3EXSGeHk=",
        version = "v1.1.3",
    )
    go_repository(
        name = "com_github_josharian_intern",
        importpath = "github.com/josharian/intern",
        sum = "h1:vlS4z54oSdjm0bgjRigI+G1HpF+tI+9rE5LLzOg8HmY=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_json_iterator_go",
        importpath = "github.com/json-iterator/go",
        sum = "h1:PV8peI4a0ysnczrg+LtxykD8LfKY9ML6u2jnxaEnrnM=",
        version = "v1.1.12",
    )
    go_repository(
        name = "com_github_juju_gnuflag",
        importpath = "github.com/juju/gnuflag",
        sum = "h1:c93kUJDtVAXFEhsCh5jSxyOJmFHuzcihnslQiX8Urwo=",
        version = "v0.0.0-20171113085948-2ce1bb71843d",
    )
    go_repository(
        name = "com_github_kataras_blocks",
        importpath = "github.com/kataras/blocks",
        sum = "h1:cF3RDY/vxnSRezc7vLFlQFTYXG/yAr1o7WImJuZbzC4=",
        version = "v0.0.7",
    )
    go_repository(
        name = "com_github_kataras_golog",
        importpath = "github.com/kataras/golog",
        sum = "h1:vLvSDpP7kihFGKFAvBSofYo7qZNULYSHOH2D7rPTKJk=",
        version = "v0.1.9",
    )
    go_repository(
        name = "com_github_kataras_iris_v12",
        importpath = "github.com/kataras/iris/v12",
        sum = "h1:Vx8kDVhO2qepK8w44lBtp+RzN3ld743i+LYPzODJSpQ=",
        version = "v12.2.6-0.20230908161203-24ba4e8933b9",
    )
    go_repository(
        name = "com_github_kataras_pio",
        importpath = "github.com/kataras/pio",
        sum = "h1:o52SfVYauS3J5X08fNjlGS5arXHjW/ItLkyLcKjoH6w=",
        version = "v0.0.12",
    )
    go_repository(
        name = "com_github_kataras_sitemap",
        importpath = "github.com/kataras/sitemap",
        sum = "h1:w71CRMMKYMJh6LR2wTgnk5hSgjVNB9KL60n5e2KHvLY=",
        version = "v0.0.6",
    )
    go_repository(
        name = "com_github_kataras_tunnel",
        importpath = "github.com/kataras/tunnel",
        sum = "h1:sCAqWuJV7nPzGrlb0os3j49lk2JhILT0rID38NHNLpA=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_klauspost_compress",
        importpath = "github.com/klauspost/compress",
        sum = "h1:2mk3MPGNzKyxErAw8YaohYh69+pa4sIQSC0fPGCFR9I=",
        version = "v1.16.7",
    )
    go_repository(
        name = "com_github_klauspost_cpuid_v2",
        importpath = "github.com/klauspost/cpuid/v2",
        sum = "h1:0E5MSMDEoAulmXNFquVs//DdoomxaoTY1kUhbc/qbZg=",
        version = "v2.2.5",
    )
    go_repository(
        name = "com_github_knz_go_libedit",
        importpath = "github.com/knz/go-libedit",
        sum = "h1:0pHpWtx9vcvC0xGZqEQlQdfSQs7WRlAjuPvk3fOZDCo=",
        version = "v1.10.1",
    )
    go_repository(
        name = "com_github_kr_pretty",
        importpath = "github.com/kr/pretty",
        sum = "h1:WgNl7dwNpEZ6jJ9k1snq4pZsg7DOEN8hP9Xw0Tsjwk0=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_kr_text",
        importpath = "github.com/kr/text",
        sum = "h1:5Nx0Ya0ZqY2ygV366QzturHI13Jq95ApcVaJBhpS+AY=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_labstack_echo_v4",
        importpath = "github.com/labstack/echo/v4",
        sum = "h1:vDZmA+qNeh1pd/cCkEicDMrjtrnMGQ1QFI9gWN1zGq8=",
        version = "v4.11.4",
    )
    go_repository(
        name = "com_github_labstack_gommon",
        importpath = "github.com/labstack/gommon",
        sum = "h1:F8qTUNXgG1+6WQmqoUWnz8WiEU60mXVVw0P4ht1WRA0=",
        version = "v0.4.2",
    )
    go_repository(
        name = "com_github_leodido_go_urn",
        importpath = "github.com/leodido/go-urn",
        sum = "h1:XlAE/cm/ms7TE/VMVoduSpNBoyc2dOxHs5MZSwAN63Q=",
        version = "v1.2.4",
    )
    go_repository(
        name = "com_github_mailgun_raymond_v2",
        importpath = "github.com/mailgun/raymond/v2",
        sum = "h1:5dmlB680ZkFG2RN/0lvTAghrSxIESeu9/2aeDqACtjw=",
        version = "v2.0.48",
    )
    go_repository(
        name = "com_github_mailru_easyjson",
        importpath = "github.com/mailru/easyjson",
        sum = "h1:UGYAvKxe3sBsEDzO8ZeWOSlIQfWFlxbzLZe7hwFURr0=",
        version = "v0.7.7",
    )
    go_repository(
        name = "com_github_mattn_go_colorable",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:fFA4WZxdEF4tXPZVKMLwD8oUnCTTo08duU7wxecdEvA=",
        version = "v0.1.13",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:xfD0iDuEKnDkl03q4limB+vH+GxLEtL/jb4xVJSWWEY=",
        version = "v0.0.20",
    )
    go_repository(
        name = "com_github_microcosm_cc_bluemonday",
        importpath = "github.com/microcosm-cc/bluemonday",
        sum = "h1:4NEwSfiJ+Wva0VxN5B8OwMicaJvD8r9tlJWm9rtloEg=",
        version = "v1.0.25",
    )
    go_repository(
        name = "com_github_modern_go_concurrent",
        importpath = "github.com/modern-go/concurrent",
        sum = "h1:TRLaZ9cD/w8PVh93nsPXa1VrQ6jlwL5oN8l14QlcNfg=",
        version = "v0.0.0-20180306012644-bacd9c7ef1dd",
    )
    go_repository(
        name = "com_github_modern_go_reflect2",
        importpath = "github.com/modern-go/reflect2",
        sum = "h1:xBagoLtFs94CBntxluKeaWgTMpvLxC4ur3nMaC9Gz0M=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_oapi_codegen_runtime",
        importpath = "github.com/oapi-codegen/runtime",
        sum = "h1:EXLHh0DXIJnWhdRPN2w4MXAzFyE4CskzhNLUmtpMYro=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_pelletier_go_toml_v2",
        importpath = "github.com/pelletier/go-toml/v2",
        sum = "h1:uH2qQXheeefCCkuBBSLi7jCiSmj3VRh2+Goq2N7Xxu0=",
        version = "v2.0.9",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_ravenox_go_jsoncommentstrip",
        importpath = "github.com/RaveNoX/go-jsoncommentstrip",
        sum = "h1:t527LHHE3HmiHrq74QMpNPZpGCIJzTx+apLkMKt4HC0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:exVL4IDcn6na9z1rAb56Vxr+CgyK3nn3O+epU5NdKM8=",
        version = "v1.12.0",
    )
    go_repository(
        name = "com_github_russross_blackfriday_v2",
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:JIOH55/0cWyOuilr9/qlrm0BSXldqnqwMsf35Ld67mk=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_schollz_closestmatch",
        importpath = "github.com/schollz/closestmatch",
        sum = "h1:Uel2GXEpJqOWBrlyI+oY9LTiyyjYS17cCYRqP13/SHk=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_shopify_goreferrer",
        importpath = "github.com/Shopify/goreferrer",
        sum = "h1:KkH3I3sJuOLP3TjA/dfr4NAY8bghDwnXiU7cTKxQqo0=",
        version = "v0.0.0-20220729165902-8cddb4f5de06",
    )
    go_repository(
        name = "com_github_sirupsen_logrus",
        importpath = "github.com/sirupsen/logrus",
        sum = "h1:dJKuHgqk1NNQlqoA6BTlM1Wf9DOH3NBjQyu0h9+AZZE=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_spkg_bom",
        importpath = "github.com/spkg/bom",
        sum = "h1:fiWzISvDn0Csy5H0iwgAuJGQTUpVfEMJJd4nRFXogbc=",
        version = "v0.0.0-20160624110644-59b7046e48ad",
    )
    go_repository(
        name = "com_github_stretchr_objx",
        importpath = "github.com/stretchr/objx",
        sum = "h1:1zr/of2m5FGMsad5YfcqgdqdWrIhu+EBEJRhR1U7z/c=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        importpath = "github.com/stretchr/testify",
        sum = "h1:CcVxjf3Q8PM0mHUKJCdn+eZZtm5yQwehR5yeSVQQcUk=",
        version = "v1.8.4",
    )
    go_repository(
        name = "com_github_tdewolff_minify_v2",
        importpath = "github.com/tdewolff/minify/v2",
        sum = "h1:dvn5MtmuQ/DFMwqf5j8QhEVpPX6fi3WGImhv8RUB4zA=",
        version = "v2.12.9",
    )
    go_repository(
        name = "com_github_tdewolff_parse_v2",
        importpath = "github.com/tdewolff/parse/v2",
        sum = "h1:mhNZXYCx//xG7Yq2e/kVLNZw4YfYmeHbhx+Zc0OvFMA=",
        version = "v2.6.8",
    )
    go_repository(
        name = "com_github_twitchyliquid64_golang_asm",
        importpath = "github.com/twitchyliquid64/golang-asm",
        sum = "h1:SU5vSMR7hnwNxj24w34ZyCi/FmDZTkS4MhqMhdFk5YI=",
        version = "v0.15.1",
    )
    go_repository(
        name = "com_github_ugorji_go_codec",
        importpath = "github.com/ugorji/go/codec",
        sum = "h1:BMaWp1Bb6fHwEtbplGBGJ498wD+LKlNSl25MjdZY4dU=",
        version = "v1.2.11",
    )
    go_repository(
        name = "com_github_valyala_bytebufferpool",
        importpath = "github.com/valyala/bytebufferpool",
        sum = "h1:GqA5TC/0021Y/b9FG4Oi9Mr3q7XYx6KllzawFIhcdPw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_valyala_fasttemplate",
        importpath = "github.com/valyala/fasttemplate",
        sum = "h1:lxLXG0uE3Qnshl9QyaK6XJxMXlQZELvChBOCmQD0Loo=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_github_vmihailenco_msgpack_v5",
        importpath = "github.com/vmihailenco/msgpack/v5",
        sum = "h1:5gO0H1iULLWGhs2H5tbAHIZTV8/cYafcFOr9znI5mJU=",
        version = "v5.3.5",
    )
    go_repository(
        name = "com_github_vmihailenco_tagparser_v2",
        importpath = "github.com/vmihailenco/tagparser/v2",
        sum = "h1:y09buUbR+b5aycVFQs/g70pqKVZNBmxwAhO7/IwNM9g=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_yosssi_ace",
        importpath = "github.com/yosssi/ace",
        sum = "h1:tUkIP/BLdKqrlrPwcmH0shwEEhTRHoGnc1wFIWmaBUA=",
        version = "v0.0.5",
    )
    go_repository(
        name = "com_nullprogram_x_optparse",
        importpath = "nullprogram.com/x/optparse",
        sum = "h1:xGFgVi5ZaWOnYdac2foDT3vg0ZZC9ErXFV57mr4OHrI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        importpath = "gopkg.in/check.v1",
        sum = "h1:Hei/4ADfdWqJk1ZMxUNpqntNwaWcugrBjAiHlqqRiVk=",
        version = "v1.0.0-20201130134442-10cb98267c6c",
    )
    go_repository(
        name = "in_gopkg_ini_v1",
        importpath = "gopkg.in/ini.v1",
        sum = "h1:Dgnx+6+nfE+IfzjUEISNeydPJh9AXNNsWbGP9KzCsOA=",
        version = "v1.67.0",
    )
    go_repository(
        name = "in_gopkg_yaml_v3",
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:fxVm/GzAzEWqLHuvctI91KS9hhNmmWOoWu0XTYJS7CA=",
        version = "v3.0.1",
    )
    go_repository(
        name = "io_opentelemetry_go_otel",
        importpath = "go.opentelemetry.io/otel",
        sum = "h1:Za4UzOqJYS+MUczKI320AtqZHZb7EqxO00jAHE0jmQY=",
        version = "v1.23.1",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_metric",
        importpath = "go.opentelemetry.io/otel/metric",
        sum = "h1:PQJmqJ9u2QaJLBOELl1cxIdPcpbwzbkjfEyelTl2rlo=",
        version = "v1.23.1",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_trace",
        importpath = "go.opentelemetry.io/otel/trace",
        sum = "h1:4LrmmEd8AU2rFvU1zegmvqW7+kWarxtNOPyeL6HmYY8=",
        version = "v1.23.1",
    )
    go_repository(
        name = "io_rsc_pdf",
        importpath = "rsc.io/pdf",
        sum = "h1:k1MczvYDUvJBe93bYd7wrZLLUEcLZAuF824/I4e5Xr4=",
        version = "v0.1.1",
    )
    go_repository(
        name = "org_golang_google_protobuf",
        importpath = "google.golang.org/protobuf",
        sum = "h1:g0LDEJHgrBl9N9r17Ru3sqWhkIx2NB67okBHPwC7hs8=",
        version = "v1.31.0",
    )
    go_repository(
        name = "org_golang_x_arch",
        importpath = "golang.org/x/arch",
        sum = "h1:A8WCeEWhLwPBKNbFi5Wv5UTCBx5zzubnXDlMOFAzFMc=",
        version = "v0.4.0",
    )
    go_repository(
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:r8bRNjWL3GshPW3gkd+RpvzWrZAwPS49OmTGZ/uhM4k=",
        version = "v0.17.0",
    )
    go_repository(
        name = "org_golang_x_mod",
        importpath = "golang.org/x/mod",
        sum = "h1:KENHtAZL2y3NLMYZeHY9DW8HW8V+kQyJsY/V9JlKvCs=",
        version = "v0.9.0",
    )
    go_repository(
        name = "org_golang_x_net",
        importpath = "golang.org/x/net",
        sum = "h1:zTwKpTd2XuCqf8huc7Fo2iSy+4RHPd10s4KzeTnVr1c=",
        version = "v0.19.0",
    )
    go_repository(
        name = "org_golang_x_sync",
        importpath = "golang.org/x/sync",
        sum = "h1:wsuoTGHzEhffawBOhz5CYhcrV4IdKZbEyZjBMuTp12o=",
        version = "v0.1.0",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:h48lPFYpsTvQJZF4EKyI4aLHaev3CxivZmv7yZig9pc=",
        version = "v0.15.0",
    )
    go_repository(
        name = "org_golang_x_term",
        importpath = "golang.org/x/term",
        sum = "h1:y/Oo/a/q3IXu26lQgl04j/gjuBDOBlx7X6Om1j2CPW4=",
        version = "v0.15.0",
    )
    go_repository(
        name = "org_golang_x_text",
        importpath = "golang.org/x/text",
        sum = "h1:ScX5w1eTa3QqT8oi6+ziP7dTV1S2+ALU0bI+0zXKWiQ=",
        version = "v0.14.0",
    )
    go_repository(
        name = "org_golang_x_time",
        importpath = "golang.org/x/time",
        sum = "h1:o7cqy6amK/52YcAKIPlM3a+Fpj35zvRj2TP+e1xFSfk=",
        version = "v0.5.0",
    )
    go_repository(
        name = "org_golang_x_tools",
        importpath = "golang.org/x/tools",
        sum = "h1:BOw41kyTf3PuCW1pVQf8+Cyg8pMlkYB1oo9iJ6D/lKM=",
        version = "v0.6.0",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        importpath = "golang.org/x/xerrors",
        sum = "h1:GGU+dLjvlC3qDwqYgL6UgRmHXhOOgns0bZu2Ty5mm6U=",
        version = "v0.0.0-20220411194840-2f41105eb62f",
    )
