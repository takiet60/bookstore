google.maps.__gjsload__('stats', function(_) {
    var wY = function(a) {
            _.B(this, a, 2)
        },
        xY = function(a) {
            _.B(this, a, 6)
        },
        yY = function(a, b, c, d) {
            var e = {};
            e.host = document.location && document.location.host || window.location.host;
            e.v = a;
            e.r = Math.round(1 / b);
            c && (e.client = c);
            d && (e.key = d);
            return e
        },
        zY = function(a) {
            var b = document;
            this.H = tda;
            this.j = a + "/maps/gen_204";
            this.o = b
        },
        AY = function(a, b, c) {
            var d = [];
            _.eb(a, function(e, f) {
                d.push(f + b + e)
            });
            return d.join(c)
        },
        uda = function(a) {
            var b = {};
            _.eb(a, function(c, d) {
                b[encodeURIComponent(d)] = encodeURIComponent(c).replace(/%7C/g, "|")
            });
            return AY(b, ":", ",")
        },
        BY = function(a, b, c, d) {
            var e = _.C(_.G, 0, 1);
            this.T = a;
            this.$ = b;
            this.H = e;
            this.j = c;
            this.o = d;
            this.i = new _.mp;
            this.W = _.Ra()
        },
        CY = function(a, b, c, d, e) {
            this.W = a;
            this.$ = b;
            this.T = c;
            this.o = d;
            this.H = e;
            this.j = {};
            this.i = []
        },
        DY = function(a, b, c) {
            var d = _.Gj;
            this.o = a;
            _.K.bind(this.o, "set_at", this, this.H);
            _.K.bind(this.o, "insert_at", this, this.H);
            this.W = b;
            this.$ = d;
            this.T = c;
            this.j = 0;
            this.i = {};
            this.H()
        },
        FY = function(a, b, c, d, e) {
            var f = _.C(_.G, 23, 500);
            var g = _.C(_.G, 22, 2);
            this.ka = a;
            this.ta = b;
            this.ua = f;
            this.H =
                g;
            this.$ = c;
            this.T = d;
            this.W = e;
            this.j = new _.mp;
            this.i = 0;
            this.o = _.Ra();
            EY(this)
        },
        EY = function(a) {
            window.setTimeout(function() {
                vda(a);
                EY(a)
            }, Math.min(a.ua * Math.pow(a.H, a.i), 2147483647))
        },
        vda = function(a) {
            var b = yY(a.ta, a.$, a.T, a.W);
            b.t = a.i + "-" + (_.Ra() - a.o);
            a.j.forEach(function(c, d) {
                c = c();
                0 < c && (b[d] = Number(c.toFixed(2)) + (_.ip() ? "-if" : ""))
            });
            a.ka.i({
                ev: "api_snap"
            }, b);
            ++a.i
        },
        GY = function() {
            this.j = _.D(_.G, 6);
            this.o = _.D(_.G, 16);
            if (_.th[35]) {
                var a = _.Jd(_.G);
                a = _.D(a, 11)
            } else a = _.ou;
            this.i = new zY(a);
            (a = _.Fj) && new DY(a,
                (0, _.p)(this.i.i, this.i), !!this.j);
            a = _.D(new _.Od(_.G.V[3]), 1);
            this.ka = a.split(".")[1] || a;
            this.ua = {};
            this.$ = {};
            this.W = {};
            this.ta = _.C(_.G, 0, 1);
            _.Si && (this.Ca = new FY(this.i, this.ka, this.ta, this.j, this.o));
            a = this.T = new xY;
            var b = _.D(new _.Od(_.G.V[3]), 1);
            a.V[1] = b;
            this.j && (this.T.V[2] = this.j);
            this.o && (this.T.V[3] = this.o)
        };
    _.y(wY, _.A);
    var HY;
    _.y(xY, _.A);
    var tda = Math.round(1E15 * Math.random()).toString(36);
    zY.prototype.i = function(a, b) {
        b = b || {};
        var c = _.Sm().toString(36);
        b.src = "apiv3";
        b.token = this.H;
        b.ts = c.substr(c.length - 6);
        a.cad = uda(b);
        a = AY(a, "=", "&");
        a = this.j + "?target=api&" + a;
        _.lc(new _.kc(this.o), "IMG").src = a;
        (b = _.t.__gm_captureCSI) && b(a)
    };
    BY.prototype.ka = function(a, b) {
        b = void 0 !== b ? b : 1;
        this.i.isEmpty() && window.setTimeout((0, _.p)(function() {
            var c = yY(this.$, this.H, this.j, this.o);
            c.t = _.Ra() - this.W;
            var d = this.i;
            _.pp(d);
            for (var e = {}, f = 0; f < d.i.length; f++) {
                var g = d.i[f];
                e[g] = d.j[g]
            }
            _.hb(c, e);
            this.i.clear();
            this.T.i({
                ev: "api_maprft"
            }, c)
        }, this), 500);
        b = this.i.get(a, 0) + b;
        this.i.set(a, b)
    };
    CY.prototype.ka = function(a) {
        this.j[a] || (this.j[a] = !0, this.i.push(a), 2 > this.i.length && _.dz(this, this.ta, 500))
    };
    CY.prototype.ta = function() {
        for (var a = yY(this.$, this.T, this.o, this.H), b = 0, c; c = this.i[b]; ++b) a[c] = "1";
        a.hybrid = +_.yq();
        this.i.length = 0;
        this.W.i({
            ev: "api_mapft"
        }, a)
    };
    DY.prototype.H = function() {
        for (var a; a = this.o.removeAt(0);) {
            var b = a.Nn;
            a = a.timestamp - this.$;
            ++this.j;
            this.i[b] || (this.i[b] = 0);
            ++this.i[b];
            if (20 <= this.j && !(this.j % 5)) {
                var c = {};
                c.s = b;
                c.sr = this.i[b];
                c.tr = this.j;
                c.te = a;
                c.hc = this.T ? "1" : "0";
                this.W({
                    ev: "api_services"
                }, c)
            }
        }
    };
    FY.prototype.register = function(a, b) {
        this.j.set(a, b)
    };
    GY.prototype.Ha = function(a) {
        a = _.qf(a);
        this.ua[a] || (this.ua[a] = new CY(this.i, this.ka, this.ta, this.j, this.o));
        return this.ua[a]
    };
    GY.prototype.va = function(a) {
        a = _.qf(a);
        this.$[a] || (this.$[a] = new BY(this.i, this.ka, this.j, this.o));
        return this.$[a]
    };
    GY.prototype.H = function(a) {
        if (this.Ca) {
            this.W[a] || (this.W[a] = new _.FG, this.Ca.register(a, function() {
                return b.qc()
            }));
            var b = this.W[a];
            return b
        }
    };
    GY.prototype.Ra = function(a) {
        if (_.Si) {
            var b = this.T.clone(),
                c = Math.floor(_.Ra() / 1E3);
            b.V[0] = c;
            c = new wY(_.F(b, 5));
            c.V[0] = Math.round(1 / this.ta);
            c.V[1] = a;
            a = this.i;
            c = {
                ev: "api_map_style"
            };
            var d = new _.vo;
            HY || (HY = {
                ha: "issssm",
                ma: ["is"]
            });
            b = d.i(b.V, HY);
            c.pb = encodeURIComponent(b).replace(/%20/g, "+");
            b = AY(c, "=", "&");
            _.lc(new _.kc(a.o), "IMG").src = a.j + "?target=api&" + b
        }
    };
    _.cf("stats", new GY);
});