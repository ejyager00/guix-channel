;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2025 Hilton Chain <hako@ultrarare.space>
;;;
;;; This file is part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (ejyager00 packages rust-crates)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((gnu packages rust-sources) #:prefix package:)
  #:export (lookup-cargo-inputs))

;;;
;;; This file is managed by ‘guix import’.  Do NOT add definitions manually.
;;;

;;;
;;; Rust libraries fetched from crates.io and non-workspace development
;;; snapshots.
;;;

(define qqqq-separator 'begin-of-crates)

(define rust-ab-glyph-0.2.32
  (crate-source "ab_glyph" "0.2.32"
                "1hkc7y8yjd261d5cm9771dawnwc26rgdlniv3jysb3n3f9s4bh01"))

(define rust-ab-glyph-rasterizer-0.1.10
  (crate-source "ab_glyph_rasterizer" "0.1.10"
                "065n6bj7kqk6f12336lm87fqmvf4lxg7rkg2j56nix228jmgnvrn"))

(define rust-adler2-2.0.1
  (crate-source "adler2" "2.0.1"
                "1ymy18s9hs7ya1pjc9864l30wk8p2qfqdi7mhhcc5nfakxbij09j"))

(define rust-ahash-0.8.12
  (crate-source "ahash" "0.8.12"
                "0xbsp9rlm5ki017c0w6ay8kjwinwm8knjncci95mii30rmwz25as"))

(define rust-aho-corasick-1.1.4
  (crate-source "aho-corasick" "1.1.4"
                "00a32wb2h07im3skkikc495jvncf62jl6s96vwc7bhi70h9imlyx"))

(define rust-alacritty-terminal-0.25.1
  (crate-source "alacritty_terminal" "0.25.1"
                "10p2765jyf7bnwlszag33l8nmgrvi6ialr2z8h3xfya1wxr9jca6"))

(define rust-allocator-api2-0.2.21
  (crate-source "allocator-api2" "0.2.21"
                "08zrzs022xwndihvzdn78yqarv2b9696y67i6h78nla3ww87jgb8"))

(define rust-android-activity-0.6.1
  (crate-source "android-activity" "0.6.1"
                "1k8v4mw8kijvmjmqwr05cjvk2arklx2968bjjpa5szc5aaq1nahg"))

(define rust-android-properties-0.2.2
  (crate-source "android-properties" "0.2.2"
                "016slvg269c0y120p9qd8vdfqa2jbw4j0g18gfw6p3ain44v4zpw"))

(define rust-android-system-properties-0.1.5
  (crate-source "android_system_properties" "0.1.5"
                "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))

(define rust-anstyle-1.0.14
  (crate-source "anstyle" "1.0.14"
                "0030szmgj51fxkic1hpakxxgappxzwm6m154a3gfml83lq63l2wl"))

(define rust-anyhow-1.0.104
  (crate-source "anyhow" "1.0.104"
                "0w34jjcm02p5g9kvsjr1dvpw0zs2fi7igi6nr414fkm5gz85w2ik"))

(define rust-approx-0.5.1
  (crate-source "approx" "0.5.1"
                "1ilpv3dgd58rasslss0labarq7jawxmivk17wsh8wmkdm3q15cfa"))

(define rust-arbitrary-1.4.2
  (crate-source "arbitrary" "1.4.2"
                "1wcbi4x7i3lzcrkjda4810nqv03lpmvfhb0a85xrq1mbqjikdl63"))

(define rust-arboard-3.6.1
  (crate-source "arboard" "3.6.1"
                "1byx6q5iipxkb0pyjp80k7c4akp4n5m7nsmqdbz4n7s9ak0a2j03"))

(define rust-arc-swap-1.9.2
  (crate-source "arc-swap" "1.9.2"
                "02w1n3kiz02ml6is3biqia4bgxcf7dml2m9mrd2v3w5f9nzc0jf0"))

(define rust-arrayref-0.3.9
  (crate-source "arrayref" "0.3.9"
                "1jzyp0nvp10dmahaq9a2rnxqdd5wxgbvp8xaibps3zai8c9fi8kn"))

(define rust-arrayvec-0.7.8
  (crate-source "arrayvec" "0.7.8"
                "0mmd8lrijbvg1qp4c5zis5dq41a3mjv2rb6bxkyj9kwaw2k6gyyk"))

(define rust-as-raw-xcb-connection-1.0.1
  (crate-source "as-raw-xcb-connection" "1.0.1"
                "0sqgpz2ymv5yx76r5j2npjq2x5qvvqnw0vrs35cyv30p3pfp2m8p"))

(define rust-ascii-1.1.0
  (crate-source "ascii" "1.1.0"
                "05nyyp39x4wzc1959kv7ckwqpkdzjd9dw4slzyjh73qbhjcfqayr"))

(define rust-ash-0.38.0+1.3.281
  (crate-source "ash" "0.38.0+1.3.281"
                "0vx4yf689v1rc680jvy8bnysx5sgd8f33wnp2vqaizh0v0v4kd0b"))

(define rust-async-lock-3.4.2
  (crate-source "async-lock" "3.4.2"
                "04c3xrrdrfrvh9v0ajxrangpy38qi76qq268zslphnxxjqjpy3r9"))

(define rust-async-trait-0.1.91
  (crate-source "async-trait" "0.1.91"
                "1v3cm8mzg66037wm392p1vsdx0lq8bid6y2ivr7z03lpfx0xqdmf"))

(define rust-atk-0.18.2
  (crate-source "atk" "0.18.2"
                "0jw2n5xln62px4dh0hxdzbkbfraznkjakwznwhxrjbh72c9646r4"))

(define rust-atk-sys-0.18.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "atk-sys" "0.18.2"
                "11nh2h3g7s772wb6lmjdsjbwi8rf9i11gvyyp8mpv9qc9dl8pr65"))

(define rust-atomic-0.6.1
  (crate-source "atomic" "0.6.1"
                "0h43ljcgbl6vk62hs6yk7zg7qn3myzvpw8k7isb9nzhkbdvvz758"))

(define rust-atomic-waker-1.1.2
  (crate-source "atomic-waker" "1.1.2"
                "1h5av1lw56m0jf0fd3bchxq8a30xv0b4wv8s4zkp4s0i7mfvs18m"))

(define rust-autocfg-1.5.1
  (crate-source "autocfg" "1.5.1"
                "0lqasy5i30flcgih1b50kvsk6z32g09r1q4ql7q81pj6228jy0zj"))

(define rust-base62-2.2.4
  (crate-source "base62" "2.2.4"
                "0jzfkr5ldw7g5sh1l62qsxrhvnfpq9hw0kb8qkxvf3n6672plqyd"))

(define rust-base64-0.22.1
  (crate-source "base64" "0.22.1"
                "1imqzgh7bxcikp5vx3shqvw9j09g9ly0xr0jma0q66i52r7jbcvj"))

(define rust-bincode-1.3.3
  (crate-source "bincode" "1.3.3"
                "1bfw3mnwzx5g1465kiqllp5n4r10qrqy88kdlp3jfwnq2ya5xx5i"))

(define rust-bindgen-0.72.1
  (crate-source "bindgen" "0.72.1"
                "15bq73y3wd3x3vxh3z3g72hy08zs8rxg1f0i1xsrrd6g16spcdwr"))

(define rust-bit-set-0.5.3
  (crate-source "bit-set" "0.5.3"
                "1wcm9vxi00ma4rcxkl3pzzjli6ihrpn9cfdi0c5b4cvga2mxs007"))

(define rust-bit-set-0.8.0
  (crate-source "bit-set" "0.8.0"
                "18riaa10s6n59n39vix0cr7l2dgwdhcpbcm97x1xbyfp1q47x008"))

(define rust-bit-vec-0.6.3
  (crate-source "bit-vec" "0.6.3"
                "1ywqjnv60cdh1slhz67psnp422md6jdliji6alq0gmly2xm9p7rl"))

(define rust-bit-vec-0.8.0
  (crate-source "bit-vec" "0.8.0"
                "1xxa1s2cj291r7k1whbxq840jxvmdsq9xgh7bvrxl46m80fllxjy"))

(define rust-bitflags-1.3.2
  (crate-source "bitflags" "1.3.2"
                "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))

(define rust-bitflags-2.13.1
  (crate-source "bitflags" "2.13.1"
                "1nl76mpykmwmb8rq1l5vw1azdh1wvxdrnsk4sy3rdrzx01nvg25m"))

(define rust-bitvec-1.1.1
  (crate-source "bitvec" "1.1.1"
                "0dqq44v9877q0xbl4g6aaaf3xhh3m1ca7ag0iy4l17ap5k8w7knx"))

(define rust-block-0.1.6
  (crate-source "block" "0.1.6"
                "16k9jgll25pzsq14f244q22cdv0zb4bqacldg3kx6h89d7piz30d"))

(define rust-block-buffer-0.10.4
  (crate-source "block-buffer" "0.10.4"
                "0w9sa2ypmrsqqvc20nhwr75wbb5cjr4kkyhpjm1z1lv2kdicfy1h"))

(define rust-block-buffer-0.12.1
  (crate-source "block-buffer" "0.12.1"
                "1ak0cvmxz3yifqmzv6aba9606brsz7d5g3piv5xdcvjsx7dwgxnj"))

(define rust-block2-0.5.1
  (crate-source "block2" "0.5.1"
                "0pyiha5his2grzqr3mynmq244laql2j20992i59asp0gy7mjw4rc"))

(define rust-bstr-1.13.0
  (crate-source "bstr" "1.13.0"
                "0c6mzdwk0ydxdpfmcgax8sji9bpagvi11lcsap0y3whqsyac0z8z"))

(define rust-bumpalo-3.20.3
  (crate-source "bumpalo" "3.20.3"
                "0jc6va3nwcqikm7chnpdv1s87my3gs2j7g1sc7g3k91brg3arxbj"))

(define rust-by-address-1.2.1
  (crate-source "by_address" "1.2.1"
                "01idmag3lcwnnqrnnyik2gmbrr34drsi97q15ihvcbbidf2kryk4"))

(define rust-bytemuck-1.25.2
  (crate-source "bytemuck" "1.25.2"
                "15rp2m7j7kq22s76cbjwmrkd5r8lvacnm0mnrj013cnzka22x0wm"))

(define rust-bytemuck-derive-1.11.0
  (crate-source "bytemuck_derive" "1.11.0"
                "1r9xdwcdxw385lbflmqlcc2via7hvg7d3zk2ky5mi73bkc2r6mpn"))

(define rust-bytes-1.12.1
  (crate-source "bytes" "1.12.1"
                "017z19dpg4f942h051m7bpnzcgng042hhcpd7bmg7bjjqd42lrgw"))

(define rust-cairo-rs-0.18.5
  (crate-source "cairo-rs" "0.18.5"
                "1qjfkcq3mrh3p01nnn71dy3kn99g21xx3j8xcdvzn8ll2pq6x8lc"))

(define rust-cairo-sys-rs-0.18.2
  (crate-source "cairo-sys-rs" "0.18.2"
                "0lfsxl7ylw3phbnwmz3k58j1gnqi6kc2hdc7g3bb7f4hwnl9yp38"))

(define rust-calloop-0.13.0
  (crate-source "calloop" "0.13.0"
                "1v5zgidnhsyml403rzr7vm99f8q6r5bxq5gxyiqkr8lcapwa57dr"))

(define rust-calloop-wayland-source-0.3.0
  (crate-source "calloop-wayland-source" "0.3.0"
                "086x5mq16prrcwd9k6bw9an0sp8bj9l5daz4ziz5z4snf2c6m9lm"))

(define rust-castaway-0.2.4
  (crate-source "castaway" "0.2.4"
                "0nn5his5f8q20nkyg1nwb40xc19a08yaj4y76a8q2y3mdsmm3ify"))

(define rust-cc-1.4.0
  (crate-source "cc" "1.4.0"
                "1fc26n76n7gr37m2q0xw5l8jpn4sd33hvyppmwhv6v4fcyxq3pas"))

(define rust-cesu8-1.1.0
  (crate-source "cesu8" "1.1.0"
                "0g6q58wa7khxrxcxgnqyi9s1z2cjywwwd3hzr5c55wskhx6s0hvd"))

(define rust-cexpr-0.6.0
  (crate-source "cexpr" "0.6.0"
                "0rl77bwhs5p979ih4r0202cn5jrfsrbgrksp40lkfz5vk1x3ib3g"))

(define rust-cfg-aliases-0.1.1
  (crate-source "cfg_aliases" "0.1.1"
                "17p821nc6jm830vzl2lmwz60g3a30hcm33nk6l257i1rjdqw85px"))

(define rust-cfg-aliases-0.2.2
  (crate-source "cfg_aliases" "0.2.2"
                "09rm3dv28gbsal7w6q76lg2nfyn8wp789ska9b8vr1w750xfhygh"))

(define rust-cfg-expr-0.15.8
  (crate-source "cfg-expr" "0.15.8"
                "00lgf717pmf5qd2qsxxzs815v6baqg38d6m5i6wlh235p14asryh"))

(define rust-cfg-if-1.0.4
  (crate-source "cfg-if" "1.0.4"
                "008q28ajc546z5p2hcwdnckmg0hia7rnx52fni04bwqkzyrghc4k"))

(define rust-chardetng-0.1.17
  (crate-source "chardetng" "0.1.17"
                "1spikjcnblwa5n1nnk46fxkwn86yfiqxgs47h4yaw23vbfvg1f0l"))

(define rust-chrono-0.4.45
  (crate-source "chrono" "0.4.45"
                "09rkcgk6is2sdhqs9142zv8xqnj8ryx8m9hknllqwyv9wxi9x9qs"))

(define rust-chunked-transfer-1.5.0
  (crate-source "chunked_transfer" "1.5.0"
                "00a9h3csr1xwkqrzpz5kag4h92zdkrnxq4ppxidrhrx29syf6kbf"))

(define rust-clang-sys-1.9.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "clang-sys" "1.9.1"
                "12kqa3wywpxw3jk7n2dqz9fjm8p0qczx37y0yib3nwc0njkqnyhm"))

(define rust-clap-4.6.4
  (crate-source "clap" "4.6.4"
                "1dz5brl39xchkml0khm348i87w89misprlinmnk77vwjawa0q7nr"))

(define rust-clap-builder-4.6.2
  (crate-source "clap_builder" "4.6.2"
                "12sl6fyj6w2djxj0lsc1lkj1h3wpx74fjhb37izvaf65vjpji5ph"))

(define rust-clap-derive-4.6.4
  (crate-source "clap_derive" "4.6.4"
                "0qd0v7pa2arwxjjinmjim6xrjy61bc28m1yryhc7zjjssswx44nh"))

(define rust-clap-lex-1.1.0
  (crate-source "clap_lex" "1.1.0"
                "1ycqkpygnlqnndghhcxjb44lzl0nmgsia64x9581030yifxs7m68"))

(define rust-clipboard-win-5.4.1
  (crate-source "clipboard-win" "5.4.1"
                "1m44gqy11rq1ww7jls86ppif98v6kv2wkwk8p17is86zsdq3gq5x"))

(define rust-cobs-0.3.0
  (crate-source "cobs" "0.3.0"
                "18f0kxxa1fqb8pz2dxwssnhsrvhrs5j4p8xllgin5d7h36sn3a8g"))

(define rust-codespan-reporting-0.12.0
  (crate-source "codespan-reporting" "0.12.0"
                "108g41xqzhr8fx8hlpy5qzmqq8ylldbj37wndkaqm34yy1d2wvgy"))

(define rust-combine-4.6.7
  (crate-source "combine" "4.6.7"
                "1z8rh8wp59gf8k23ar010phgs0wgf5i8cx4fg01gwcnzfn5k0nms"))

(define rust-compact-str-0.9.1
  (crate-source "compact_str" "0.9.1"
                "1aq0vx3xnaxf9k8p1pwch5v5av0xj2ddq2av25aa76jd4z1d3zcx"))

(define rust-concurrent-queue-2.5.0
  (crate-source "concurrent-queue" "2.5.0"
                "0wrr3mzq2ijdkxwndhf79k952cp4zkz35ray8hvsxl96xrx1k82c"))

(define rust-console-0.16.4
  (crate-source "console" "0.16.4"
                "0z5sik90c39ywvkdkdc5bqrkbj441ycmvf21mn7yizpnlijz9rag"))

(define rust-const-oid-0.10.2
  (crate-source "const-oid" "0.10.2"
                "0p7m286mp8aai4sa72g7ji6qm0d4ns8wg4i4b2hj9p9615zm3vx6"))

(define rust-const-random-0.1.18
  (crate-source "const-random" "0.1.18"
                "0n8kqz3y82ks8znvz1mxn3a9hadca3amzf33gmi6dc3lzs103q47"))

(define rust-const-random-macro-0.1.16
  (crate-source "const-random-macro" "0.1.16"
                "03iram4ijjjq9j5a7hbnmdngj8935wbsd0f5bm8yw2hblbr3kn7r"))

(define rust-convert-case-0.10.0
  (crate-source "convert_case" "0.10.0"
                "1fff1x78mp2c233g68my0ag0zrmjdbym8bfyahjbfy4cxza5hd33"))

(define rust-core-foundation-0.10.1
  (crate-source "core-foundation" "0.10.1"
                "1xjns6dqf36rni2x9f47b65grxwdm20kwdg9lhmzdrrkwadcv9mj"))

(define rust-core-foundation-0.9.4
  (crate-source "core-foundation" "0.9.4"
                "13zvbbj07yk3b61b8fhwfzhy35535a583irf23vlcg59j7h9bqci"))

(define rust-core-foundation-sys-0.8.7
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "core-foundation-sys" "0.8.7"
                "12w8j73lazxmr1z0h98hf3z623kl8ms7g07jch7n4p8f9nwlhdkp"))

(define rust-core-graphics-0.23.2
  (crate-source "core-graphics" "0.23.2"
                "10dhv3gk4kmbzl14xxkrhhky4fdp8h6nzff6h0019qgr6nz84xy0"))

(define rust-core-graphics-types-0.1.3
  (crate-source "core-graphics-types" "0.1.3"
                "1bxg8nxc8fk4kxnqyanhf36wq0zrjr552c58qy6733zn2ihhwfa5"))

(define rust-core-graphics-types-0.2.0
  (crate-source "core-graphics-types" "0.2.0"
                "1sqka1rz84lr3p69i1s6lggnpnznmrw4ngc5q76w9xhky80s2i1x"))

(define rust-core-maths-0.1.1
  (crate-source "core_maths" "0.1.1"
                "0c0dv11ixxpc9bsx5xasvl98mb1dlprzcm6qq6ls3nsygw0mwx3p"))

(define rust-cow-utils-0.1.3
  (crate-source "cow-utils" "0.1.3"
                "0y9cxf0hm2hy4bn050wl2785md5q4i5gy9asjq006ip1mwjfyys1"))

(define rust-cpufeatures-0.2.17
  (crate-source "cpufeatures" "0.2.17"
                "10023dnnaghhdl70xcds12fsx2b966sxbxjq5sxs49mvxqw5ivar"))

(define rust-cpufeatures-0.3.0
  (crate-source "cpufeatures" "0.3.0"
                "00fjhygsqmh4kbxxlb99mcsbspxcai6hjydv4c46pwb67wwl2alb"))

(define rust-crc32fast-1.5.0
  (crate-source "crc32fast" "1.5.0"
                "04d51liy8rbssra92p0qnwjw8i9rm9c4m3bwy19wjamz1k4w30cl"))

(define rust-crossbeam-channel-0.5.16
  (crate-source "crossbeam-channel" "0.5.16"
                "17k72dh5qqkh0xvqzr27wny7gl1l7fgzlvh2xxx71jmfgz1n6lyq"))

(define rust-crossbeam-deque-0.8.7
  (crate-source "crossbeam-deque" "0.8.7"
                "1sqcxia1mmz2fw8ba1v72jjrvbkvg7c6sz9l3sl07sv1gggf10ai"))

(define rust-crossbeam-epoch-0.9.20
  (crate-source "crossbeam-epoch" "0.9.20"
                "0gzg0v8in20iajikalg5i5qgpp0m26r426f0fs8nwk953w218s9d"))

(define rust-crossbeam-utils-0.8.22
  (crate-source "crossbeam-utils" "0.8.22"
                "05vwf7pmjq8c8f3fp5qqdm0z3cnk4p62wi8spf0jms5yjnh3v031"))

(define rust-crossterm-0.29.0
  (crate-source "crossterm" "0.29.0"
                "0yzqxxd90k7d2ac26xq1awsznsaq0qika2nv1ik3p0vzqvjg5ffq"))

(define rust-crossterm-winapi-0.9.1
  (crate-source "crossterm_winapi" "0.9.1"
                "0axbfb2ykbwbpf1hmxwpawwfs8wvmkcka5m561l7yp36ldi7rpdc"))

(define rust-crunchy-0.2.4
  (crate-source "crunchy" "0.2.4"
                "1mbp5navim2qr3x48lyvadqblcxc1dm0lqr0swrkkwy2qblvw3s6"))

(define rust-crypto-common-0.1.7
  (crate-source "crypto-common" "0.1.7"
                "02nn2rhfy7kvdkdjl457q2z0mklcvj9h662xrq6dzhfialh2kj3q"))

(define rust-crypto-common-0.2.2
  (crate-source "crypto-common" "0.2.2"
                "0lql5wjlrjkd3r0w32rwbgqfmgg84ms3h65ldnlckmkc3nb4qvnf"))

(define rust-csscolorparser-0.6.2
  (crate-source "csscolorparser" "0.6.2"
                "1gxh11hajx96mf5sd0az6mfsxdryfqvcfcphny3yfbfscqq7sapb"))

(define rust-ctor-0.6.3
  (crate-source "ctor" "0.6.3"
                "03jrw316acxl3vld3wvl5m8jkj0mwwbssx7i06sb5blg4ww02kj2"))

(define rust-ctor-proc-macro-0.0.7
  (crate-source "ctor-proc-macro" "0.0.7"
                "1havwah6iryn0ang09y12xxr45jsp7ff27zflz4mhgk017ghlmjj"))

(define rust-cursor-icon-1.2.0
  (crate-source "cursor-icon" "1.2.0"
                "0bvkw7ak1mqwcpkgd9lh7n00hcvlh87jfl7188f231nz6zfy2ypj"))

(define rust-darling-0.23.0
  (crate-source "darling" "0.23.0"
                "179fj6p6ajw4dnkrik51wjhifxwy02x5zhligyymcb905zd17bi5"))

(define rust-darling-core-0.23.0
  (crate-source "darling_core" "0.23.0"
                "1c033vrks38vpw8kwgd5w088dsr511kfz55n9db56prkgh7sarcq"))

(define rust-darling-macro-0.23.0
  (crate-source "darling_macro" "0.23.0"
                "13fvzji9xyp304mgq720z5l0xgm54qj68jibwscagkynggn88fdc"))

(define rust-deltae-0.3.2
  (crate-source "deltae" "0.3.2"
                "1d3hw9hpvicl9x0x34jr2ybjk5g5ym1lhbyz6zj31110gq8zaaap"))

(define rust-deranged-0.5.8
  (crate-source "deranged" "0.5.8"
                "0711df3w16vx80k55ivkwzwswziinj4dz05xci3rvmn15g615n3w"))

(define rust-derive-arbitrary-1.4.2
  (crate-source "derive_arbitrary" "1.4.2"
                "0annkmfwfavd978vwwrxvrpykjfdnc3w6q1ln3j7kyfg5pc7nmhy"))

(define rust-derive-more-2.1.1
  (crate-source "derive_more" "2.1.1"
                "0d5i10l4aff744jw7v4n8g6cv15rjk5mp0f1z522pc2nj7jfjlfp"))

(define rust-derive-more-impl-2.1.1
  (crate-source "derive_more-impl" "2.1.1"
                "1jwdp836vymp35d7mfvvalplkdgk2683nv3zjlx65n1194k9g6kr"))

(define rust-digest-0.10.7
  (crate-source "digest" "0.10.7"
                "14p2n6ih29x81akj097lvz7wi9b6b9hvls0lwrv7b6xwyy0s5ncy"))

(define rust-digest-0.11.3
  (crate-source "digest" "0.11.3"
                "1hnmhd4rkybr11292w42pz9ppzx1h49glrhqg107k4s1b2xnvpgi"))

(define rust-dirs-6.0.0
  (crate-source "dirs" "6.0.0"
                "0knfikii29761g22pwfrb8d0nqpbgw77sni9h2224haisyaams63"))

(define rust-dirs-sys-0.5.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.5.0"
                "1aqzpgq6ampza6v012gm2dppx9k35cdycbj54808ksbys9k366p0"))

(define rust-dispatch-0.2.0
  (crate-source "dispatch" "0.2.0"
                "0fwjr9b7582ic5689zxj8lf7zl94iklhlns3yivrnv8c9fxr635x"))

(define rust-dispatch2-0.3.1
  (crate-source "dispatch2" "0.3.1"
                "0f5xmnbzpaz1g80m27kd804p75nswh0ikb6wvqh4ba3x9rz3c3hy"))

(define rust-displaydoc-0.2.7
  (crate-source "displaydoc" "0.2.7"
                "1a42mwpgpwcqq2qqgkcc630wvsc2p2dkmgacjnclginwfz9js8y6"))

(define rust-dlib-0.5.3
  (crate-source "dlib" "0.5.3"
                "0jpr4smrwrv8xj70mz4ixnbc6ljm82f12z2mz1hv89056y3wv3mb"))

(define rust-doctest-file-1.1.1
  (crate-source "doctest-file" "1.1.1"
                "0nfkscv8gf3ixhradrmwm3f2p6sc0ab0psah7c8976ha9zkh9ny2"))

(define rust-document-features-0.2.12
  (crate-source "document-features" "0.2.12"
                "0qcgpialq3zgvjmsvar9n6v10rfbv6mk6ajl46dd4pj5hn3aif6l"))

(define rust-downcast-rs-1.2.1
  (crate-source "downcast-rs" "1.2.1"
                "1lmrq383d1yszp7mg5i7i56b17x2lnn3kb91jwsq0zykvg2jbcvm"))

(define rust-dpi-0.1.2
  (crate-source "dpi" "0.1.2"
                "0xhsvzgjvdch2fwmfc9vkb708b0q59b6imypyjlgbiigyb74rcfq"))

(define rust-dragonbox-ecma-0.1.12
  (crate-source "dragonbox_ecma" "0.1.12"
                "1gs6yz1klalmhmvq8wrmxz0cnc41c4xlb7iz5pv7wzn3hh8713px"))

(define rust-dtor-0.1.1
  (crate-source "dtor" "0.1.1"
                "00fkcw8zn0g10m4k8b0qgmn304g47xqwn1ihhzyjra48n3p04ka0"))

(define rust-dtor-proc-macro-0.0.6
  (crate-source "dtor-proc-macro" "0.0.6"
                "19fg0mivy9qyvbwmqj3ysj0qm5cay0gyp5fyw1imq89cj95cyy7n"))

(define rust-dyn-clone-1.0.20
  (crate-source "dyn-clone" "1.0.20"
                "0m956cxcg8v2n8kmz6xs5zl13k2fak3zkapzfzzp7pxih6hix26h"))

(define rust-either-1.17.0
  (crate-source "either" "1.17.0"
                "07dagpwcfdzpkb1n7fxkx0q3nv80rnf81v7gwlz9ljx22mn8yply"))

(define rust-embedded-io-0.4.0
  (crate-source "embedded-io" "0.4.0"
                "1v9wrc5nsgaaady7i3ya394sik5251j0iq5rls7mrx7fv696h6pg"))

(define rust-embedded-io-0.6.1
  (crate-source "embedded-io" "0.6.1"
                "0v901xykajh3zffn6x4cnn4fhgfw3c8qpjwbsk6gai3gaccg3l7d"))

(define rust-encode-unicode-1.0.0
  (crate-source "encode_unicode" "1.0.0"
                "1h5j7j7byi289by63s3w4a8b3g6l5ccdrws7a67nn07vdxj77ail"))

(define rust-encoding-rs-0.8.35
  (crate-source "encoding_rs" "0.8.35"
                "1wv64xdrr9v37rqqdjsyb8l8wzlcbab80ryxhrszvnj59wy0y0vm"))

(define rust-equivalent-1.0.2
  (crate-source "equivalent" "1.0.2"
                "03swzqznragy8n0x31lqc78g2af054jwivp7lkrbrc0khz74lyl7"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-error-code-3.3.2
  (crate-source "error-code" "3.3.2"
                "0nacxm9xr3s1rwd6fabk3qm89fyglahmbi4m512y0hr8ym6dz8ny"))

(define rust-euclid-0.22.14
  (crate-source "euclid" "0.22.14"
                "01ksjl4vb8ms89laswnjpld3z4n6c1s7qlqq0djx3imiwdjm787i"))

(define rust-event-listener-5.4.2
  (crate-source "event-listener" "5.4.2"
                "1lk9sv7r07l58jk263s18896l55mx9jv0g1rm4hj2mpi3paas8ss"))

(define rust-event-listener-strategy-0.5.4
  (crate-source "event-listener-strategy" "0.5.4"
                "14rv18av8s7n8yixg38bxp5vg2qs394rl1w052by5npzmbgz7scb"))

(define rust-evictor-0.5.1
  (crate-source "evictor" "0.5.1"
                "077axkrwg396r53izw2axxxa9f6ssg11p6clx5amj71x8j0lr6zv"))

(define rust-fancy-regex-0.11.0
  (crate-source "fancy-regex" "0.11.0"
                "18j0mmzfycibhxhhhfja00dxd1vf8x5c28lbry224574h037qpxr"))

(define rust-fancy-regex-0.16.2
  (crate-source "fancy-regex" "0.16.2"
                "0vy4c012f82xcg3gs068mq110zhsrnajh58fmq1jxr7vaijhb2wr"))

(define rust-fast-srgb8-1.0.0
  (crate-source "fast-srgb8" "1.0.0"
                "18g6xwwh4gnkyx1352hnvwagpv0n4y98yp2llm8vyvwxh487abnx"))

(define rust-fastrand-2.5.0
  (crate-source "fastrand" "2.5.0"
                "08q2r30y62winysimnlpbvw9kiwn0rmdlidqlmzd6z90mv764z6s"))

(define rust-fdeflate-0.3.7
  (crate-source "fdeflate" "0.3.7"
                "130ga18vyxbb5idbgi07njymdaavvk6j08yh1dfarm294ssm6s0y"))

(define rust-field-offset-0.3.6
  (crate-source "field-offset" "0.3.6"
                "0zq5sssaa2ckmcmxxbly8qgz3sxpb8g1lwv90sdh1z74qif2gqiq"))

(define rust-filedescriptor-0.8.3
  (crate-source "filedescriptor" "0.8.3"
                "0bb8qqa9h9sj2mzf09yqxn260qkcqvmhmyrmdjvyxcn94knmh1z4"))

(define rust-filetime-0.2.29
  (crate-source "filetime" "0.2.29"
                "0napyyfccb26r7fyh9hg7ixrh4vph9h7y7k4iv1j19phqwrpla2w"))

(define rust-find-msvc-tools-0.1.9
  (crate-source "find-msvc-tools" "0.1.9"
                "10nmi0qdskq6l7zwxw5g56xny7hb624iki1c39d907qmfh3vrbjv"))

(define rust-finl-unicode-1.4.0
  (crate-source "finl_unicode" "1.4.0"
                "1md4j32sa8g6y7q9yphpslhhjdjxig1bczkjp8mxccz5lv1xsi4q"))

(define rust-fixedbitset-0.4.2
  (crate-source "fixedbitset" "0.4.2"
                "101v41amgv5n9h4hcghvrbfk5vrncx1jwm35rn5szv4rk55i7rqc"))

(define rust-fixedbitset-0.5.7
  (crate-source "fixedbitset" "0.5.7"
                "16fd3v9d2cms2vddf9xhlm56sz4j0zgrk3d2h6v1l7hx760lwrqx"))

(define rust-flate2-1.1.9
  (crate-source "flate2" "1.1.9"
                "0g2pb7cxnzcbzrj8bw4v6gpqqp21aycmf6d84rzb6j748qkvlgw4"))

(define rust-fluent-uri-0.1.4
  (crate-source "fluent-uri" "0.1.4"
                "03ah2qajw5l1zbc81kh1n8g7n24mfxbg6vqyv9ixipg1vglh9iqp"))

(define rust-fnv-1.0.7
  (crate-source "fnv" "1.0.7"
                "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))

(define rust-foldhash-0.1.5
  (crate-source "foldhash" "0.1.5"
                "1wisr1xlc2bj7hk4rgkcjkz3j2x4dhd1h9lwk7mj8p71qpdgbi6r"))

(define rust-foldhash-0.2.0
  (crate-source "foldhash" "0.2.0"
                "1nvgylb099s11xpfm1kn2wcsql080nqmnhj1l25bp3r2b35j9kkp"))

(define rust-foreign-types-0.5.0
  (crate-source "foreign-types" "0.5.0"
                "0rfr2zfxnx9rz3292z5nyk8qs2iirznn5ff3rd4vgdwza6mdjdyp"))

(define rust-foreign-types-macros-0.2.4
  (crate-source "foreign-types-macros" "0.2.4"
                "09aj8wl64pqvm6ix1800khgypdhinwinxhfv7n3yn5b95qc90lga"))

(define rust-foreign-types-shared-0.3.1
  (crate-source "foreign-types-shared" "0.3.1"
                "0nykdvv41a3d4py61bylmlwjhhvdm0b3bcj9vxhqgxaxnp5ik6ma"))

(define rust-funty-2.0.0
  (crate-source "funty" "2.0.0"
                "177w048bm0046qlzvp33ag3ghqkqw4ncpzcm5lq36gxf2lla7mg6"))

(define rust-futures-channel-0.3.33
  (crate-source "futures-channel" "0.3.33"
                "1bn5hlhfkl1sgypmiachaqcgwmr6wmjal7dyhfyb1zkazvs90996"))

(define rust-futures-core-0.3.33
  (crate-source "futures-core" "0.3.33"
                "1iqdbvcdlplfr2g43h7xrfkv2sg5p1a26x8acz1xgxl07i3hrm9c"))

(define rust-futures-executor-0.3.33
  (crate-source "futures-executor" "0.3.33"
                "0n3lpkmcfrsnh40i4armn040gnqbpd257hz5qs46zipjr6f8fm37"))

(define rust-futures-io-0.3.33
  (crate-source "futures-io" "0.3.33"
                "0yjx13qdm9b2p4w00ddw85k6yccnnmqrlrrz8yfmi5jg7jmfqxs5"))

(define rust-futures-macro-0.3.33
  (crate-source "futures-macro" "0.3.33"
                "02xiyd5y1nk9b805aympj4wq2czgvxnhcml9w9xkc665d3g3qv9d"))

(define rust-futures-task-0.3.33
  (crate-source "futures-task" "0.3.33"
                "02f1y1yvjg1cv998zkgl1706pi9y4fyc9045l1hlmyqyhclfscdj"))

(define rust-futures-util-0.3.33
  (crate-source "futures-util" "0.3.33"
                "1anyg40j5www5l22r2jbn1birsafz4q1w9qmcjk4vqzwasi90ym7"))

(define rust-gdk-0.18.2
  (crate-source "gdk" "0.18.2"
                "14967h4pac5gjyrd47yls4wbicrzhbwnd4ajisfwjyk2ijalbwnr"))

(define rust-gdk-pixbuf-0.18.5
  (crate-source "gdk-pixbuf" "0.18.5"
                "1v7svvl0g7zybndmis5inaqqgi1mvcc6s1n8rkb31f5zn3qzbqah"))

(define rust-gdk-pixbuf-sys-0.18.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gdk-pixbuf-sys" "0.18.0"
                "1xya543c4ffd2n7aiwwrdxsyc9casdbasafi6ixcknafckm3k61z"))

(define rust-gdk-sys-0.18.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gdk-sys" "0.18.2"
                "1xzkl9mdfsj1zja7ikrg3g8rinqsb9nqq64yc5k1xb4lhpri6baw"))

(define rust-generic-array-0.14.7
  (crate-source "generic-array" "0.14.7"
                "16lyyrzrljfq424c3n8kfwkqihlimmsg5nhshbbp48np3yjrqr45"))

(define rust-gethostname-1.1.0
  (crate-source "gethostname" "1.1.0"
                "1n6bj9gh503ggjblfjcai96gmxynxsrykaynljlrfdra34q95m0v"))

(define rust-getrandom-0.2.17
  (crate-source "getrandom" "0.2.17"
                "1l2ac6jfj9xhpjjgmcx6s1x89bbnw9x6j9258yy6xjkzpq0bqapz"))

(define rust-getrandom-0.3.4
  (crate-source "getrandom" "0.3.4"
                "1zbpvpicry9lrbjmkd4msgj3ihff1q92i334chk7pzf46xffz7c9"))

(define rust-getrandom-0.4.3
  (crate-source "getrandom" "0.4.3"
                "16b0202fkdwz3p2cyll82dv24ljbn0wiyy829v4lwbkbflyqh3ih"))

(define rust-gio-0.18.4
  (crate-source "gio" "0.18.4"
                "0wsc6mnx057s4ailacg99dwgna38dbqli5x7a6y9rdw75x9qzz6l"))

(define rust-gio-sys-0.18.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gio-sys" "0.18.1"
                "1lip8z35iy9d184x2qwjxlbxi64q9cpayy7v1p5y9xdsa3w6smip"))

(define rust-gl-generator-0.14.0
  (crate-source "gl_generator" "0.14.0"
                "0k8j1hmfnff312gy7x1aqjzcm8zxid7ij7dlb8prljib7b1dz58s"))

(define rust-glib-0.18.5
  (crate-source "glib" "0.18.5"
                "1r8fw0627nmn19bgk3xpmcfngx3wkn7mcpq5a8ma3risx3valg93"))

(define rust-glib-macros-0.18.5
  (crate-source "glib-macros" "0.18.5"
                "1p5cla53fcp195zp0hkqpmnn7iwmkdswhy7xh34002bw8y7j5c0b"))

(define rust-glib-sys-0.18.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "glib-sys" "0.18.1"
                "164qhsfmlzd5mhyxs8123jzbdfldwxbikfpq5cysj3lddbmy4g06"))

(define rust-glob-0.3.4
  (crate-source "glob" "0.3.4"
                "02zby4rsidb2ksrnysyrsaap7rk6wpp7vl5chflndafhl5gaisz4"))

(define rust-globset-0.4.19
  (crate-source "globset" "0.4.19"
                "1k89ff27dk6x3386nsavqflpdf723c3vf2mnhi42ar24mv93fzg4"))

(define rust-globwalk-0.8.1
  (crate-source "globwalk" "0.8.1"
                "1k6xwkydr7igvwjn3xkwjywk4213lcs53f576ilqz1h84jaazqwk"))

(define rust-glow-0.16.0
  (crate-source "glow" "0.16.0"
                "022z12nlyfpy36fvp2szq792xix1xbgkznpmicf1c404sxhfmrf5"))

(define rust-glutin-wgl-sys-0.6.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "glutin_wgl_sys" "0.6.1"
                "0gng2810jb5x133lmy17qifjx6s90lnprm86afg7mfls505y0kic"))

(define rust-gobject-sys-0.18.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gobject-sys" "0.18.0"
                "0i6fhp3m6vs3wkzyc22rk2cqj68qvgddxmpaai34l72da5xi4l08"))

(define rust-gpu-allocator-0.28.0
  (crate-source "gpu-allocator" "0.28.0"
                "15c7izilxm5j52d9hr9kqjb2pjram293xm182mgnrnxarykmw9ai"))

(define rust-gpu-descriptor-0.3.2
  (crate-source "gpu-descriptor" "0.3.2"
                "1jm0acxkw9lrzzcbvjqynwdr53qsqz7vx5d8c8h77qq5j4s8775q"))

(define rust-gpu-descriptor-types-0.2.0
  (crate-source "gpu-descriptor-types" "0.2.0"
                "14ab90klss7w0ybj95fcnqxjsjya17xjhf576dpvi4zq5ml45wpx"))

(define rust-gtk-0.18.2
  (crate-source "gtk" "0.18.2"
                "0sjh12mvvcmkz54nn30lb2xrzxagshbz1x2i4xfvshpwgccznmpx"))

(define rust-gtk-sys-0.18.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gtk-sys" "0.18.2"
                "0524c9mwx5jxkl8pb6q45g2n1kfwajz1isa0vnvkwmar3k1a2acg"))

(define rust-gtk3-macros-0.18.2
  (crate-source "gtk3-macros" "0.18.2"
                "179yszj83hgfxl4h4g2zfbsyn9a2zc5zrp6nzqv0fkzi45dkrzsj"))

(define rust-half-2.7.1
  (crate-source "half" "2.7.1"
                "0jyq42xfa6sghc397mx84av7fayd4xfxr4jahsqv90lmjr5xi8kf"))

(define rust-hashbrown-0.15.5
  (crate-source "hashbrown" "0.15.5"
                "189qaczmjxnikm9db748xyhiw04kpmhm9xj9k9hg0sgx7pjwyacj"))

(define rust-hashbrown-0.16.1
  (crate-source "hashbrown" "0.16.1"
                "004i3njw38ji3bzdp9z178ba9x3k0c1pgy8x69pj7yfppv4iq7c4"))

(define rust-hashbrown-0.17.1
  (crate-source "hashbrown" "0.17.1"
                "0jmqz7i4yl6cm7rbn0i2ffkfrmwi6xkmzkaldr2v8bcsx2v0jngd"))

(define rust-heck-0.4.1
  (crate-source "heck" "0.4.1"
                "1a7mqsnycv5z4z5vnv1k34548jzmc0ajic7c1j8jsaspnhw5ql4m"))

(define rust-heck-0.5.0
  (crate-source "heck" "0.5.0"
                "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))

(define rust-hermit-abi-0.5.2
  (crate-source "hermit-abi" "0.5.2"
                "1744vaqkczpwncfy960j2hxrbjl1q01csm84jpd9dajbdr2yy3zw"))

(define rust-hex-0.4.3
  (crate-source "hex" "0.4.3"
                "0w1a4davm1lgzpamwnba907aysmlrnygbqmfis2mqjx5m552a93z"))

(define rust-hexf-parse-0.2.1
  (crate-source "hexf-parse" "0.2.1"
                "1pr3a3sk66ddxdyxdxac7q6qaqjcn28v0njy22ghdpfn78l8d9nz"))

(define rust-home-0.5.12
  (crate-source "home" "0.5.12"
                "13bjyzgx6q9srnfvl43dvmhn93qc8mh5w7cylk2g13sj3i3pyqnc"))

(define rust-http-1.5.0
  (crate-source "http" "1.5.0"
                "1q4wpz5hb4cf37g3jrdyffrpa6ngidmd9wrfph92fddzprl3b3ci"))

(define rust-httparse-1.10.1
  (crate-source "httparse" "1.10.1"
                "11ycd554bw2dkgw0q61xsa7a4jn1wb1xbfacmf3dbwsikvkkvgvd"))

(define rust-httpdate-1.0.3
  (crate-source "httpdate" "1.0.3"
                "1aa9rd2sac0zhjqh24c9xvir96g188zldkx0hr6dnnlx5904cfyz"))

(define rust-hybrid-array-0.4.13
  (crate-source "hybrid-array" "0.4.13"
                "133c3dg885v2i2xllzq42cjg93z7zdmajz431zjys7rc2g2md0w1"))

(define rust-iana-time-zone-0.1.65
  (crate-source "iana-time-zone" "0.1.65"
                "0w64khw5p8s4nzwcf36bwnsmqzf61vpwk9ca1920x82bk6nwj6z3"))

(define rust-iana-time-zone-haiku-0.1.2
  (crate-source "iana-time-zone-haiku" "0.1.2"
                "17r6jmj31chn7xs9698r122mapq85mfnv98bb4pg6spm0si2f67k"))

(define rust-ident-case-1.0.1
  (crate-source "ident_case" "1.0.1"
                "0fac21q6pwns8gh1hz3nbq15j8fi441ncl6w4vlnd1cmc55kiq5r"))

(define rust-ignore-0.4.31
  (crate-source "ignore" "0.4.31"
                "10sgi3sggi8jqiy2f45bcxvda2sd1m4cxjlirp8a35g62617p2kz"))

(define rust-include-dir-0.7.4
  (crate-source "include_dir" "0.7.4"
                "1pfh3g45z88kwq93skng0n6g3r7zkhq9ldqs9y8rvr7i11s12gcj"))

(define rust-include-dir-macros-0.7.4
  (crate-source "include_dir_macros" "0.7.4"
                "0x8smnf6knd86g69p19z5lpfsaqp8w0nx14kdpkz1m8bxnkqbavw"))

(define rust-indexmap-2.14.0
  (crate-source "indexmap" "2.14.0"
                "1na9z6f0d5pkjr1lgsni470v98gv2r7c41j8w48skr089x2yjrnl"))

(define rust-indoc-2.0.7
  (crate-source "indoc" "2.0.7"
                "01np60qdq6lvgh8ww2caajn9j4dibx9n58rvzf7cya1jz69mrkvr"))

(define rust-inotify-0.11.4
  (crate-source "inotify" "0.11.4"
                "1j7jkacw6cxra4jf1sbndkpkbm5qm0bvxpcms36cjghq3aaf2fqm"))

(define rust-inotify-sys-0.1.8
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "inotify-sys" "0.1.8"
                "0zgkxmqa7wlsc348166rr9np4560rflzlcvsmf8xyg0i5h5zhcy0"))

(define rust-insta-1.48.0
  (crate-source "insta" "1.48.0"
                "10kbxza7vzj4nvkga8r3rfn6z8i3hnh47bnnb1f429n9x3zgiw46"))

(define rust-instability-0.3.12
  (crate-source "instability" "0.3.12"
                "0wc98mr44w5k1y6pib2x0kydmhbff8gkfgiw36ls684ry47ddcjy"))

(define rust-interprocess-2.4.2
  (crate-source "interprocess" "2.4.2"
                "0nsr54v0i2ac0cfnccf5ks8vcdhxj7nw3rcgdaq7mjq06is274q6"))

(define rust-is-docker-0.2.0
  (crate-source "is-docker" "0.2.0"
                "1cyibrv6817cqcpf391m327ss40xlbik8wxcv5h9pj9byhksx2wj"))

(define rust-is-wsl-0.4.0
  (crate-source "is-wsl" "0.4.0"
                "19bs5pq221d4bknnwiqqkqrnsx2in0fsk8fylxm1747iim4hjdhp"))

(define rust-itertools-0.11.0
  (crate-source "itertools" "0.11.0"
                "0mzyqcc59azx9g5cg6fs8k529gvh4463smmka6jvzs3cd2jp7hdi"))

(define rust-itertools-0.13.0
  (crate-source "itertools" "0.13.0"
                "11hiy3qzl643zcigknclh446qb9zlg4dpdzfkjaa9q9fqpgyfgj1"))

(define rust-itertools-0.14.0
  (crate-source "itertools" "0.14.0"
                "118j6l1vs2mx65dqhwyssbrxpawa90886m3mzafdvyip41w2q69b"))

(define rust-itoa-1.0.18
  (crate-source "itoa" "1.0.18"
                "10jnd1vpfkb8kj38rlkn2a6k02afvj3qmw054dfpzagrpl6achlg"))

(define rust-jni-0.21.1
  (crate-source "jni" "0.21.1"
                "15wczfkr2r45slsljby12ymf2hij8wi5b104ghck9byjnwmsm1qs"))

(define rust-jni-0.22.4
  (crate-source "jni" "0.22.4"
                "161lza8gz071h22pgyqyx4n91ixd691z2dbb1pq2g97k5i49mzay"))

(define rust-jni-macros-0.22.4
  (crate-source "jni-macros" "0.22.4"
                "18v02mcn5c7mb2yw6r930xg6ynsn7hwkxv8z2kdhn3qprjn0j0d0"))

(define rust-jni-sys-0.3.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "jni-sys" "0.3.1"
                "0n1j8fbz081w1igfrpc79n6vgm7h3ik34nziy5fjgq5nz7hm59j1"))

(define rust-jni-sys-0.4.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "jni-sys" "0.4.1"
                "1wlahx6f2zhczdjqyn8mk7kshb8x5vsd927sn3lvw41rrf47ldy6"))

(define rust-jni-sys-macros-0.4.1
  (crate-source "jni-sys-macros" "0.4.1"
                "0r32gbabrak15a7p487765b5wc0jcna2yv88mk6m1zjqyi1bkh1q"))

(define rust-jobserver-0.1.35
  (crate-source "jobserver" "0.1.35"
                "1crwgbb0wjph42ni4hqryjxlv4vlr0hyk81g76id9fpa56ysq00w"))

(define rust-js-sys-0.3.103
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "js-sys" "0.3.103"
                "00lib0b6hqmw56r2hjp7xrv730qacslirbkdlhvmi39zvgy4pd2k"))

(define rust-jsonc-parser-0.32.4
  (crate-source "jsonc-parser" "0.32.4"
                "04i5533d84mhz0zrghw5q46q4r5gh5da6h44w5xv5zdlm3hqa1w4"))

(define rust-kasuari-0.4.12
  (crate-source "kasuari" "0.4.12"
                "1688q59qh1mxa28k00lnddn73mh3jcdmj3yrc7l99k23c5yhbrdx"))

(define rust-keyboard-types-0.7.0
  (crate-source "keyboard-types" "0.7.0"
                "12jjfk7dwa1cqp6wzw0xl1zzg3arsrnqy4afsynxn2csqfnxql5p"))

(define rust-khronos-api-3.1.0
  (crate-source "khronos_api" "3.1.0"
                "1p0xj5mlbagqyvvnv8wmv3cr7l9y1m153888pxqwg3vk3mg5inz2"))

(define rust-khronos-egl-6.0.0
  (crate-source "khronos-egl" "6.0.0"
                "0xnzdx0n1bil06xmh8i1x6dbxvk7kd2m70bbm6nw1qzc43r1vbka"))

(define rust-kqueue-1.2.0
  (crate-source "kqueue" "1.2.0"
                "1dc7rm23i7s1574xx185836rxyzynrsv5wkn96nf0649f990fg17"))

(define rust-kqueue-sys-1.1.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "kqueue-sys" "1.1.2"
                "11xhzsgwc82g85072c6m8nimxxqkax4n40sikcsk9hks5573la87"))

(define rust-lab-0.11.0
  (crate-source "lab" "0.11.0"
                "13ymsn5cwl5i9pmp5mfmbap7q688dcp9a17q82crkvb784yifdmz"))

(define rust-lazy-static-1.5.0
  (crate-source "lazy_static" "1.5.0"
                "1zk6dqqni0193xg6iijh7i3i44sryglwgvx20spdvwk3r6sbrlmv"))

(define rust-libc-0.2.189
  (crate-source "libc" "0.2.189"
                "1whjfs375vlng2q6yrbzs73cvp5lm3w1n2gfqajb2vgf7zg3xbry"))

(define rust-libloading-0.8.9
  (crate-source "libloading" "0.8.9"
                "0mfwxwjwi2cf0plxcd685yxzavlslz7xirss3b9cbrzyk4hv1i6p"))

(define rust-libloading-0.9.0
  (crate-source "libloading" "0.9.0"
                "0q4bvhp4kqy2v3bw4cn2bmyq73hskqd1ansa9125gfq5x0ns4k3m"))

(define rust-libm-0.2.16
  (crate-source "libm" "0.2.16"
                "10brh0a3qjmbzkr5mf5xqi887nhs5y9layvnki89ykz9xb1wxlmn"))

(define rust-libredox-0.1.18
  (crate-source "libredox" "0.1.18"
                "0lj6dqz0pzwm32zqss320bhjryg7vymkxa575pzhc7ig6jg2ahy9"))

(define rust-libxdo-0.6.0
  (crate-source "libxdo" "0.6.0"
                "1nqlina6li1bmap0144h4hdsczyyfyinf87qvrw8xlm3as3kncq0"))

(define rust-libxdo-sys-0.11.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libxdo-sys" "0.11.0"
                "04ljl0lmirg8a9q7w8ib2sybx35nnzpbw2xciayip0xpwbkvj8yv"))

(define rust-line-clipping-0.3.7
  (crate-source "line-clipping" "0.3.7"
                "1y19rla4ivdwagf0y4yahvb8jzsddj3jcb8r0xa8n9i3fvsfhl1z"))

(define rust-linked-hash-map-0.5.6
  (crate-source "linked-hash-map" "0.5.6"
                "03vpgw7x507g524nx5i1jf5dl8k3kv0fzg8v3ip6qqwbpkqww5q7"))

(define rust-linux-raw-sys-0.12.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.12.1"
                "0lwasljrqxjjfk9l2j8lyib1babh2qjlnhylqzl01nihw14nk9ij"))

(define rust-linux-raw-sys-0.4.15
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.4.15"
                "1aq7r2g7786hyxhv40spzf2nhag5xbw2axxc1k8z5k1dsgdm4v6j"))

(define rust-litrs-1.0.0
  (crate-source "litrs" "1.0.0"
                "14p0kzzkavnngvybl88nvfwv031cc2qx4vaxpfwsiifm8grdglqi"))

(define rust-lock-api-0.4.14
  (crate-source "lock_api" "0.4.14"
                "0rg9mhx7vdpajfxvdjmgmlyrn20ligzqvn8ifmaz7dc79gkrjhr2"))

(define rust-log-0.4.33
  (crate-source "log" "0.4.33"
                "1bd9dmk22pxgnf0h0slba6rz99zb0a0b2mdhpk8p92bp26ycbvhc"))

(define rust-lru-0.18.1
  (crate-source "lru" "0.18.1"
                "19m5i0kwfny3iwmwjis4mlp53spnj4059amh01q91vi714a80q8b"))

(define rust-lsp-types-0.97.0
  (crate-source "lsp-types" "0.97.0"
                "0wb0yr2cdhlndjkcfyabr17ib0nvqa4v3zl5qm3aq13wl583adak"))

(define rust-lyon-geom-1.0.19
  (crate-source "lyon_geom" "1.0.19"
                "14ib0jwn7rhxggvrsjdxnp71fg00sr723lnsy8ygjap354p50dj3"))

(define rust-lzma-sys-0.1.20
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "lzma-sys" "0.1.20"
                "09sxp20waxyglgn3cjz8qjkspb3ryz2fwx4rigkwvrk46ymh9njz"))

(define rust-mac-address-1.1.8
  (crate-source "mac_address" "1.1.8"
                "00r3n18mxglq1dzshnm0vxk1fgsp3c2hd08w6hfcqdp8ymmv5bn0"))

(define rust-malloc-buf-0.0.6
  (crate-source "malloc_buf" "0.0.6"
                "1jqr77j89pwszv51fmnknzvd53i1nkmcr8rjrvcxhm4dx1zr1fv2"))

(define rust-matchers-0.2.0
  (crate-source "matchers" "0.2.0"
                "1sasssspdj2vwcwmbq3ra18d3qniapkimfcbr47zmx6750m5llni"))

(define rust-memchr-2.8.3
  (crate-source "memchr" "2.8.3"
                "161xa63ipfanf8v3nb82xd5hqgydv55nzw59wyngqbz6alfaz2yg"))

(define rust-memmap2-0.9.11
  (crate-source "memmap2" "0.9.11"
                "1h4qnzgarnn488ljjpg9ns5y4bw0sq0xv0fj0iqywagjnz8rw8fi"))

(define rust-memmem-0.1.1
  (crate-source "memmem" "0.1.1"
                "05ccifqgxdfxk6yls41ljabcccsz3jz6549l1h3cwi17kr494jm6"))

(define rust-memoffset-0.9.1
  (crate-source "memoffset" "0.9.1"
                "12i17wh9a9plx869g7j4whf62xw68k5zd4k0k5nh6ys5mszid028"))

(define rust-metal-0.33.0
  (crate-source "metal" "0.33.0"
                "05dwbjpdrhbnfq2jgdx0m5j9ip3ibwsln0b3v663p45wnn8pf167"))

(define rust-minimal-lexical-0.2.1
  (crate-source "minimal-lexical" "0.2.1"
                "16ppc5g84aijpri4jzv14rvcnslvlpphbszc7zzp6vfkddf4qdb8"))

(define rust-miniz-oxide-0.8.9
  (crate-source "miniz_oxide" "0.8.9"
                "05k3pdg8bjjzayq3rf0qhpirq9k37pxnasfn4arbs17phqn6m9qz"))

(define rust-miniz-oxide-0.9.1
  (crate-source "miniz_oxide" "0.9.1"
                "0k2bgjzk2sbsynpsv4wizwxbqp6vs7g08y5anbkrh3l6a15bqgxn"))

(define rust-mio-1.2.2
  (crate-source "mio" "1.2.2"
                "09y4b7gc42ymgssshh8sz6gs3y5r8bbigqaw2c4snh6fy5qmrmih"))

(define rust-miow-0.6.1
  (crate-source "miow" "0.6.1"
                "023g6jamln6hmspcllgrm99ri38ypbm8w945jh36579hgb9zlssk"))

(define rust-muda-0.17.2
  (crate-source "muda" "0.17.2"
                "0xv1x0rgzr9pi63074rg1f7qz0q5lrihblbqsy1h71l99rdfr7vw"))

(define rust-naga-28.0.0
  (crate-source "naga" "28.0.0"
                "0d8idx407r0lnqbcjl097wyfr6lavf3i09b1zkfijch64mr6d3v1"))

(define rust-ndk-0.9.0
  (crate-source "ndk" "0.9.0"
                "1m32zpmi5w1pf3j47k6k5fw395dc7aj8d0mdpsv53lqkprxjxx63"))

(define rust-ndk-context-0.1.1
  (crate-source "ndk-context" "0.1.1"
                "12sai3dqsblsvfd1l1zab0z6xsnlha3xsfl7kagdnmj3an3jvc17"))

(define rust-ndk-sys-0.6.0+11769913
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "ndk-sys" "0.6.0+11769913"
                "0wx8r6pji20if4xs04g73gxl98nmjrfc73z0v6w1ypv6a4qdlv7f"))

(define rust-nix-0.28.0
  (crate-source "nix" "0.28.0"
                "1r0rylax4ycx3iqakwjvaa178jrrwiiwghcw95ndzy72zk25c8db"))

(define rust-nix-0.29.0
  (crate-source "nix" "0.29.0"
                "0ikvn7s9r2lrfdm3mx1h7nbfjvcc6s9vxdzw7j5xfkd2qdnp9qki"))

(define rust-nix-0.31.3
  (crate-source "nix" "0.31.3"
                "0gbwnjfny9rq9hl5bz4ry520n9rnfknna4bg88n66f7zx3yx486g"))

(define rust-nom-7.1.3
  (crate-source "nom" "7.1.3"
                "0jha9901wxam390jcf5pfa0qqfrgh8li787jx2ip0yk5b8y9hwyj"))

(define rust-nom-8.0.0
  (crate-source "nom" "8.0.0"
                "01cl5xng9d0gxf26h39m0l8lprgpa00fcc75ps1yzgbib1vn35yz"))

(define rust-nonmax-0.5.5
  (crate-source "nonmax" "0.5.5"
                "0lfvyfz4falgmc9g1cbfi2wkys9wka2nfmdyga87zikf636ml2k1"))

(define rust-normpath-1.5.1
  (crate-source "normpath" "1.5.1"
                "06mjr8agm6gkjc1z545b8f3l58hx72cbcys328xrzacz4vvmx65r"))

(define rust-notify-8.2.0
  (crate-source "notify" "8.2.0"
                "1hrb83451vm5cpjw83nz5skgwjg5ara28zq8nxsqbzsif690fgad"))

(define rust-notify-types-2.1.0
  (crate-source "notify-types" "2.1.0"
                "0yj710mxd4lsaz4hq7601mh6xb02awb8hg4z6lvh76ik1vpczf22"))

(define rust-nu-ansi-term-0.50.3
  (crate-source "nu-ansi-term" "0.50.3"
                "1ra088d885lbd21q1bxgpqdlk1zlndblmarn948jz2a40xsbjmvr"))

(define rust-num-bigint-0.4.8
  (crate-source "num-bigint" "0.4.8"
                "0ry3xjal8f5xhdinani268ci13h14mf7j4w0y1gflfzhw3knk7n8"))

(define rust-num-conv-0.2.2
  (crate-source "num-conv" "0.2.2"
                "0hg4f9bwmy7cwpxdkm165dmkfc8jhkkayci234jsmi5ssb33j5sj"))

(define rust-num-derive-0.4.2
  (crate-source "num-derive" "0.4.2"
                "00p2am9ma8jgd2v6xpsz621wc7wbn1yqi71g15gc3h67m7qmafgd"))

(define rust-num-enum-0.7.6
  (crate-source "num_enum" "0.7.6"
                "09kg0c2y08npdv0c9dbm4m9a9wz8w2qaiqqxl4gj3v22hj1wl2sx"))

(define rust-num-enum-derive-0.7.6
  (crate-source "num_enum_derive" "0.7.6"
                "1y0x9z49s27vdas6mglqbv02sgkdmbr8ns2kwspzrp2ra81rh2b8"))

(define rust-num-integer-0.1.46
  (crate-source "num-integer" "0.1.46"
                "13w5g54a9184cqlbsq80rnxw4jj4s0d8wv75jsq5r2lms8gncsbr"))

(define rust-num-threads-0.1.7
  (crate-source "num_threads" "0.1.7"
                "1ngajbmhrgyhzrlc4d5ga9ych1vrfcvfsiqz6zv0h2dpr2wrhwsw"))

(define rust-num-traits-0.2.19
  (crate-source "num-traits" "0.2.19"
                "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787"))

(define rust-objc-0.2.7
  (crate-source "objc" "0.2.7"
                "1cbpf6kz8a244nn1qzl3xyhmp05gsg4n313c9m3567625d3innwi"))

(define rust-objc-sys-0.3.5
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "objc-sys" "0.3.5"
                "0423gry7s3rmz8s3pzzm1zy5mdjif75g6dbzc2lf2z0c77fipffd"))

(define rust-objc2-0.5.2
  (crate-source "objc2" "0.5.2"
                "015qa2d3vh7c1j2736h5wjrznri7x5ic35vl916c22gzxva8b9s6"))

(define rust-objc2-0.6.4
  (crate-source "objc2" "0.6.4"
                "17x8qpl512frscfqbmgjr20kg3y4r0xdqxphja17dz5f0znsh4is"))

(define rust-objc2-app-kit-0.2.2
  (crate-source "objc2-app-kit" "0.2.2"
                "1zqyi5l1bm26j1bgmac9783ah36m5kcrxlqp5carglnpwgcrms74"))

(define rust-objc2-app-kit-0.3.2
  (crate-source "objc2-app-kit" "0.3.2"
                "132ijwni8lsi8phq7wnmialkxp46zx998fns3zq5np0ya1mr77nl"))

(define rust-objc2-cloud-kit-0.2.2
  (crate-source "objc2-cloud-kit" "0.2.2"
                "02dhjvmcq8c2bwj31jx423jygif1scs9f0lmlab0ayhw75b3ppbl"))

(define rust-objc2-contacts-0.2.2
  (crate-source "objc2-contacts" "0.2.2"
                "12a8m927xrrxa54xhqhqnkkl1a6l07pyrpnqfk9jz09kkh755zx5"))

(define rust-objc2-core-data-0.2.2
  (crate-source "objc2-core-data" "0.2.2"
                "1vvk8zjylfjjj04dzawydmqqz5ajvdkhf22cnb07ihbiw14vyzv1"))

(define rust-objc2-core-foundation-0.3.2
  (crate-source "objc2-core-foundation" "0.3.2"
                "0dnmg7606n4zifyjw4ff554xvjmi256cs8fpgpdmr91gckc0s61a"))

(define rust-objc2-core-graphics-0.3.2
  (crate-source "objc2-core-graphics" "0.3.2"
                "01x8413pxq0m5rwidlaczni8v5cz9dc3xqzq8l9zlpl9cv8cj8p0"))

(define rust-objc2-core-image-0.2.2
  (crate-source "objc2-core-image" "0.2.2"
                "102csfb82zi2sbzliwsfd589ckz0gysf7y6434c9zj97lmihj9jm"))

(define rust-objc2-core-location-0.2.2
  (crate-source "objc2-core-location" "0.2.2"
                "10apgsrigqryvi4rcc0f6yfjflvrl83f4bi5hkr48ck89vizw300"))

(define rust-objc2-encode-4.1.0
  (crate-source "objc2-encode" "4.1.0"
                "0cqckp4cpf68mxyc2zgnazj8klv0z395nsgbafa61cjgsyyan9gg"))

(define rust-objc2-foundation-0.2.2
  (crate-source "objc2-foundation" "0.2.2"
                "1a6mi77jsig7950vmx9ydvsxaighzdiglk5d229k569pvajkirhf"))

(define rust-objc2-foundation-0.3.2
  (crate-source "objc2-foundation" "0.3.2"
                "0wijkxzzvw2xkzssds3fj8279cbykz2rz9agxf6qh7y2agpsvq73"))

(define rust-objc2-io-surface-0.3.2
  (crate-source "objc2-io-surface" "0.3.2"
                "07fqx4fmwydf2arrc4xs4awv7zyzzxh60fyqdfmrpm9n148qh1qq"))

(define rust-objc2-link-presentation-0.2.2
  (crate-source "objc2-link-presentation" "0.2.2"
                "160k4qh00yrx57dabn3hzas4r98kmk9bc0qsy1jvwday3irax8d1"))

(define rust-objc2-metal-0.2.2
  (crate-source "objc2-metal" "0.2.2"
                "1mmdga66qpxrcfq3gxxhysfx3zg1hpx4z886liv3j0pnfq9bl36x"))

(define rust-objc2-quartz-core-0.2.2
  (crate-source "objc2-quartz-core" "0.2.2"
                "0ynw8819c36l11rim8n0yzk0fskbzrgaqayscyqi8swhzxxywaz4"))

(define rust-objc2-symbols-0.2.2
  (crate-source "objc2-symbols" "0.2.2"
                "1p04hjkxan18g2b7h9n2n8xxsvazapv2h6mfmmdk06zc7pz4ws0a"))

(define rust-objc2-ui-kit-0.2.2
  (crate-source "objc2-ui-kit" "0.2.2"
                "0vrb5r8z658l8c19bx78qks8c5hg956544yirf8npk90idwldfxq"))

(define rust-objc2-uniform-type-identifiers-0.2.2
  (crate-source "objc2-uniform-type-identifiers" "0.2.2"
                "1ziv4wkbxcaw015ypg0q49ycl7m14l3x56mpq2k1rznv92bmzyj4"))

(define rust-objc2-user-notifications-0.2.2
  (crate-source "objc2-user-notifications" "0.2.2"
                "1cscv2w3vxzaslz101ddv0z9ycrrs4ayikk4my4qd3im8bvcpkvn"))

(define rust-once-cell-1.21.4
  (crate-source "once_cell" "1.21.4"
                "0l1v676wf71kjg2khch4dphwh1jp3291ffiymr2mvy1kxd5kwz4z"))

(define rust-onig-6.5.3
  (crate-source "onig" "6.5.3"
                "1qh9qyv59ca5py5x5bvmfpi9sjyhls80r20sq638jhzrk3vcphqc"))

(define rust-onig-sys-69.9.3
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "onig_sys" "69.9.3"
                "1mzd6l3vjb8iw7jwk7l99jvj279wh0d8wf4nb2w56zp70iv32s0y"))

(define rust-open-5.4.0
  (crate-source "open" "5.4.0"
                "1m8ya7x1yf8lm9j8acwv6nf4vp8fc9c5dx7yfa52pmcmwxcx1cx0"))

(define rust-openssl-probe-0.2.1
  (crate-source "openssl-probe" "0.2.1"
                "1gpwpb7smfhkscwvbri8xzbab39wcnby1jgz1s49vf1aqgsdx1vw"))

(define rust-option-ext-0.2.0
  (crate-source "option-ext" "0.2.0"
                "0zbf7cx8ib99frnlanpyikm1bx8qn8x602sw1n7bg6p9x94lyx04"))

(define rust-orbclient-0.3.55
  (crate-source "orbclient" "0.3.55"
                "0iqps9qnyyhzbmb321r90dr8ql7jqbpm13bnf7in16pa4vskkwsx"))

(define rust-ordered-float-4.6.0
  (crate-source "ordered-float" "4.6.0"
                "0ldrcgilsiijd141vw51fbkziqmh5fpllil3ydhirjm67wdixdvv"))

(define rust-ordered-float-5.3.0
  (crate-source "ordered-float" "5.3.0"
                "03mx5yg3ncp0g524y7zbyvhwcxpd8l9v30lgybm5bhqx2v551ndp"))

(define rust-os-pipe-1.2.3
  (crate-source "os_pipe" "1.2.3"
                "0rqrvm7fdp790b4ks3kcdzsgkz2528xrn3vxc9l4nf1inj2ax3vx"))

(define rust-owned-ttf-parser-0.25.1
  (crate-source "owned_ttf_parser" "0.25.1"
                "0fsqzcbc4sq8qhkmc3rgcfg1xg389nmhlxvmvi6h38dca680x0in"))

(define rust-owo-colors-4.3.0
  (crate-source "owo-colors" "4.3.0"
                "0kgrf4r9vcczhw5r30nkcl6abm99l0ay8dr2fxl0ymvbkcxq04fj"))

(define rust-oxc-allocator-0.128.0
  (crate-source "oxc_allocator" "0.128.0"
                "1jsjv77sxf4rc6pnw974kmyy8kk94iakbwrbi95nirfxig24qmcb"))

(define rust-oxc-ast-0.128.0
  (crate-source "oxc_ast" "0.128.0"
                "0c1dv820l7da1rbb8mrkg9bapcxckl6bif0d3rqy2mrjnbwdh9yh"))

(define rust-oxc-ast-macros-0.128.0
  (crate-source "oxc_ast_macros" "0.128.0"
                "17nhg1fxhz895l3v02lx6g673131hmdmih9x3s0n76dw0p5wj2il"))

(define rust-oxc-ast-visit-0.128.0
  (crate-source "oxc_ast_visit" "0.128.0"
                "1nzqslcj1h5w2v49y7q8bsmysp20j556yq84s2njl5d8ylgg35ng"))

(define rust-oxc-browserslist-3.0.12
  (crate-source "oxc-browserslist" "3.0.12"
                "1wwwd9vhklm9sfd3f8ni8yn2kpxn6v9fxxf3fcjjkpji9hmnjrv9"))

(define rust-oxc-codegen-0.128.0
  (crate-source "oxc_codegen" "0.128.0"
                "0psqxmzgp4rcg12kf6g9q1wqkl4dmwsdldk086yz7g7a16nhzxaf"))

(define rust-oxc-compat-0.128.0
  (crate-source "oxc_compat" "0.128.0"
                "1rmbsxnawnf9ww7d0ngk07zzdhw99j5xlww0655khzs4h3d69fd3"))

(define rust-oxc-data-structures-0.128.0
  (crate-source "oxc_data_structures" "0.128.0"
                "0g221dv0m7ls208sbzq6vqc0qjind4nqk1ips6vdj0snl30ws9f4"))

(define rust-oxc-diagnostics-0.128.0
  (crate-source "oxc_diagnostics" "0.128.0"
                "1vnri98clglgbcxw3yyhy0dw0a9vvn05z4qbngk7c75kqfzc01ps"))

(define rust-oxc-ecmascript-0.128.0
  (crate-source "oxc_ecmascript" "0.128.0"
                "17dym0af4313bp9ljalzympkwccg480kxsxpnqb7141f2anxfxf6"))

(define rust-oxc-estree-0.128.0
  (crate-source "oxc_estree" "0.128.0"
                "1x3lmd7y6crgwalw7i33wmdy3krfb02bmkhm2a3mnwxjhi825vqa"))

(define rust-oxc-index-4.1.0
  (crate-source "oxc_index" "4.1.0"
                "0avc8488591cj2l34xjmjmzbn3j1kxyanph20fbyq9wnk4h62gpb"))

(define rust-oxc-isolated-declarations-0.128.0
  (crate-source "oxc_isolated_declarations" "0.128.0"
                "1ki0kkrfxbhzp290x5mvwidk783nk07h75q1piijm8f8s3mk05pk"))

(define rust-oxc-miette-2.7.1
  (crate-source "oxc-miette" "2.7.1"
                "0p14fhxakvyhp5yzh6b929vv43lp92zmy8a509hv7jfl5qgscmj3"))

(define rust-oxc-miette-derive-2.7.1
  (crate-source "oxc-miette-derive" "2.7.1"
                "15pn3cy0g7xkxf5wh8hsambqsgyijzk7k4xvfpzqz3sg04ml4dxj"))

(define rust-oxc-parser-0.128.0
  (crate-source "oxc_parser" "0.128.0"
                "0pxczb73a9y73cqz5lylanh44axsqfjajm53xmz9aszgw1q75lka"))

(define rust-oxc-regular-expression-0.128.0
  (crate-source "oxc_regular_expression" "0.128.0"
                "0ay2sgshadsi2i2n9r27z99wa660b4qnpxi8amki0nb4z3fxv4ly"))

(define rust-oxc-semantic-0.128.0
  (crate-source "oxc_semantic" "0.128.0"
                "1blhkgfp91f8mrjhdswwp7kybxjf3i36293cb0imc9sha43xk2j9"))

(define rust-oxc-span-0.128.0
  (crate-source "oxc_span" "0.128.0"
                "0ng6arai9jpqh4gwsg1g1lq2n64pl172xy23pbdzym129jp58fzh"))

(define rust-oxc-str-0.128.0
  (crate-source "oxc_str" "0.128.0"
                "0nks287pspncvy8ham14ycf2gb2363ignw8qjac3cjjsivjhyv38"))

(define rust-oxc-syntax-0.128.0
  (crate-source "oxc_syntax" "0.128.0"
                "1svkdazhlhk6z2pqls0i6cpnr97fbd64sj6jir8lqbfra0zf3h1m"))

(define rust-oxc-transformer-0.128.0
  (crate-source "oxc_transformer" "0.128.0"
                "17pl3y2ly5vy9c2kjwwx1vszhvb5hywnrilm7v7vabppl5hqn8z7"))

(define rust-oxc-traverse-0.128.0
  (crate-source "oxc_traverse" "0.128.0"
                "1zskm1i7nrpwli1gkmrf3bc78nagckdpcl8swr6hrwmnm6iy2q2g"))

(define rust-palette-0.7.6
  (crate-source "palette" "0.7.6"
                "1rmn02mv6cb112504qyg7pyfa83c08hxpk5sw7jc5v659hc73gsc"))

(define rust-palette-derive-0.7.6
  (crate-source "palette_derive" "0.7.6"
                "0c0xhpk1nqyq4jr2m8xnka7w47vqzc7m2vq9ih8wxyjv02phs0zm"))

(define rust-pango-0.18.3
  (crate-source "pango" "0.18.3"
                "1r5ygq7036sv7w32kp8yxr6vgggd54iaavh3yckanmq4xg0px8kw"))

(define rust-pango-sys-0.18.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "pango-sys" "0.18.0"
                "1iaxalcaaj59cl9n10svh4g50v8jrc1a36kd7n9yahx8j7ikfrs3"))

(define rust-parking-lot-0.12.5
  (crate-source "parking_lot" "0.12.5"
                "06jsqh9aqmc94j2rlm8gpccilqm6bskbd67zf6ypfc0f4m9p91ck"))

(define rust-parking-lot-core-0.9.12
  (crate-source "parking_lot_core" "0.9.12"
                "1hb4rggy70fwa1w9nb0svbyflzdc69h047482v2z3sx2hmcnh896"))

(define rust-paste-1.0.15
  (crate-source "paste" "1.0.15"
                "02pxffpdqkapy292harq6asfjvadgp1s005fip9ljfsn9fvxgh2p"))

(define rust-percent-encoding-2.3.2
  (crate-source "percent-encoding" "2.3.2"
                "083jv1ai930azvawz2khv7w73xh8mnylk7i578cifndjn5y64kwv"))

(define rust-pest-2.8.8
  (crate-source "pest" "2.8.8"
                "18jhl2zpxvl6kikc0jgp7gi7i7cy9s634z5bnvx70w1whjz2ixvx"))

(define rust-pest-derive-2.8.8
  (crate-source "pest_derive" "2.8.8"
                "1zcijlfdf6sk2s6l1qnm3j7kj7d4ymqcial8w4p4dcr67gydcbcy"))

(define rust-pest-generator-2.8.8
  (crate-source "pest_generator" "2.8.8"
                "1dkmk6r6bb2hh5wayymfmwd7mswwbyhw12dnx2lrdxdnrw2r4yka"))

(define rust-pest-meta-2.8.8
  (crate-source "pest_meta" "2.8.8"
                "0z7m54jc3nj3nxbbk4kyjfa06d8s24vhf6krzj2867nyq18x7aw5"))

(define rust-petgraph-0.8.3
  (crate-source "petgraph" "0.8.3"
                "0mblnaqbx1y20h5y7pz6y11hk9jjk6k87lsmn7jxaq3hm67ba0c7"))

(define rust-phf-0.11.3
  (crate-source "phf" "0.11.3"
                "0y6hxp1d48rx2434wgi5g8j1pr8s5jja29ha2b65435fh057imhz"))

(define rust-phf-0.13.1
  (crate-source "phf" "0.13.1"
                "1pzswx5gdglgjgp4azyzwyr4gh031r0kcnpqq6jblga72z3jsmn1"))

(define rust-phf-codegen-0.11.3
  (crate-source "phf_codegen" "0.11.3"
                "0si1n6zr93kzjs3wah04ikw8z6npsr39jw4dam8yi9czg2609y5f"))

(define rust-phf-generator-0.11.3
  (crate-source "phf_generator" "0.11.3"
                "0gc4np7s91ynrgw73s2i7iakhb4lzdv1gcyx7yhlc0n214a2701w"))

(define rust-phf-generator-0.13.1
  (crate-source "phf_generator" "0.13.1"
                "0dwpp11l41dy9mag4phkyyvhpf66lwbp79q3ik44wmhyfqxcwnhk"))

(define rust-phf-macros-0.11.3
  (crate-source "phf_macros" "0.11.3"
                "05kjfbyb439344rhmlzzw0f9bwk9fp95mmw56zs7yfn1552c0jpq"))

(define rust-phf-macros-0.13.1
  (crate-source "phf_macros" "0.13.1"
                "1vv9h8pr7xh18sigpvq1hxc8q9nmjmv6gdpqsp65krxiahmh6bw1"))

(define rust-phf-shared-0.11.3
  (crate-source "phf_shared" "0.11.3"
                "1rallyvh28jqd9i916gk5gk2igdmzlgvv5q0l3xbf3m6y8pbrsk7"))

(define rust-phf-shared-0.13.1
  (crate-source "phf_shared" "0.13.1"
                "0rpjchnswm0x5l4mz9xqfpw0j4w68sjvyqrdrv13h7lqqmmyyzz5"))

(define rust-pin-project-1.1.13
  (crate-source "pin-project" "1.1.13"
                "09091qp946lpmjz4yp0xil1r5v4hgc91fi19dg5csayhdqrv4ri4"))

(define rust-pin-project-internal-1.1.13
  (crate-source "pin-project-internal" "1.1.13"
                "12rzlh07i1sdgrvzj6wgkka5bjqyvbfsl8knq6qi7g16m7q9aqy9"))

(define rust-pin-project-lite-0.2.17
  (crate-source "pin-project-lite" "0.2.17"
                "1kfmwvs271si96zay4mm8887v5khw0c27jc9srw1a75ykvgj54x8"))

(define rust-piper-0.2.5
  (crate-source "piper" "0.2.5"
                "1hd3j94mw5dwc457gs9ssb2r5b9iipywndf5srqx7pj38jd4fdf8"))

(define rust-pkg-config-0.3.33
  (crate-source "pkg-config" "0.3.33"
                "17jnqmcbxsnwhg9gjf0nh6dj5k0x3hgwi3mb9krjnmfa9v435w8r"))

(define rust-plain-0.2.3
  (crate-source "plain" "0.2.3"
                "19n1xbxb4wa7w891268bzf6cbwq4qvdb86bik1z129qb0xnnnndl"))

(define rust-png-0.17.16
  (crate-source "png" "0.17.16"
                "09kmkms9fmkbkarw0lnf0scqvjwwg3r7riddag0i3q39r0pil5c2"))

(define rust-png-0.18.1
  (crate-source "png" "0.18.1"
                "0qca282xp8a6d7mikxrwji3f52mjn4vnqxz2v9iz5adj665rnxk0"))

(define rust-polling-3.11.0
  (crate-source "polling" "3.11.0"
                "0622qfbxi3gb0ly2c99n3xawp878fkrd1sl83hjdhisx11cly3jx"))

(define rust-portable-atomic-1.14.0
  (crate-source "portable-atomic" "1.14.0"
                "1hyfma9n2cs2ibazpfwrbv61zwg7cv86g0pr5yjkg07qgr4xa81x"))

(define rust-portable-atomic-util-0.2.7
  (crate-source "portable-atomic-util" "0.2.7"
                "0616j0fhy6y71hyxg3n86f6hng0fmsc269s3wp4gl8ww4p8hd8f2"))

(define rust-portable-pty-0.9.0
  (crate-source "portable-pty" "0.9.0"
                "07k710gj2ixgp4r1lcfxvl2qfyvkjr52vb0zyna2sxfjnfi9d9dl"))

(define rust-postcard-1.1.3
  (crate-source "postcard" "1.1.3"
                "094srff139n7m8g5ssq36ag6s29ikf7fgpz660x2hkj5vnsw6r37"))

(define rust-powerfmt-0.2.0
  (crate-source "powerfmt" "0.2.0"
                "14ckj2xdpkhv3h6l5sdmb9f1d57z8hbfpdldjc2vl5givq2y77j3"))

(define rust-ppv-lite86-0.2.21
  (crate-source "ppv-lite86" "0.2.21"
                "1abxx6qz5qnd43br1dd9b2savpihzjza8gb4fbzdql1gxp2f7sl5"))

(define rust-presser-0.3.1
  (crate-source "presser" "0.3.1"
                "1ykvqx861sjmhkdh540aafqba7i7li7gqgwrcczy6v56i9m8xkz8"))

(define rust-prettyplease-0.2.37
  (crate-source "prettyplease" "0.2.37"
                "0azn11i1kh0byabhsgab6kqs74zyrg69xkirzgqyhz6xmjnsi727"))

(define rust-proc-macro-crate-1.3.1
  (crate-source "proc-macro-crate" "1.3.1"
                "069r1k56bvgk0f58dm5swlssfcp79im230affwk6d9ck20g04k3z"))

(define rust-proc-macro-crate-2.0.0
  (crate-source "proc-macro-crate" "2.0.0"
                "1s23imns07vmacn2xjd5hv2h6rr94iqq3fd2frwa6i4h2nk6d0vy"))

(define rust-proc-macro-crate-3.5.0
  (crate-source "proc-macro-crate" "3.5.0"
                "0kv1g1d1zjwxlgcaba2qlshzyy32j03xic8rskqlcr5mnblsfyz6"))

(define rust-proc-macro-error-1.0.4
  (crate-source "proc-macro-error" "1.0.4"
                "1373bhxaf0pagd8zkyd03kkx6bchzf6g0dkwrwzsnal9z47lj9fs"))

(define rust-proc-macro-error-attr-1.0.4
  (crate-source "proc-macro-error-attr" "1.0.4"
                "0sgq6m5jfmasmwwy8x4mjygx5l7kp8s4j60bv25ckv2j1qc41gm1"))

(define rust-proc-macro2-1.0.107
  (crate-source "proc-macro2" "1.0.107"
                "1nb6ly8kp65f724kj73ippc7lvydss24sm2vagk6qpklpg4pwplq"))

(define rust-profiling-1.0.18
  (crate-source "profiling" "1.0.18"
                "1xdwlvxlgy99nn1dra7arzinkc8lbqljvcwpq70m7g16lda5wn9x"))

(define rust-proptest-1.11.0
  (crate-source "proptest" "1.11.0"
                "0i27rr5drw4ic8hjzx6i1c6q8s7kmsgpfmzy4m80ys2c6k1gqiab"))

(define rust-pulldown-cmark-0.13.4
  (crate-source "pulldown-cmark" "0.13.4"
                "0kii5zdm7nvdjh7rjkjpvxd0sx1cyd21p0qijmgiq1z7m3mniw79"))

(define rust-quick-error-1.2.3
  (crate-source "quick-error" "1.2.3"
                "1q6za3v78hsspisc197bg3g7rpc989qycy8ypr8ap8igv10ikl51"))

(define rust-quick-xml-0.41.0
  (crate-source "quick-xml" "0.41.0"
                "1h9y8zry34r3mxfd5vqfj50vvvzvri4kzbx5d657jkqjalg4aq76"))

(define rust-quote-1.0.47
  (crate-source "quote" "1.0.47"
                "00ch0yyzvv6s671ik0kcsbw8nigdaj2g3fr61kcahwx48aqlvgqz"))

(define rust-r-efi-5.3.0
  (crate-source "r-efi" "5.3.0"
                "03sbfm3g7myvzyylff6qaxk4z6fy76yv860yy66jiswc2m6b7kb9"))

(define rust-r-efi-6.0.0
  (crate-source "r-efi" "6.0.0"
                "1gyrl2k5fyzj9k7kchg2n296z5881lg7070msabid09asp3wkp7q"))

(define rust-radium-0.7.0
  (crate-source "radium" "0.7.0"
                "02cxfi3ky3c4yhyqx9axqwhyaca804ws46nn4gc1imbk94nzycyw"))

(define rust-rand-0.8.7
  (crate-source "rand" "0.8.7"
                "06iaf16fr0z8zly7anmn8ky0p80xnx9yv0gdcm30fwn9vqmigxi2"))

(define rust-rand-0.9.5
  (crate-source "rand" "0.9.5"
                "0hbvllk8g28mqjld6hqmckk69w296qpzg95whm3didsyg46ivvxr"))

(define rust-rand-chacha-0.9.0
  (crate-source "rand_chacha" "0.9.0"
                "1jr5ygix7r60pz0s1cv3ms1f6pd1i9pcdmnxzzhjc3zn3mgjn0nk"))

(define rust-rand-core-0.6.4
  (crate-source "rand_core" "0.6.4"
                "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))

(define rust-rand-core-0.9.5
  (crate-source "rand_core" "0.9.5"
                "0g6qc5r3f0hdmz9b11nripyp9qqrzb0xqk9piip8w8qlvqkcibvn"))

(define rust-rand-xorshift-0.4.0
  (crate-source "rand_xorshift" "0.4.0"
                "0njsn25pis742gb6b89cpq7jp48v9n23a9fvks10yczwks8n4fai"))

(define rust-range-alloc-0.1.5
  (crate-source "range-alloc" "0.1.5"
                "020xrpn0qaabkxg49wpi0hgy92d8ikji55cyancphnmfi6bl2ifa"))

(define rust-raqote-0.8.5
  (crate-source "raqote" "0.8.5"
                "00w9xc0aydscjk03z2ipjwr51g9h813qnbhbsg6gjp9ain2r0j9j"))

(define rust-ratatui-0.30.2
  (crate-source "ratatui" "0.30.2"
                "0zfmk50bl3ahjjq0z55h5rmx5njrvks20p80lb9cl6sy5h5blx1j"))

(define rust-ratatui-core-0.1.2
  (crate-source "ratatui-core" "0.1.2"
                "1727mqrvy80hmg5nbf0dwh68rrlnmsi76mqzkn08mqn86g27bcfb"))

(define rust-ratatui-crossterm-0.1.2
  (crate-source "ratatui-crossterm" "0.1.2"
                "1w59rh1xdvd133yxnqskxcjnf9lp2j3b8h6y4cy21a76n2iq8xan"))

(define rust-ratatui-termina-0.1.0
  (crate-source "ratatui-termina" "0.1.0"
                "1hj35knwflynqim7sxdbaarqda0f51m3hbnrb6kmgw36kqnr3gy0"))

(define rust-ratatui-termwiz-0.1.2
  (crate-source "ratatui-termwiz" "0.1.2"
                "0xz95i63n7nafpsk6jbm56h65w5dwd7j4x6bsra40x5ph01kxw7s"))

(define rust-ratatui-wgpu-0.5.0
  (crate-source "ratatui-wgpu" "0.5.0"
                "0kgilafvxgm5j5lqs26v7s940whphawii21lay75xrl05ca6cx1h"))

(define rust-ratatui-widgets-0.3.2
  (crate-source "ratatui-widgets" "0.3.2"
                "1l87cjanipc1bzwza1mywfn23wbzfrh3pnbpc8vwlc4irjdx3qv6"))

(define rust-raw-window-handle-0.6.2
  (crate-source "raw-window-handle" "0.6.2"
                "0ff5c648hncwx7hm2a8fqgqlbvbl4xawb6v3xxv9wkpjyrr5arr0"))

(define rust-recvmsg-1.0.0
  (crate-source "recvmsg" "1.0.0"
                "0xa173gbg1cx8q7wyzi6c4kmcsz5rka68r4jb6kg14icskax9vfk"))

(define rust-redox-syscall-0.4.1
  (crate-source "redox_syscall" "0.4.1"
                "1aiifyz5dnybfvkk4cdab9p2kmphag1yad6iknc7aszlxxldf8j7"))

(define rust-redox-syscall-0.5.18
  (crate-source "redox_syscall" "0.5.18"
                "0b9n38zsxylql36vybw18if68yc9jczxmbyzdwyhb9sifmag4azd"))

(define rust-redox-syscall-0.9.1
  (crate-source "redox_syscall" "0.9.1"
                "07n2265vyd8xqan9ywr9zffz4zss3yxsxvj1xdpg5yd5nkkpnl07"))

(define rust-redox-users-0.5.2
  (crate-source "redox_users" "0.5.2"
                "1b17q7gf7w8b1vvl53bxna24xl983yn7bd00gfbii74bcg30irm4"))

(define rust-ref-cast-1.0.26
  (crate-source "ref-cast" "1.0.26"
                "0vdra0766jcc2czzqwhql41kkfyajdnai1pbkjxbq8vr7mvqyvi1"))

(define rust-ref-cast-impl-1.0.26
  (crate-source "ref-cast-impl" "1.0.26"
                "0g70ff9an5i97cw9kijgzqrqydz7smcfic2zyydddizfbxl874ic"))

(define rust-regex-1.13.1
  (crate-source "regex" "1.13.1"
                "1391a0a4100ik8cp7l577p3ip3haqq03rd9c5vdr7vcfdixj687h"))

(define rust-regex-automata-0.4.16
  (crate-source "regex-automata" "0.4.16"
                "1b8ihxq99g3hr8mr37bvhib4bfn8rlmpmp0wjg2q1j50plvdpkwg"))

(define rust-regex-syntax-0.8.11
  (crate-source "regex-syntax" "0.8.11"
                "1m25h5q2wp976fb9gc3dsc9l99svcvd5cri8lncb51c46ydgzxnn"))

(define rust-relative-path-2.0.1
  (crate-source "relative-path" "2.0.1"
                "1c4jm6x0p88722c77xx53mb7zcs4xznp9d3whdsbmn1248qhm95w"))

(define rust-renderdoc-sys-1.1.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "renderdoc-sys" "1.1.0"
                "0cj8zjs7k0gvchcx3jhpg8r9bbqy8b1hsgbz0flcq2ydn12hmcqr"))

(define rust-ring-0.17.14
  (crate-source "ring" "0.17.14"
                "1dw32gv19ccq4hsx3ribhpdzri1vnrlcfqb2vj41xn4l49n9ws54"))

(define rust-ropey-1.6.1
  (crate-source "ropey" "1.6.1"
                "1dckf3likfi1my2ilqwhq2ifsm9iq8cayg6ws7fpa6nd1d11whck"))

(define rust-rquickjs-0.11.0
  (crate-source "rquickjs" "0.11.0"
                "0yn708px5v56bxjb9a7cy2xa55vlhq2zg73nnknkkhw7qpbcc3f5"))

(define rust-rquickjs-core-0.11.0
  (crate-source "rquickjs-core" "0.11.0"
                "1h8hwc3kbskwcah34ikzrmsqqm4mzfd2lx8fn8x1qcjw5107igxq"))

(define rust-rquickjs-macro-0.11.0
  (crate-source "rquickjs-macro" "0.11.0"
                "101bmmzjd34pyg25sarnnvs81f20lkhi6slh0jqpfmhsyigj21ki"))

(define rust-rquickjs-serde-0.5.0
  (crate-source "rquickjs-serde" "0.5.0"
                "08zb3dbflfdy0zmqr9kw53q1yjdik8vmwzl8ap2wa75xr1c24f79"))

(define rust-rquickjs-sys-0.11.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "rquickjs-sys" "0.11.0"
                "10wx5fzfka3d558kqpq94a0m37z9wywyrqd4ss10wii7xw0lcd17"))

(define rust-rust-i18n-3.1.5
  (crate-source "rust-i18n" "3.1.5"
                "0cn3gmqhabcnskv81krmcnp94yq4azhibp1s53pcav5gvwgmb8px"))

(define rust-rust-i18n-macro-3.1.5
  (crate-source "rust-i18n-macro" "3.1.5"
                "0rgra2j2ynrbd4z5072z5b72n3fllmbvpxi4pqzd4mk6ypbzgfi2"))

(define rust-rust-i18n-support-3.1.5
  (crate-source "rust-i18n-support" "3.1.5"
                "06cgfn6vad512vq4lf6l0ybascvi7db1wxvd0m902k5s5gsx83ll"))

(define rust-rustc-hash-1.1.0
  (crate-source "rustc-hash" "1.1.0"
                "1qkc5khrmv5pqi5l5ca9p5nl5hs742cagrndhbrlk3dhlrx3zm08"))

(define rust-rustc-hash-2.1.3
  (crate-source "rustc-hash" "2.1.3"
                "0bbla578m87qmf3yr55q49l97gxn7z0ha1dwqlnvwwc58ad7y7kb"))

(define rust-rustc-version-0.4.1
  (crate-source "rustc_version" "0.4.1"
                "14lvdsmr5si5qbqzrajgb6vfn69k0sfygrvfvr2mps26xwi3mjyg"))

(define rust-rustix-0.38.44
  (crate-source "rustix" "0.38.44"
                "0m61v0h15lf5rrnbjhcb9306bgqrhskrqv7i1n0939dsw8dbrdgx"))

(define rust-rustix-1.1.4
  (crate-source "rustix" "1.1.4"
                "14511f9yjqh0ix07xjrjpllah3325774gfwi9zpq72sip5jlbzmn"))

(define rust-rustix-openpty-0.2.0
  (crate-source "rustix-openpty" "0.2.0"
                "14r3bvc2rcvvpdmhjivl6bqifdcl23f8bw9ncc58faw9b5y6rq8x"))

(define rust-rustls-0.23.43
  (crate-source "rustls" "0.23.43"
                "01nsagj78r88pifaz55ln1rw31py5n00h7bnw58h3g1aw1n3i0q2"))

(define rust-rustls-native-certs-0.8.4
  (crate-source "rustls-native-certs" "0.8.4"
                "0kgazl8zc1sv63qg179bz96ilzh56lzfa5k92ji7d265f4kibdfs"))

(define rust-rustls-pki-types-1.15.1
  (crate-source "rustls-pki-types" "1.15.1"
                "15hakk4pcvr5278cazgw9qf2r7gdg09rg5pivbyd3dbyih12aj9g"))

(define rust-rustls-platform-verifier-0.6.2
  (crate-source "rustls-platform-verifier" "0.6.2"
                "110pqkn3px9115pb6h6a23cq738v29gbp559dfvpmbibqzmzx68x"))

(define rust-rustls-platform-verifier-android-0.1.1
  (crate-source "rustls-platform-verifier-android" "0.1.1"
                "13vq6sxsgz9547xm2zbdxiw8x7ad1g8n8ax6xvxsjqszk7q6awgq"))

(define rust-rustls-webpki-0.103.13
  (crate-source "rustls-webpki" "0.103.13"
                "0vkm7z9pnxz5qz66p2kmyy2pwx0g4jnsbqk5xzfhs4czcjl2ki31"))

(define rust-rustversion-1.0.23
  (crate-source "rustversion" "1.0.23"
                "07z2a843fs80fawwflj9jwn49k9b0bd0dhhbvy0ar69vaxd72m6g"))

(define rust-rusty-fork-0.3.1
  (crate-source "rusty-fork" "0.3.1"
                "1qkf9rvz2irb1wlbkrhrns8n9hnax48z1lgql5nqyr2fyagzfsyc"))

(define rust-rustybuzz-0.20.1
  (crate-source "rustybuzz" "0.20.1"
                "00hp1gwykjfli258zs7lqg8p2zdh94dv2mw8zx7f73m0z2b7qg7x"))

(define rust-ryu-1.0.23
  (crate-source "ryu" "1.0.23"
                "0zs70sg00l2fb9jwrf6cbkdyscjs53anrvai2hf7npyyfi5blx4p"))

(define rust-same-file-1.0.6
  (crate-source "same-file" "1.0.6"
                "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))

(define rust-schannel-0.1.29
  (crate-source "schannel" "0.1.29"
                "0ffrzz5vf2s3gnzvphgb5gg8fqifvryl07qcf7q3x1scj3jbghci"))

(define rust-schemars-1.2.2
  (crate-source "schemars" "1.2.2"
                "0jng632s64njf9vghr3i1l4m15h4y85m5vhg7vkwdkdnjg978wk8"))

(define rust-schemars-derive-1.2.2
  (crate-source "schemars_derive" "1.2.2"
                "1fp2wkdk32nv66swy7k7pz7sxygn634snlppih5jzbs6ddqng36r"))

(define rust-scoped-tls-1.0.1
  (crate-source "scoped-tls" "1.0.1"
                "15524h04mafihcvfpgxd8f4bgc3k95aclz8grjkg9a0rxcvn9kz1"))

(define rust-scopeguard-1.2.0
  (crate-source "scopeguard" "1.2.0"
                "0jcz9sd47zlsgcnm1hdw0664krxwb5gczlif4qngj2aif8vky54l"))

(define rust-sctk-adwaita-0.10.1
  (crate-source "sctk-adwaita" "0.10.1"
                "1v14vqp7k39jk7pgaibwc06qq9vcmi82k7zlv3qpfvq52w17y9xn"))

(define rust-security-framework-3.7.0
  (crate-source "security-framework" "3.7.0"
                "07fd0j29j8yczb3hd430vwz784lx9knb5xwbvqna1nbkbivvrx5p"))

(define rust-security-framework-sys-2.17.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "security-framework-sys" "2.17.0"
                "1qr0w0y9iwvmv3hwg653q1igngnc5b74xcf0679cbv23z0fnkqkc"))

(define rust-self-cell-1.3.0
  (crate-source "self_cell" "1.3.0"
                "04x883z7awzkmn5lqb67n51xynrj2pa9339jgq4j1qa94yh2rd1a"))

(define rust-semver-1.0.28
  (crate-source "semver" "1.0.28"
                "1kaimrpy876bcgi8bfj0qqfxk77zm9iz2zhn1hp9hj685z854y4a"))

(define rust-seq-macro-0.3.6
  (crate-source "seq-macro" "0.3.6"
                "1k4sshn0x2i6a9g97sy5jl7ghlqgmmh3n76aj3rrjwxy1x0i3iqv"))

(define rust-serde-1.0.229
  (crate-source "serde" "1.0.229"
                "1fp04fq4a79bpm61xz1zy0pbz4kpc7d771zii1k3inmszq55jj21"))

(define rust-serde-core-1.0.229
  (crate-source "serde_core" "1.0.229"
                "0j1ajiha76h3nmd976il9li6975k121xa7jb39ws8n0yqp4s5p37"))

(define rust-serde-derive-1.0.229
  (crate-source "serde_derive" "1.0.229"
                "0j4k63i7h1bikxwz2c89ig0hrwbnl9mz1czn85xx99x5cc9dg9g7"))

(define rust-serde-derive-internals-0.30.0
  (crate-source "serde_derive_internals" "0.30.0"
                "1gd9n45na7n79nr54ghfl79rygkbzw2ybk3wyr6nlp83rry16lpq"))

(define rust-serde-json-1.0.151
  (crate-source "serde_json" "1.0.151"
                "051zww7lvpw147vvwss1ng6w587qyrkzg75fvj08q2dfrmgbahf8"))

(define rust-serde-repr-0.1.21
  (crate-source "serde_repr" "0.1.21"
                "01l987ghc17h1y9cf9xbzmcs77575mbrjf4ca2h70g15vqlicfwd"))

(define rust-serde-spanned-0.6.9
  (crate-source "serde_spanned" "0.6.9"
                "18vmxq6qfrm110caszxrzibjhy2s54n1g5w1bshxq9kjmz7y0hdz"))

(define rust-serde-spanned-1.1.1
  (crate-source "serde_spanned" "1.1.1"
                "09jzk7i6wihn3d8i3wi4j4n98ghi93c3b8m8k64nxq0ijn3vaqk6"))

(define rust-serde-yaml-0.9.34+deprecated
  (crate-source "serde_yaml" "0.9.34+deprecated"
                "0isba1fjyg3l6rxk156k600ilzr8fp7crv82rhal0rxz5qd1m2va"))

(define rust-serial2-0.2.37
  (crate-source "serial2" "0.2.37"
                "1cc527x1j9cf0gmmpx5yn7jvk20gma3f0m4bdf9xdbpfc9aymdly"))

(define rust-sha1-0.11.0
  (crate-source "sha1" "0.11.0"
                "05025pf8d8zr2qq5xyh5m3wqls1fn7813gz1mfs7551mk724rk5a"))

(define rust-sha2-0.10.9
  (crate-source "sha2" "0.10.9"
                "10xjj843v31ghsksd9sl9y12qfc48157j1xpb8v1ml39jy0psl57"))

(define rust-sharded-slab-0.1.7
  (crate-source "sharded-slab" "0.1.7"
                "1xipjr4nqsgw34k7a2cgj9zaasl2ds6jwn89886kww93d32a637l"))

(define rust-shared-library-0.1.9
  (crate-source "shared_library" "0.1.9"
                "04fs37kdak051hm524a360978g58ayrcarjsbf54vqps5c7px7js"))

(define rust-shell-words-1.1.1
  (crate-source "shell-words" "1.1.1"
                "0xzd5p53xl0ndnk63r0by52rhdrh6pd37szfxszkg73zb6ffcvyw"))

(define rust-shlex-1.3.0
  (crate-source "shlex" "1.3.0"
                "0r1y6bv26c1scpxvhg2cabimrmwgbp4p3wy6syj9n0c4s3q2znhg"))

(define rust-shlex-2.0.1
  (crate-source "shlex" "2.0.1"
                "1fjsll1cd7d2bcpdij9kd6w62rpbc7qqzvydvs021vsmr1cxvypq"))

(define rust-signal-hook-0.3.18
  (crate-source "signal-hook" "0.3.18"
                "1qnnbq4g2vixfmlv28i1whkr0hikrf1bsc4xjy2aasj2yina30fq"))

(define rust-signal-hook-mio-0.2.5
  (crate-source "signal-hook-mio" "0.2.5"
                "1k20rr76ngvmzr6kskkl7dv8iyb84cbydpjbjk3mpcj0lykijnmp"))

(define rust-signal-hook-registry-1.4.8
  (crate-source "signal-hook-registry" "1.4.8"
                "06vc7pmnki6lmxar3z31gkyg9cw7py5x9g7px70gy2hil75nkny4"))

(define rust-simd-adler32-0.3.10
  (crate-source "simd-adler32" "0.3.10"
                "1sny4y2qa5mwyxx5x59ln2p02vsdh92004njlslnx98imjc9489s"))

(define rust-simd-cesu8-1.2.0
  (crate-source "simd_cesu8" "1.2.0"
                "0865mv3nmd35f1dccjcfj7dncjmmvvdij3j61z4131mz38jiw0qi"))

(define rust-simdutf8-0.1.5
  (crate-source "simdutf8" "0.1.5"
                "0vmpf7xaa0dnaikib5jlx6y4dxd3hxqz6l830qb079g7wcsgxag3"))

(define rust-similar-2.7.0
  (crate-source "similar" "2.7.0"
                "1aidids7ymfr96s70232s6962v5g9l4zwhkvcjp4c5hlb6b5vfxv"))

(define rust-siphasher-1.0.3
  (crate-source "siphasher" "1.0.3"
                "0jg6l9xyzca5vy4h6gf8r6p4kk84g98fk95pzig1kq6cr4z8grcf"))

(define rust-slab-0.4.12
  (crate-source "slab" "0.4.12"
                "1xcwik6s6zbd3lf51kkrcicdq2j4c1fw0yjdai2apy9467i0sy8c"))

(define rust-slotmap-1.1.1
  (crate-source "slotmap" "1.1.1"
                "0f20xf53zaysx9ydzkwwqm6hsjyb8lj2j6amhg57iln3jcy8rmdx"))

(define rust-smallvec-1.15.2
  (crate-source "smallvec" "1.15.2"
                "143wzbqf6vgapdp2z4qpl0yvlqcn17s8cnk8m28rqly808zsdmlf"))

(define rust-smawk-0.3.3
  (crate-source "smawk" "0.3.3"
                "006id1vx7vv7vdnmj0ss5dla34ggymlavv9b5wb4vfws947zpqp8"))

(define rust-smithay-client-toolkit-0.19.2
  (crate-source "smithay-client-toolkit" "0.19.2"
                "05h05hg4dn3v6br5jbdbs5nalk076a64s7fn6i01nqzby2hxwmrl"))

(define rust-smol-str-0.2.2
  (crate-source "smol_str" "0.2.2"
                "1bfylqf2vnqaglw58930vpxm2rfzji5gjp15a2c0kh8aj6v8ylyx"))

(define rust-socket2-0.6.5
  (crate-source "socket2" "0.6.5"
                "1m7diygswpvlpvrxd6ap169nxgax014jr8220nqlr3bzyb3y5lf3"))

(define rust-spirv-0.3.0+sdk-1.3.268.0
  (crate-source "spirv" "0.3.0+sdk-1.3.268.0"
                "0i3qj7yvvprai1s03dvll2gkfy8398nl64wvllkhaaa4vh1i197d"))

(define rust-stable-deref-trait-1.2.1
  (crate-source "stable_deref_trait" "1.2.1"
                "15h5h73ppqyhdhx6ywxfj88azmrpml9gl6zp3pwy2malqa6vxqkc"))

(define rust-static-assertions-1.1.0
  (crate-source "static_assertions" "1.1.0"
                "0gsl6xmw10gvn3zs1rv99laj5ig7ylffnh71f9l34js4nr4r7sx2"))

(define rust-str-indices-0.4.4
  (crate-source "str_indices" "0.4.4"
                "1rj7xrvv5m97qiqwqk1sqxazyggrw7h8kbb6vc438s08akn8k26h"))

(define rust-streaming-iterator-0.1.9
  (crate-source "streaming-iterator" "0.1.9"
                "0845zdv8qb7zwqzglpqc0830i43xh3fb6vqms155wz85qfvk28ib"))

(define rust-strict-num-0.1.1
  (crate-source "strict-num" "0.1.1"
                "0cb7l1vhb8zj90mzm8avlk815k40sql9515s865rqdrdfavvldv6"))

(define rust-strsim-0.11.1
  (crate-source "strsim" "0.11.1"
                "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x"))

(define rust-strum-0.28.0
  (crate-source "strum" "0.28.0"
                "1ggr0if083c1mz9w33hkdjsp0iqk2fz9n49bvb73knwihydxwa4n"))

(define rust-strum-macros-0.28.0
  (crate-source "strum_macros" "0.28.0"
                "0r7n6v5b3x85m52isyc8wq78irmr22g0hmj1xn3pbq8f4yhfx1db"))

(define rust-subtle-2.6.1
  (crate-source "subtle" "2.6.1"
                "14ijxaymghbl1p0wql9cib5zlwiina7kall6w7g89csprkgbvhhk"))

(define rust-sw-composite-0.7.16
  (crate-source "sw-composite" "0.7.16"
                "1m3i4vdmixzcsnbffiws8jimsxdq1n3346kkmmha1bxljmwgpj4s"))

(define rust-syn-1.0.109
  (crate-source "syn" "1.0.109"
                "0ds2if4600bd59wsv7jjgfkayfzy3hnazs394kz6zdkmna8l3dkj"))

(define rust-syn-2.0.119
  (crate-source "syn" "2.0.119"
                "15vjy620l91a3q4n4f4gzhnflmdr6pnm38v2m6cpk86i8av32a47"))

(define rust-syn-3.0.3
  (crate-source "syn" "3.0.3"
                "18srnql3cd39j9q6hf1az02p67rlr1rf6njx9zx4vxj9i3jvmsak"))

(define rust-syntect-5.3.0
  (crate-source "syntect" "5.3.0"
                "09f9j0hlsz5zmc0fkjdp64sjnyzcvp86pvxfk51p19cmbp04asv5"))

(define rust-system-deps-6.2.2
  (crate-source "system-deps" "6.2.2"
                "0j93ryw031n3h8b0nfpj5xwh3ify636xmv8kxianvlyyipmkbrd3"))

(define rust-tap-1.0.1
  (crate-source "tap" "1.0.1"
                "0sc3gl4nldqpvyhqi3bbd0l9k7fngrcl4zs47n314nqqk4bpx4sm"))

(define rust-tar-0.4.46
  (crate-source "tar" "0.4.46"
                "0h68bc0y1nma3h2ypj28vxc84msjydlrj8rviqwphg00lvcj2qiz"))

(define rust-target-lexicon-0.12.16
  (crate-source "target-lexicon" "0.12.16"
                "1cg3bnx1gdkdr5hac1hzxy64fhw4g7dqkd0n3dxy5lfngpr1mi31"))

(define rust-tempfile-3.27.0
  (crate-source "tempfile" "3.27.0"
                "1gblhnyfjsbg9wjg194n89wrzah7jy3yzgnyzhp56f3v9jd7wj9j"))

(define rust-termcolor-1.4.1
  (crate-source "termcolor" "1.4.1"
                "0mappjh3fj3p2nmrg4y7qv94rchwi9mzmgmfflr8p2awdj7lyy86"))

(define rust-termina-0.3.3
  (crate-source "termina" "0.3.3"
                "0km0c8zdpprqin2i1r9vr9nv362i519pzbz0vv6sad7yxy4shj4h"))

(define rust-terminfo-0.9.0
  (crate-source "terminfo" "0.9.0"
                "0qp6rrzkxcg08vjzsim2bw7mid3vi29mizrg70dzbycj0q7q3snl"))

(define rust-termios-0.3.3
  (crate-source "termios" "0.3.3"
                "0sxcs0g00538jqh5xbdqakkzijadr8nj7zmip0c7jz3k83vmn721"))

(define rust-termwiz-0.23.3
  (crate-source "termwiz" "0.23.3"
                "1xzq6l7rx285ax57dz8gdh44kp1790x0knvfynmimgfc89rb6xj6"))

(define rust-textwrap-0.16.2
  (crate-source "textwrap" "0.16.2"
                "0mrhd8q0dnh5hwbwhiv89c6i41yzmhw4clwa592rrp24b9hlfdf1"))

(define rust-thiserror-1.0.69
  (crate-source "thiserror" "1.0.69"
                "0lizjay08agcr5hs9yfzzj6axs53a2rgx070a1dsi3jpkcrzbamn"))

(define rust-thiserror-2.0.19
  (crate-source "thiserror" "2.0.19"
                "1ngwxsjsa64v1n7vb90h2b0i3fqk1piwaf0z6fqdacqfhjc3b909"))

(define rust-thiserror-impl-1.0.69
  (crate-source "thiserror-impl" "1.0.69"
                "1h84fmn2nai41cxbhk6pqf46bxqq1b344v8yz089w1chzi76rvjg"))

(define rust-thiserror-impl-2.0.19
  (crate-source "thiserror-impl" "2.0.19"
                "1ka10pqy1g8zy5al9m8yadg30jp8hx0q80j8awmd8131yw6gxjs3"))

(define rust-thread-local-1.1.10
  (crate-source "thread_local" "1.1.10"
                "0w20g2pfdcp8pz3gds0bzksv6mxk802szca8qlr3701jdm69rn8s"))

(define rust-time-0.3.54
  (crate-source "time" "0.3.54"
                "0i12170vw516jprmbv385krw75nyn7kwfp48nqybgfpnkximw79y"))

(define rust-time-core-0.1.9
  (crate-source "time-core" "0.1.9"
                "028ix0ax7ixp1h1k5zsqwgw85w6y1q32irslma7ci6ddd5kr074y"))

(define rust-tiny-http-0.12.0
  (crate-source "tiny_http" "0.12.0"
                "10nw9kk2i2aq4l4csy0825qkq0l66f9mz2c1n57yg8hkckgib69q"))

(define rust-tiny-keccak-2.0.2
  (crate-source "tiny-keccak" "2.0.2"
                "0dq2x0hjffmixgyf6xv9wgsbcxkd65ld0wrfqmagji8a829kg79c"))

(define rust-tiny-skia-0.11.4
  (crate-source "tiny-skia" "0.11.4"
                "1aq9gd4qh4418g8v08qzakqqggx8hl66qcianl3k5bjdsja37lc3"))

(define rust-tiny-skia-path-0.11.4
  (crate-source "tiny-skia-path" "0.11.4"
                "14ywbdfakvacl6rxxmzbnycplaxpc6i2linh2yqk0sp8qb07z7lw"))

(define rust-tokio-1.53.1
  (crate-source "tokio" "1.53.1"
                "1v8b3b45pkpbibls75yniqbvx5dlks2708141ljni5mnf6lawb10"))

(define rust-tokio-macros-2.7.2
  (crate-source "tokio-macros" "2.7.2"
                "03kvy2r5gr4zccm4vdx8vvv3q69kbjc1b006rs11aibz74m3lxvq"))

(define rust-toml-0.8.23
  (crate-source "toml" "0.8.23"
                "0qnkrq4lm2sdhp3l6cb6f26i8zbnhqb7mhbmksd550wxdfcyn6yw"))

(define rust-toml-1.1.4+spec-1.1.0
  (crate-source "toml" "1.1.4+spec-1.1.0"
                "1xanf3v10j8hdjz37mkhg80w92cw25kxwndhcp4w5pxw9czydb1s"))

(define rust-toml-datetime-0.6.11
  (crate-source "toml_datetime" "0.6.11"
                "077ix2hb1dcya49hmi1avalwbixmrs75zgzb3b2i7g2gizwdmk92"))

(define rust-toml-datetime-1.1.1+spec-1.1.0
  (crate-source "toml_datetime" "1.1.1+spec-1.1.0"
                "1mws2mkkf46l7inn77azhm0vdwxngv9vsbhbl0ah33p2c9gzcr9i"))

(define rust-toml-edit-0.19.15
  (crate-source "toml_edit" "0.19.15"
                "08bl7rp5g6jwmfpad9s8jpw8wjrciadpnbaswgywpr9hv9qbfnqv"))

(define rust-toml-edit-0.20.7
  (crate-source "toml_edit" "0.20.7"
                "10bdyrl1yj5jxkiqfa2fyx9inlzlm7s8nf1jnysp4k6qwky2gx3h"))

(define rust-toml-edit-0.22.27
  (crate-source "toml_edit" "0.22.27"
                "16l15xm40404asih8vyjvnka9g0xs9i4hfb6ry3ph9g419k8rzj1"))

(define rust-toml-edit-0.25.13+spec-1.1.0
  (crate-source "toml_edit" "0.25.13+spec-1.1.0"
                "16xgmjdnxssdpj7rjyimsk4fqbv29g8zl7zhdbc6dxrf9mz3cxb9"))

(define rust-toml-parser-1.1.3+spec-1.1.0
  (crate-source "toml_parser" "1.1.3+spec-1.1.0"
                "0mjdvihdkmjd4ykh574xgii71hpxw7ns7h4n4bisqpxrz4faqf0x"))

(define rust-toml-write-0.1.2
  (crate-source "toml_write" "0.1.2"
                "008qlhqlqvljp1gpp9rn5cqs74gwvdgbvs92wnpq8y3jlz4zi6ax"))

(define rust-toml-writer-1.1.2+spec-1.1.0
  (crate-source "toml_writer" "1.1.2+spec-1.1.0"
                "1lk6pqf9mac3v1x6282n6a66qx5b18c8f4a23bsd0nk658x3amkx"))

(define rust-tracing-0.1.44
  (crate-source "tracing" "0.1.44"
                "006ilqkg1lmfdh3xhg3z762izfwmxcvz0w7m4qx2qajbz9i1drv3"))

(define rust-tracing-attributes-0.1.31
  (crate-source "tracing-attributes" "0.1.31"
                "1np8d77shfvz0n7camx2bsf1qw0zg331lra0hxb4cdwnxjjwz43l"))

(define rust-tracing-core-0.1.36
  (crate-source "tracing-core" "0.1.36"
                "16mpbz6p8vd6j7sf925k9k8wzvm9vdfsjbynbmaxxyq6v7wwm5yv"))

(define rust-tracing-log-0.2.0
  (crate-source "tracing-log" "0.2.0"
                "1hs77z026k730ij1a9dhahzrl0s073gfa2hm5p0fbl0b80gmz1gf"))

(define rust-tracing-subscriber-0.3.23
  (crate-source "tracing-subscriber" "0.3.23"
                "06fkr0qhggvrs861d7f74pn3i3a10h5jsp4n70jj9ys5b675fzyb"))

(define rust-trash-5.2.6
  (crate-source "trash" "5.2.6"
                "0ikg6n5844014rj90fq6lbpkjh49qzxijwliihmdkhkfsv3y00kn"))

(define rust-tree-magic-mini-3.2.2
  (crate-source "tree_magic_mini" "3.2.2"
                "19nm2hkspb8p4gxgk442b1hmbbh9l5fnf7w3nli6rfhw0s85nxmq"))

(define rust-tree-sitter-0.26.11
  (crate-source "tree-sitter" "0.26.11"
                "1pw6qnaa67x3cw8cgbigd9xd0b38wxr6a3vb1nr202fcqk0p275g"))

(define rust-tree-sitter-go-0.25.0
  (crate-source "tree-sitter-go" "0.25.0"
                "1shnigi37lrq88b93i1vnha62byy1nykrq62sbac0p435x6hlmn8"))

(define rust-tree-sitter-highlight-0.26.11
  (crate-source "tree-sitter-highlight" "0.26.11"
                "1j2wkq60sbz5g4skxwb9895wwbzgx8j38id2aw54xkq3sm40qynd"))

(define rust-tree-sitter-javascript-0.25.0
  (crate-source "tree-sitter-javascript" "0.25.0"
                "1xckcrssvg8479aym090rgyjdakhqkshbrh6vw5sj9q6phm4y838"))

(define rust-tree-sitter-json-0.24.8
  (crate-source "tree-sitter-json" "0.24.8"
                "0wf4gsa5mcrcprg8wh647n76rwv4cx8kbky6zw605h06lk67lwjd"))

(define rust-tree-sitter-language-0.1.7
  (crate-source "tree-sitter-language" "0.1.7"
                "10hpwqd45v529p1q23d11k8wms7zifyda5s9yl7xa36ca3qr9680"))

(define rust-tree-sitter-templ-2.2.0
  (crate-source "tree-sitter-templ" "2.2.0"
                "06c6dmh684hjva37zp0ifdz7m9ahqz9a6lyclyjkiwiaxdv6y846"))

(define rust-tree-sitter-typescript-0.23.2
  (crate-source "tree-sitter-typescript" "0.23.2"
                "1zsyaxx3v1sd8gx2zkscwv6z1sq2nvccqpvd8k67ayllipnpcpvc"))

(define rust-triomphe-0.1.16
  (crate-source "triomphe" "0.1.16"
                "1bm0y6mjazp2dlfdmqkw1ip989sa3pvr2m5j2hb1gj49cgm8h1ml"))

(define rust-ts-rs-12.0.1
  (crate-source "ts-rs" "12.0.1"
                "1n1if87wnpdg3p7gzibkn0l79cax29cgbaallm3isaarcq350q3m"))

(define rust-ts-rs-macros-12.0.1
  (crate-source "ts-rs-macros" "12.0.1"
                "1ajjnsl39fz492mrqpjkkrrh8s5shl5ghjv7kvpqhydwa7m0xn9q"))

(define rust-ttf-parser-0.25.1
  (crate-source "ttf-parser" "0.25.1"
                "0cbgqglcwwjg3hirwq6xlza54w04mb5x02kf7zx4hrw50xmr1pyj"))

(define rust-typed-arena-2.0.2
  (crate-source "typed-arena" "2.0.2"
                "0shj0jpmglhgw2f1i4b33ycdzwd1z205pbs1rd5wx7ks2qhaxxka"))

(define rust-typenum-1.20.1
  (crate-source "typenum" "1.20.1"
                "086s9ly0906kw5yw41249fba97w5zfxf03pyfwdkffvcprqfixdn"))

(define rust-ucd-trie-0.1.7
  (crate-source "ucd-trie" "0.1.7"
                "0wc9p07sqwz320848i52nvyjvpsxkx3kv5bfbmm6s35809fdk5i8"))

(define rust-unarray-0.1.4
  (crate-source "unarray" "0.1.4"
                "154smf048k84prsdgh09nkm2n0w0336v84jd4zikyn6v6jrqbspa"))

(define rust-unicase-2.9.0
  (crate-source "unicase" "2.9.0"
                "0hh1wrfd7807mfph2q67jsxqgw8hm82xg2fb8ln8cvblkwxbri6v"))

(define rust-unicode-bidi-0.3.18
  (crate-source "unicode-bidi" "0.3.18"
                "1xcxwbsqa24b8vfchhzyyzgj0l6bn51ib5v8j6krha0m77dva72w"))

(define rust-unicode-bidi-mirroring-0.4.0
  (crate-source "unicode-bidi-mirroring" "0.4.0"
                "1zirs1z3ahlwy7swg7apnm3pc6vix1g15q0kn6fx8rmvc266xyjx"))

(define rust-unicode-ccc-0.4.0
  (crate-source "unicode-ccc" "0.4.0"
                "0gjhxwx27ywm3rcbb0m5q20w8zxi51440b3ps6swi6ywpj4d8qff"))

(define rust-unicode-id-start-1.4.0
  (crate-source "unicode-id-start" "1.4.0"
                "01v0ig6a5dy75r9wwhnjfw1fzcj3nhcqj3q2c11dw6aykg99mdw1"))

(define rust-unicode-ident-1.0.24
  (crate-source "unicode-ident" "1.0.24"
                "0xfs8y1g7syl2iykji8zk5hgfi5jw819f5zsrbaxmlzwsly33r76"))

(define rust-unicode-linebreak-0.1.5
  (crate-source "unicode-linebreak" "0.1.5"
                "07spj2hh3daajg335m4wdav6nfkl0f6c0q72lc37blr97hych29v"))

(define rust-unicode-properties-0.1.4
  (crate-source "unicode-properties" "0.1.4"
                "07fpm3sqq7lm9gmgpxa93z31q933h3c3ypfwy4cdh6l42g3miw3x"))

(define rust-unicode-script-0.5.8
  (crate-source "unicode-script" "0.5.8"
                "1vmifpgd0map3frmvhszhl96k82crcry083prv05wii7p45x8fiq"))

(define rust-unicode-segmentation-1.13.3
  (crate-source "unicode-segmentation" "1.13.3"
                "1a47zaq83p386r3baq4m018xd5q4q0grdg56i1x042dzn71x7xf6"))

(define rust-unicode-truncate-2.0.1
  (crate-source "unicode-truncate" "2.0.1"
                "19g9af5v0a8xaigqbs9hi9csxkg1fff07ycilvwfaqw64fhq1cqn"))

(define rust-unicode-width-0.2.2
  (crate-source "unicode-width" "0.2.2"
                "0m7jjzlcccw716dy9423xxh0clys8pfpllc5smvfxrzdf66h9b5l"))

(define rust-unsafe-libyaml-0.2.11
  (crate-source "unsafe-libyaml" "0.2.11"
                "0qdq69ffl3v5pzx9kzxbghzn0fzn266i1xn70y88maybz9csqfk7"))

(define rust-untrusted-0.9.0
  (crate-source "untrusted" "0.9.0"
                "1ha7ib98vkc538x0z60gfn0fc5whqdd85mb87dvisdcaifi6vjwf"))

(define rust-ureq-3.3.0
  (crate-source "ureq" "3.3.0"
                "1h6gmx5kbafh4vn1dbypc01m5gy9imja2n0vxd74v1nmvjf119yy"))

(define rust-ureq-proto-0.6.0
  (crate-source "ureq-proto" "0.6.0"
                "1340ga8p9qi70c0vdrwg21h1fp4ai7pvfy18z461n6xxn22bm579"))

(define rust-urlencoding-2.1.3
  (crate-source "urlencoding" "2.1.3"
                "1nj99jp37k47n0hvaz5fvz7z6jd0sb4ppvfy3nphr1zbnyixpy6s"))

(define rust-utf8-zero-0.8.1
  (crate-source "utf8-zero" "0.8.1"
                "0vjsmwd1k2wwlsn1phi7mrcjxn4bv8fzk24caxyaw2slr51s1h5q"))

(define rust-utf8parse-0.2.2
  (crate-source "utf8parse" "0.2.2"
                "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6"))

(define rust-uuid-1.24.0
  (crate-source "uuid" "1.24.0"
                "0faj5x0zgri8m3i8dv9qgyhiwqwdyhbl2g351cp3iin4ynk26fdz"))

(define rust-valuable-0.1.1
  (crate-source "valuable" "0.1.1"
                "0r9srp55v7g27s5bg7a2m095fzckrcdca5maih6dy9bay6fflwxs"))

(define rust-version-check-0.9.5
  (crate-source "version_check" "0.9.5"
                "0nhhi4i5x89gm911azqbn7avs9mdacw2i3vcz3cnmz3mv4rqz4hb"))

(define rust-version-compare-0.2.1
  (crate-source "version-compare" "0.2.1"
                "03nziqxwnxlizl42cwsx33vi5xd2cf2jnszhh9rzay7g6xl8bhh3"))

(define rust-vt100-0.16.2
  (crate-source "vt100" "0.16.2"
                "1nbgsgamgibyx6y4xiyk6nkz7zggzbs6s445wq4yd0zsp1gzfkq5"))

(define rust-vte-0.15.0
  (crate-source "vte" "0.15.0"
                "1g9xgnw7q7zdwgfqa6zfcfsp92wn0j0h13kzsqy0dq3c80c414m5"))

(define rust-vtparse-0.6.2
  (crate-source "vtparse" "0.6.2"
                "1l5yz9650zhkaffxn28cvfys7plcw2wd6drajyf41pshn37jm6vd"))

(define rust-wait-timeout-0.2.1
  (crate-source "wait-timeout" "0.2.1"
                "04azqv9mnfxgvnc8j2wp362xraybakh2dy1nj22gj51rdl93pb09"))

(define rust-walkdir-2.5.0
  (crate-source "walkdir" "2.5.0"
                "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-wasip2-1.0.4+wasi-0.2.12
  (crate-source "wasip2" "1.0.4+wasi-0.2.12"
                "11wl7lqwq4pbmlmzr6n7bwz0hzy1z6sxc4554bkmrr86w4vznzmn"))

(define rust-wasm-bindgen-0.2.126
  (crate-source "wasm-bindgen" "0.2.126"
                "197rma4qg1kb8l4bl7857pgszzval8s1w740g9myyjh92467q1jb"))

(define rust-wasm-bindgen-futures-0.4.76
  (crate-source "wasm-bindgen-futures" "0.4.76"
                "0799v92cpaprapnmpaflc51sdnz362q2fsjdqnwiq8ij1wsg2bf6"))

(define rust-wasm-bindgen-macro-0.2.126
  (crate-source "wasm-bindgen-macro" "0.2.126"
                "1cda6wl5zyiy7777cfgrix7fhpaqba55l5zpqj4zig7ng7jyaz0n"))

(define rust-wasm-bindgen-macro-support-0.2.126
  (crate-source "wasm-bindgen-macro-support" "0.2.126"
                "03iq412frl2py55skwb3ya08xha0cf6q22zr5kqlwbr675w7r6gk"))

(define rust-wasm-bindgen-shared-0.2.126
  (crate-source "wasm-bindgen-shared" "0.2.126"
                "097a3kbjls447s1lwr41l21x5crrh5vq3h6zsxccz7slrjq4q6yw"))

(define rust-wayland-backend-0.3.16
  (crate-source "wayland-backend" "0.3.16"
                "1f2l7zw10cwid6444w86szvr08wvgkhi6a31k64nz2y5s40wyv01"))

(define rust-wayland-client-0.31.15
  (crate-source "wayland-client" "0.31.15"
                "0ww0d0r6rn2h0sn8ma1f7zvxj40l6930p07j044nvmqshq7nmhz3"))

(define rust-wayland-csd-frame-0.3.0
  (crate-source "wayland-csd-frame" "0.3.0"
                "0zjcmcqprfzx57hlm741n89ssp4sha5yh5cnmbk2agflvclm0p32"))

(define rust-wayland-cursor-0.31.14
  (crate-source "wayland-cursor" "0.31.14"
                "0kdk7xwj465idk54jf1f24024gdp63wyagca68a176xyh23x2lja"))

(define rust-wayland-protocols-0.32.13
  (crate-source "wayland-protocols" "0.32.13"
                "1dn4injzx1lnmacnhl3q60m743lvshxmmy0aabb2xaixvq9wil13"))

(define rust-wayland-protocols-plasma-0.3.12
  (crate-source "wayland-protocols-plasma" "0.3.12"
                "14adi3xgkldbih60705gshlq2lskds5chhsn3znk271cxgqqqv9b"))

(define rust-wayland-protocols-wlr-0.3.12
  (crate-source "wayland-protocols-wlr" "0.3.12"
                "0d424vn2hj27r4gjlshm6hy8fcqysr805jkqdjbwgmrng0pya17b"))

(define rust-wayland-scanner-0.31.11
  (crate-source "wayland-scanner" "0.31.11"
                "1h0al3271l2w124sxlh77s1kmjg0z24ns2mk1vbnfars3d3313ik"))

(define rust-wayland-sys-0.31.11
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "wayland-sys" "0.31.11"
                "1gp3hlkxx13i55lyyi794vnw9a780z3skx0xhj71zr69xwzv5snq"))

(define rust-web-sys-0.3.103
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "web-sys" "0.3.103"
                "0hb1zdnrp99p5r5q66jagsddmwha460yv2wklvzrzk0b3jvdq8l6"))

(define rust-web-time-1.1.0
  (crate-source "web-time" "1.1.0"
                "1fx05yqx83dhx628wb70fyy10yjfq1jpl20qfqhdkymi13rq0ras"))

(define rust-webpki-root-certs-1.0.9
  (crate-source "webpki-root-certs" "1.0.9"
                "16qw59hxn1lln1615kb9rjy16pfxd1x8m9f9w6vwv36c5am58rdr"))

(define rust-webpki-roots-1.0.9
  (crate-source "webpki-roots" "1.0.9"
                "0apja04243wz3vi26pqjg4sq8cqaac66prj490sgb1crlc4rvkbx"))

(define rust-wezterm-bidi-0.2.3
  (crate-source "wezterm-bidi" "0.2.3"
                "1v7kwmnxfplv9kgdmamn6csbn2ag5xjr0y6gs797slk0alsnw2hc"))

(define rust-wezterm-blob-leases-0.1.1
  (crate-source "wezterm-blob-leases" "0.1.1"
                "1dwf8bm3cwdi37fandwbk7nsfhn9spv4wm0l86gf551xv7vaybb9"))

(define rust-wezterm-color-types-0.3.0
  (crate-source "wezterm-color-types" "0.3.0"
                "15j29f60p1dc0msx50x940niyv9d5zpynavpcc6jf44hbkrixs3x"))

(define rust-wezterm-dynamic-0.2.1
  (crate-source "wezterm-dynamic" "0.2.1"
                "1b6mrk09xxiz66dj3912kmiq8rl7dqig6rwminkfmmhg287bcajz"))

(define rust-wezterm-dynamic-derive-0.1.1
  (crate-source "wezterm-dynamic-derive" "0.1.1"
                "0nspip7gwzmfn66fbnbpa2yik2sb97nckzmgir25nr4wacnwzh26"))

(define rust-wezterm-input-types-0.1.0
  (crate-source "wezterm-input-types" "0.1.0"
                "0zp557014d458a69yqn9dxfy270b6kyfdiynr5p4algrb7aas4kh"))

(define rust-wgpu-28.0.0
  (crate-source "wgpu" "28.0.0"
                "17ypgaygh18pzvf2b9jm92wylq4ywbd4rwrm25yrq47xbx6m7jzr"))

(define rust-wgpu-core-28.0.1
  (crate-source "wgpu-core" "28.0.1"
                "1y8h3i6ydjwhddliivqs220nc7jd2ymihcidzpf6lrizym14cgyj"))

(define rust-wgpu-core-deps-apple-28.0.0
  (crate-source "wgpu-core-deps-apple" "28.0.0"
                "1nj7024j30plwhqqmfijg2ik42h8ahj194xzhv23gwqqp6bbddw7"))

(define rust-wgpu-core-deps-emscripten-28.0.0
  (crate-source "wgpu-core-deps-emscripten" "28.0.0"
                "0ydxim2s0krqfhdyxmsxm4i2c4a5maillg6y8z0ylkzq671m3cil"))

(define rust-wgpu-core-deps-windows-linux-android-28.0.0
  (crate-source "wgpu-core-deps-windows-linux-android" "28.0.0"
                "1bmszr0aw4nsvhh0k4h9whaaa53zrvv83qj3n979djdjf9p9gjk8"))

(define rust-wgpu-hal-28.0.1
  (crate-source "wgpu-hal" "28.0.1"
                "1sqfqb5619bx80kzp6vqca972gwpkmkwxqf9vhj8h8gb9d3wpmj4"))

(define rust-wgpu-types-28.0.0
  (crate-source "wgpu-types" "28.0.0"
                "0344ym97a5mhn7ha4clxh61schlw2dmb3nyx4z6x4kjrgrshi0z1"))

(define rust-which-6.0.3
  (crate-source "which" "6.0.3"
                "07yg74dsq644hq5a35546c9mja6rsjdsg92rykr9hkflxf7r5vml"))

(define rust-widestring-1.2.1
  (crate-source "widestring" "1.2.1"
                "0wg4qdbs70xqnlbm8wb0bs4idm2mxk3b6kaqwllsncmb2cqrq1kj"))

(define rust-winapi-0.3.9
  (crate-source "winapi" "0.3.9"
                "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (crate-source "winapi-i686-pc-windows-gnu" "0.4.0"
                "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))

(define rust-winapi-util-0.1.11
  (crate-source "winapi-util" "0.1.11"
                "08hdl7mkll7pz8whg869h58c1r9y7in0w0pk8fm24qc77k0b39y2"))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (crate-source "winapi-x86_64-pc-windows-gnu" "0.4.0"
                "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))

(define rust-windows-0.56.0
  (crate-source "windows" "0.56.0"
                "0cp10nzrqgrlk91dpwxjcpzyy6imr5vxr5f898pss7nz3gq9vrhx"))

(define rust-windows-0.62.2
  (crate-source "windows" "0.62.2"
                "10457l9ihrbw8j79z2v4plyjxkf6xvb5npd0lqwmkh702gpaszsj"))

(define rust-windows-aarch64-gnullvm-0.42.2
  (crate-source "windows_aarch64_gnullvm" "0.42.2"
                "1y4q0qmvl0lvp7syxvfykafvmwal5hrjb4fmv04bqs0bawc52yjr"))

(define rust-windows-aarch64-gnullvm-0.52.6
  (crate-source "windows_aarch64_gnullvm" "0.52.6"
                "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))

(define rust-windows-aarch64-gnullvm-0.53.1
  (crate-source "windows_aarch64_gnullvm" "0.53.1"
                "0lqvdm510mka9w26vmga7hbkmrw9glzc90l4gya5qbxlm1pl3n59"))

(define rust-windows-aarch64-msvc-0.42.2
  (crate-source "windows_aarch64_msvc" "0.42.2"
                "0hsdikjl5sa1fva5qskpwlxzpc5q9l909fpl1w6yy1hglrj8i3p0"))

(define rust-windows-aarch64-msvc-0.52.6
  (crate-source "windows_aarch64_msvc" "0.52.6"
                "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))

(define rust-windows-aarch64-msvc-0.53.1
  (crate-source "windows_aarch64_msvc" "0.53.1"
                "01jh2adlwx043rji888b22whx4bm8alrk3khjpik5xn20kl85mxr"))

(define rust-windows-collections-0.3.2
  (crate-source "windows-collections" "0.3.2"
                "0436rjbkqn3j9m2v2lcmwwk0l3n2r57yvqb7fcy4m8d8y5ddkci3"))

(define rust-windows-core-0.56.0
  (crate-source "windows-core" "0.56.0"
                "19pj57bm0rzhlk0ghrccd3i5zvh0ghm52f8cmdc8d3yhs8pfb626"))

(define rust-windows-core-0.62.2
  (crate-source "windows-core" "0.62.2"
                "1swxpv1a8qvn3bkxv8cn663238h2jccq35ff3nsj61jdsca3ms5q"))

(define rust-windows-future-0.3.2
  (crate-source "windows-future" "0.3.2"
                "1jq5qs2dwzf6rl60f8gr49z2mifxsrdh4y4yfdws467ya41gkmp1"))

(define rust-windows-i686-gnu-0.42.2
  (crate-source "windows_i686_gnu" "0.42.2"
                "0kx866dfrby88lqs9v1vgmrkk1z6af9lhaghh5maj7d4imyr47f6"))

(define rust-windows-i686-gnu-0.52.6
  (crate-source "windows_i686_gnu" "0.52.6"
                "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))

(define rust-windows-i686-gnu-0.53.1
  (crate-source "windows_i686_gnu" "0.53.1"
                "18wkcm82ldyg4figcsidzwbg1pqd49jpm98crfz0j7nqd6h6s3ln"))

(define rust-windows-i686-gnullvm-0.52.6
  (crate-source "windows_i686_gnullvm" "0.52.6"
                "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))

(define rust-windows-i686-gnullvm-0.53.1
  (crate-source "windows_i686_gnullvm" "0.53.1"
                "030qaxqc4salz6l4immfb6sykc6gmhyir9wzn2w8mxj8038mjwzs"))

(define rust-windows-i686-msvc-0.42.2
  (crate-source "windows_i686_msvc" "0.42.2"
                "0q0h9m2aq1pygc199pa5jgc952qhcnf0zn688454i7v4xjv41n24"))

(define rust-windows-i686-msvc-0.52.6
  (crate-source "windows_i686_msvc" "0.52.6"
                "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))

(define rust-windows-i686-msvc-0.53.1
  (crate-source "windows_i686_msvc" "0.53.1"
                "1hi6scw3mn2pbdl30ji5i4y8vvspb9b66l98kkz350pig58wfyhy"))

(define rust-windows-implement-0.56.0
  (crate-source "windows-implement" "0.56.0"
                "16rgkvlx4syqmajfdwmkcvn6nvh126wjj8sg3jvsk5fdivskbz7n"))

(define rust-windows-implement-0.60.2
  (crate-source "windows-implement" "0.60.2"
                "1psxhmklzcf3wjs4b8qb42qb6znvc142cb5pa74rsyxm1822wgh5"))

(define rust-windows-interface-0.56.0
  (crate-source "windows-interface" "0.56.0"
                "1k2prfxna0mw47f8gi8qhw9jfpw66bh2cqzs67sgipjfpx30b688"))

(define rust-windows-interface-0.59.3
  (crate-source "windows-interface" "0.59.3"
                "0n73cwrn4247d0axrk7gjp08p34x1723483jxjxjdfkh4m56qc9z"))

(define rust-windows-link-0.2.1
  (crate-source "windows-link" "0.2.1"
                "1rag186yfr3xx7piv5rg8b6im2dwcf8zldiflvb22xbzwli5507h"))

(define rust-windows-numerics-0.3.1
  (crate-source "windows-numerics" "0.3.1"
                "09hgbg8pf89r4090yyhh9q29ppi7yyxkgmga9ascshy19a240bkf"))

(define rust-windows-result-0.1.2
  (crate-source "windows-result" "0.1.2"
                "1y274q1v0vy21lhkgslpxpq1m08hvr1mcs2l88h1b1gcx0136f2y"))

(define rust-windows-result-0.4.1
  (crate-source "windows-result" "0.4.1"
                "1d9yhmrmmfqh56zlj751s5wfm9a2aa7az9rd7nn5027nxa4zm0bp"))

(define rust-windows-strings-0.5.1
  (crate-source "windows-strings" "0.5.1"
                "14bhng9jqv4fyl7lqjz3az7vzh8pw0w4am49fsqgcz67d67x0dvq"))

(define rust-windows-sys-0.45.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.45.0"
                "1l36bcqm4g89pknfp8r9rl1w4bn017q6a8qlx8viv0xjxzjkna3m"))

(define rust-windows-sys-0.52.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.52.0"
                "0gd3v4ji88490zgb6b5mq5zgbvwv7zx1ibn8v3x83rwcdbryaar8"))

(define rust-windows-sys-0.59.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.59.0"
                "0fw5672ziw8b3zpmnbp9pdv1famk74f1l9fcbc3zsrzdg56vqf0y"))

(define rust-windows-sys-0.60.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.60.2"
                "1jrbc615ihqnhjhxplr2kw7rasrskv9wj3lr80hgfd42sbj01xgj"))

(define rust-windows-sys-0.61.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.61.2"
                "1z7k3y9b6b5h52kid57lvmvm05362zv1v8w0gc7xyv5xphlp44xf"))

(define rust-windows-targets-0.42.2
  (crate-source "windows-targets" "0.42.2"
                "0wfhnib2fisxlx8c507dbmh97kgij4r6kcxdi0f9nk6l1k080lcf"))

(define rust-windows-targets-0.52.6
  (crate-source "windows-targets" "0.52.6"
                "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))

(define rust-windows-targets-0.53.5
  (crate-source "windows-targets" "0.53.5"
                "1wv9j2gv3l6wj3gkw5j1kr6ymb5q6dfc42yvydjhv3mqa7szjia9"))

(define rust-windows-threading-0.2.1
  (crate-source "windows-threading" "0.2.1"
                "0dsvsy33vxs0153z4n39sqkzx382cjjkrd46rb3z3zfak5dvsj9r"))

(define rust-windows-x86-64-gnu-0.42.2
  (crate-source "windows_x86_64_gnu" "0.42.2"
                "0dnbf2xnp3xrvy8v9mgs3var4zq9v9yh9kv79035rdgyp2w15scd"))

(define rust-windows-x86-64-gnu-0.52.6
  (crate-source "windows_x86_64_gnu" "0.52.6"
                "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))

(define rust-windows-x86-64-gnu-0.53.1
  (crate-source "windows_x86_64_gnu" "0.53.1"
                "16d4yiysmfdlsrghndr97y57gh3kljkwhfdbcs05m1jasz6l4f4w"))

(define rust-windows-x86-64-gnullvm-0.42.2
  (crate-source "windows_x86_64_gnullvm" "0.42.2"
                "18wl9r8qbsl475j39zvawlidp1bsbinliwfymr43fibdld31pm16"))

(define rust-windows-x86-64-gnullvm-0.52.6
  (crate-source "windows_x86_64_gnullvm" "0.52.6"
                "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))

(define rust-windows-x86-64-gnullvm-0.53.1
  (crate-source "windows_x86_64_gnullvm" "0.53.1"
                "1qbspgv4g3q0vygkg8rnql5c6z3caqv38japiynyivh75ng1gyhg"))

(define rust-windows-x86-64-msvc-0.42.2
  (crate-source "windows_x86_64_msvc" "0.42.2"
                "1w5r0q0yzx827d10dpjza2ww0j8iajqhmb54s735hhaj66imvv4s"))

(define rust-windows-x86-64-msvc-0.52.6
  (crate-source "windows_x86_64_msvc" "0.52.6"
                "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))

(define rust-windows-x86-64-msvc-0.53.1
  (crate-source "windows_x86_64_msvc" "0.53.1"
                "0l6npq76vlq4ksn4bwsncpr8508mk0gmznm6wnhjg95d19gzzfyn"))

(define rust-winit-0.30.13
  (crate-source "winit" "0.30.13"
                "13cpylyvdl066fivncw96pn29y15rhzlqba73sym10wziajmyxd6"))

(define rust-winnow-0.5.40
  (crate-source "winnow" "0.5.40"
                "0xk8maai7gyxda673mmw3pj1hdizy5fpi7287vaywykkk19sk4zm"))

(define rust-winnow-0.7.15
  (crate-source "winnow" "0.7.15"
                "0i9rkl2rqpbnnxlgs20gmkj3nd0b2k8q55mjmpc2ybb84xwxjyfz"))

(define rust-winnow-1.0.4
  (crate-source "winnow" "1.0.4"
                "10fzxipa7lx16172p3aca9j60hzbqgjki2f95kqksd5qywcp7f93"))

(define rust-winreg-0.10.1
  (crate-source "winreg" "0.10.1"
                "17c6h02z88ijjba02bnxi5k94q5cz490nf3njh9yypf8fbig9l40"))

(define rust-winresource-0.1.31
  (crate-source "winresource" "0.1.31"
                "11v0hr6kfyi8kl8am96fkn325bjinjgs77ixzvjd7dw6snqsi1h9"))

(define rust-winsafe-0.0.19
  (crate-source "winsafe" "0.0.19"
                "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))

(define rust-wit-bindgen-0.57.1
  (crate-source "wit-bindgen" "0.57.1"
                "0vjk2jb593ri9k1aq4iqs2si9mrw5q46wxnn78im7hm7hx799gqy"))

(define rust-wl-clipboard-rs-0.9.3
  (crate-source "wl-clipboard-rs" "0.9.3"
                "18xh5q3r9k57v3g2565vr33irldjh99p29x1ydpdk1rfldqi8rg9"))

(define rust-wyz-0.5.1
  (crate-source "wyz" "0.5.1"
                "1vdrfy7i2bznnzjdl9vvrzljvs4s3qm8bnlgqwln6a941gy61wq5"))

(define rust-x11-2.21.0
  (crate-source "x11" "2.21.0"
                "0bnvl09d7044k067gqdx1ln2r0ljp5f4675icwb0216d9i3aabah"))

(define rust-x11-dl-2.21.0
  (crate-source "x11-dl" "2.21.0"
                "0vsiq62xpcfm0kn9zjw5c9iycvccxl22jya8wnk18lyxzqj5jwrq"))

(define rust-x11rb-0.13.2
  (crate-source "x11rb" "0.13.2"
                "053lvnaw9ycbl791mgwly2hw27q6vqgzrb1y5kz1as52wmdsm4wr"))

(define rust-x11rb-protocol-0.13.2
  (crate-source "x11rb-protocol" "0.13.2"
                "1g81cznbyn522b0fbis0i44wh3adad2vhsz5pzf99waf3sbc4vza"))

(define rust-xattr-1.6.1
  (crate-source "xattr" "1.6.1"
                "0ml1mb43gqasawillql6b344m0zgq8mz0isi11wj8vbg43a5mr1j"))

(define rust-xcursor-0.3.10
  (crate-source "xcursor" "0.3.10"
                "0awgy98awg4ydcfmynqfcwvl4bnnfcm4i2vvnk2n926a02jy9jdy"))

(define rust-xkbcommon-dl-0.4.2
  (crate-source "xkbcommon-dl" "0.4.2"
                "1iai0r3b5skd9vbr8z5b0qixiz8jblzfm778ddm8ba596a0dwffh"))

(define rust-xkeysym-0.2.1
  (crate-source "xkeysym" "0.2.1"
                "0mksx670cszyd7jln6s7dhkw11hdfv7blwwr3isq98k22ljh1k5r"))

(define rust-xml-rs-0.8.28
  (crate-source "xml-rs" "0.8.28"
                "0grdj7xwbki5zrkalrg8dljyf14y4yj3wrj34sbzqp06i9zk7s1s"))

(define rust-xz2-0.1.7
  (crate-source "xz2" "0.1.7"
                "1qk7nzpblizvayyq4xzi4b0zacmmbqr6vb9fc0v1avyp17f4931q"))

(define rust-yaml-rust-0.4.5
  (crate-source "yaml-rust" "0.4.5"
                "118wbqrr4n6wgk5rjjnlrdlahawlxc1bdsx146mwk8f79in97han"))

(define rust-zerocopy-0.8.55
  (crate-source "zerocopy" "0.8.55"
                "1swncvj53zi9yr08b9ddhfrcmlrmh6ijxzxcr3p6w3qlgg6hb8dm"))

(define rust-zerocopy-derive-0.8.55
  (crate-source "zerocopy-derive" "0.8.55"
                "1sr8w9zc62lxmw7v6n89nxvqlki48b0nyfpyri6dd367f3xpds8g"))

(define rust-zeroize-1.9.0
  (crate-source "zeroize" "1.9.0"
                "0kpnij2v1ig6g2mhc0bnci0lrdfdhiq40afbc0fahajqc9jiag71"))

(define rust-zip-2.4.2
  (crate-source "zip" "2.4.2"
                "0l5s7sycj0w42hnkmj6vnrzcp3dn4smffg06a8f5my08x4j67gps"))

(define rust-zmij-1.0.23
  (crate-source "zmij" "1.0.23"
                "06zwri21nnrl34rwinmvbciap8yk1mrl8qfg9pff7lgspc56sri9"))

(define rust-zopfli-0.8.3
  (crate-source "zopfli" "0.8.3"
                "0jaj5dyh3mks0805h4ldrsh5pwq4i2jc9dc9zwjm91k3gmwxhp7h"))

(define ssss-separator 'end-of-crates)


;;;
;;; Cargo inputs.
;;;

(define-cargo-inputs lookup-cargo-inputs
                     (fresh-editor =>
                                   (list rust-ab-glyph-0.2.32
                                    rust-ab-glyph-rasterizer-0.1.10
                                    rust-adler2-2.0.1
                                    rust-ahash-0.8.12
                                    rust-aho-corasick-1.1.4
                                    rust-alacritty-terminal-0.25.1
                                    rust-allocator-api2-0.2.21
                                    rust-android-activity-0.6.1
                                    rust-android-properties-0.2.2
                                    rust-android-system-properties-0.1.5
                                    rust-anstyle-1.0.14
                                    rust-anyhow-1.0.104
                                    rust-approx-0.5.1
                                    rust-arbitrary-1.4.2
                                    rust-arboard-3.6.1
                                    rust-arc-swap-1.9.2
                                    rust-arrayref-0.3.9
                                    rust-arrayvec-0.7.8
                                    rust-as-raw-xcb-connection-1.0.1
                                    rust-ascii-1.1.0
                                    rust-ash-0.38.0+1.3.281
                                    rust-async-lock-3.4.2
                                    rust-async-trait-0.1.91
                                    rust-atk-0.18.2
                                    rust-atk-sys-0.18.2
                                    rust-atomic-0.6.1
                                    rust-atomic-waker-1.1.2
                                    rust-autocfg-1.5.1
                                    rust-base62-2.2.4
                                    rust-base64-0.22.1
                                    rust-bincode-1.3.3
                                    rust-bindgen-0.72.1
                                    rust-bit-set-0.5.3
                                    rust-bit-set-0.8.0
                                    rust-bit-vec-0.6.3
                                    rust-bit-vec-0.8.0
                                    rust-bitflags-1.3.2
                                    rust-bitflags-2.13.1
                                    rust-bitvec-1.1.1
                                    rust-block-0.1.6
                                    rust-block-buffer-0.10.4
                                    rust-block-buffer-0.12.1
                                    rust-block2-0.5.1
                                    rust-bstr-1.13.0
                                    rust-bumpalo-3.20.3
                                    rust-by-address-1.2.1
                                    rust-bytemuck-1.25.2
                                    rust-bytemuck-derive-1.11.0
                                    rust-bytes-1.12.1
                                    rust-cairo-rs-0.18.5
                                    rust-cairo-sys-rs-0.18.2
                                    rust-calloop-0.13.0
                                    rust-calloop-wayland-source-0.3.0
                                    rust-castaway-0.2.4
                                    rust-cc-1.4.0
                                    rust-cesu8-1.1.0
                                    rust-cexpr-0.6.0
                                    rust-cfg-expr-0.15.8
                                    rust-cfg-if-1.0.4
                                    rust-cfg-aliases-0.1.1
                                    rust-cfg-aliases-0.2.2
                                    rust-chardetng-0.1.17
                                    rust-chrono-0.4.45
                                    rust-chunked-transfer-1.5.0
                                    rust-clang-sys-1.9.1
                                    rust-clap-4.6.4
                                    rust-clap-builder-4.6.2
                                    rust-clap-derive-4.6.4
                                    rust-clap-lex-1.1.0
                                    rust-clipboard-win-5.4.1
                                    rust-cobs-0.3.0
                                    rust-codespan-reporting-0.12.0
                                    rust-combine-4.6.7
                                    rust-compact-str-0.9.1
                                    rust-concurrent-queue-2.5.0
                                    rust-console-0.16.4
                                    rust-const-oid-0.10.2
                                    rust-const-random-0.1.18
                                    rust-const-random-macro-0.1.16
                                    rust-convert-case-0.10.0
                                    rust-core-foundation-0.9.4
                                    rust-core-foundation-0.10.1
                                    rust-core-foundation-sys-0.8.7
                                    rust-core-graphics-0.23.2
                                    rust-core-graphics-types-0.1.3
                                    rust-core-graphics-types-0.2.0
                                    rust-core-maths-0.1.1
                                    rust-cow-utils-0.1.3
                                    rust-cpufeatures-0.2.17
                                    rust-cpufeatures-0.3.0
                                    rust-crc32fast-1.5.0
                                    rust-crossbeam-channel-0.5.16
                                    rust-crossbeam-deque-0.8.7
                                    rust-crossbeam-epoch-0.9.20
                                    rust-crossbeam-utils-0.8.22
                                    rust-crossterm-0.29.0
                                    rust-crossterm-winapi-0.9.1
                                    rust-crunchy-0.2.4
                                    rust-crypto-common-0.1.7
                                    rust-crypto-common-0.2.2
                                    rust-csscolorparser-0.6.2
                                    rust-ctor-0.6.3
                                    rust-ctor-proc-macro-0.0.7
                                    rust-cursor-icon-1.2.0
                                    rust-darling-0.23.0
                                    rust-darling-core-0.23.0
                                    rust-darling-macro-0.23.0
                                    rust-deltae-0.3.2
                                    rust-deranged-0.5.8
                                    rust-derive-arbitrary-1.4.2
                                    rust-derive-more-2.1.1
                                    rust-derive-more-impl-2.1.1
                                    rust-digest-0.10.7
                                    rust-digest-0.11.3
                                    rust-dirs-6.0.0
                                    rust-dirs-sys-0.5.0
                                    rust-dispatch-0.2.0
                                    rust-dispatch2-0.3.1
                                    rust-displaydoc-0.2.7
                                    rust-dlib-0.5.3
                                    rust-doctest-file-1.1.1
                                    rust-document-features-0.2.12
                                    rust-downcast-rs-1.2.1
                                    rust-dpi-0.1.2
                                    rust-dragonbox-ecma-0.1.12
                                    rust-dtor-0.1.1
                                    rust-dtor-proc-macro-0.0.6
                                    rust-dyn-clone-1.0.20
                                    rust-either-1.17.0
                                    rust-embedded-io-0.4.0
                                    rust-embedded-io-0.6.1
                                    rust-encode-unicode-1.0.0
                                    rust-encoding-rs-0.8.35
                                    rust-equivalent-1.0.2
                                    rust-errno-0.3.14
                                    rust-error-code-3.3.2
                                    rust-euclid-0.22.14
                                    rust-event-listener-5.4.2
                                    rust-event-listener-strategy-0.5.4
                                    rust-evictor-0.5.1
                                    rust-fancy-regex-0.11.0
                                    rust-fancy-regex-0.16.2
                                    rust-fast-srgb8-1.0.0
                                    rust-fastrand-2.5.0
                                    rust-fdeflate-0.3.7
                                    rust-field-offset-0.3.6
                                    rust-filedescriptor-0.8.3
                                    rust-filetime-0.2.29
                                    rust-find-msvc-tools-0.1.9
                                    rust-finl-unicode-1.4.0
                                    rust-fixedbitset-0.4.2
                                    rust-fixedbitset-0.5.7
                                    rust-flate2-1.1.9
                                    rust-fluent-uri-0.1.4
                                    rust-fnv-1.0.7
                                    rust-foldhash-0.1.5
                                    rust-foldhash-0.2.0
                                    rust-foreign-types-0.5.0
                                    rust-foreign-types-macros-0.2.4
                                    rust-foreign-types-shared-0.3.1
                                    rust-funty-2.0.0
                                    rust-futures-channel-0.3.33
                                    rust-futures-core-0.3.33
                                    rust-futures-executor-0.3.33
                                    rust-futures-io-0.3.33
                                    rust-futures-macro-0.3.33
                                    rust-futures-task-0.3.33
                                    rust-futures-util-0.3.33
                                    rust-gdk-0.18.2
                                    rust-gdk-pixbuf-0.18.5
                                    rust-gdk-pixbuf-sys-0.18.0
                                    rust-gdk-sys-0.18.2
                                    rust-generic-array-0.14.7
                                    rust-gethostname-1.1.0
                                    rust-getrandom-0.2.17
                                    rust-getrandom-0.3.4
                                    rust-getrandom-0.4.3
                                    rust-gio-0.18.4
                                    rust-gio-sys-0.18.1
                                    rust-gl-generator-0.14.0
                                    rust-glib-0.18.5
                                    rust-glib-macros-0.18.5
                                    rust-glib-sys-0.18.1
                                    rust-glob-0.3.4
                                    rust-globset-0.4.19
                                    rust-globwalk-0.8.1
                                    rust-glow-0.16.0
                                    rust-glutin-wgl-sys-0.6.1
                                    rust-gobject-sys-0.18.0
                                    rust-gpu-allocator-0.28.0
                                    rust-gpu-descriptor-0.3.2
                                    rust-gpu-descriptor-types-0.2.0
                                    rust-gtk-0.18.2
                                    rust-gtk-sys-0.18.2
                                    rust-gtk3-macros-0.18.2
                                    rust-half-2.7.1
                                    rust-hashbrown-0.15.5
                                    rust-hashbrown-0.16.1
                                    rust-hashbrown-0.17.1
                                    rust-heck-0.4.1
                                    rust-heck-0.5.0
                                    rust-hermit-abi-0.5.2
                                    rust-hex-0.4.3
                                    rust-hexf-parse-0.2.1
                                    rust-home-0.5.12
                                    rust-http-1.5.0
                                    rust-httparse-1.10.1
                                    rust-httpdate-1.0.3
                                    rust-hybrid-array-0.4.13
                                    rust-iana-time-zone-0.1.65
                                    rust-iana-time-zone-haiku-0.1.2
                                    rust-ident-case-1.0.1
                                    rust-ignore-0.4.31
                                    rust-include-dir-0.7.4
                                    rust-include-dir-macros-0.7.4
                                    rust-indexmap-2.14.0
                                    rust-indoc-2.0.7
                                    rust-inotify-0.11.4
                                    rust-inotify-sys-0.1.8
                                    rust-insta-1.48.0
                                    rust-instability-0.3.12
                                    rust-interprocess-2.4.2
                                    rust-is-docker-0.2.0
                                    rust-is-wsl-0.4.0
                                    rust-itertools-0.11.0
                                    rust-itertools-0.13.0
                                    rust-itertools-0.14.0
                                    rust-itoa-1.0.18
                                    rust-jni-0.21.1
                                    rust-jni-0.22.4
                                    rust-jni-macros-0.22.4
                                    rust-jni-sys-0.3.1
                                    rust-jni-sys-0.4.1
                                    rust-jni-sys-macros-0.4.1
                                    rust-jobserver-0.1.35
                                    rust-js-sys-0.3.103
                                    rust-jsonc-parser-0.32.4
                                    rust-kasuari-0.4.12
                                    rust-keyboard-types-0.7.0
                                    rust-khronos-egl-6.0.0
                                    rust-khronos-api-3.1.0
                                    rust-kqueue-1.2.0
                                    rust-kqueue-sys-1.1.2
                                    rust-lab-0.11.0
                                    rust-lazy-static-1.5.0
                                    rust-libc-0.2.189
                                    rust-libloading-0.8.9
                                    rust-libloading-0.9.0
                                    rust-libm-0.2.16
                                    rust-libredox-0.1.18
                                    rust-libxdo-0.6.0
                                    rust-libxdo-sys-0.11.0
                                    rust-line-clipping-0.3.7
                                    rust-linked-hash-map-0.5.6
                                    rust-linux-raw-sys-0.4.15
                                    rust-linux-raw-sys-0.12.1
                                    rust-litrs-1.0.0
                                    rust-lock-api-0.4.14
                                    rust-log-0.4.33
                                    rust-lru-0.18.1
                                    rust-lsp-types-0.97.0
                                    rust-lyon-geom-1.0.19
                                    rust-lzma-sys-0.1.20
                                    rust-mac-address-1.1.8
                                    rust-malloc-buf-0.0.6
                                    rust-matchers-0.2.0
                                    rust-memchr-2.8.3
                                    rust-memmap2-0.9.11
                                    rust-memmem-0.1.1
                                    rust-memoffset-0.9.1
                                    rust-metal-0.33.0
                                    rust-minimal-lexical-0.2.1
                                    rust-miniz-oxide-0.8.9
                                    rust-miniz-oxide-0.9.1
                                    rust-mio-1.2.2
                                    rust-miow-0.6.1
                                    rust-muda-0.17.2
                                    rust-naga-28.0.0
                                    rust-ndk-0.9.0
                                    rust-ndk-context-0.1.1
                                    rust-ndk-sys-0.6.0+11769913
                                    rust-nix-0.28.0
                                    rust-nix-0.29.0
                                    rust-nix-0.31.3
                                    rust-nom-7.1.3
                                    rust-nom-8.0.0
                                    rust-nonmax-0.5.5
                                    rust-normpath-1.5.1
                                    rust-notify-8.2.0
                                    rust-notify-types-2.1.0
                                    rust-nu-ansi-term-0.50.3
                                    rust-num-bigint-0.4.8
                                    rust-num-conv-0.2.2
                                    rust-num-derive-0.4.2
                                    rust-num-integer-0.1.46
                                    rust-num-traits-0.2.19
                                    rust-num-enum-0.7.6
                                    rust-num-enum-derive-0.7.6
                                    rust-num-threads-0.1.7
                                    rust-objc-0.2.7
                                    rust-objc-sys-0.3.5
                                    rust-objc2-0.5.2
                                    rust-objc2-0.6.4
                                    rust-objc2-app-kit-0.2.2
                                    rust-objc2-app-kit-0.3.2
                                    rust-objc2-cloud-kit-0.2.2
                                    rust-objc2-contacts-0.2.2
                                    rust-objc2-core-data-0.2.2
                                    rust-objc2-core-foundation-0.3.2
                                    rust-objc2-core-graphics-0.3.2
                                    rust-objc2-core-image-0.2.2
                                    rust-objc2-core-location-0.2.2
                                    rust-objc2-encode-4.1.0
                                    rust-objc2-foundation-0.2.2
                                    rust-objc2-foundation-0.3.2
                                    rust-objc2-io-surface-0.3.2
                                    rust-objc2-link-presentation-0.2.2
                                    rust-objc2-metal-0.2.2
                                    rust-objc2-quartz-core-0.2.2
                                    rust-objc2-symbols-0.2.2
                                    rust-objc2-ui-kit-0.2.2
                                    rust-objc2-uniform-type-identifiers-0.2.2
                                    rust-objc2-user-notifications-0.2.2
                                    rust-once-cell-1.21.4
                                    rust-onig-6.5.3
                                    rust-onig-sys-69.9.3
                                    rust-open-5.4.0
                                    rust-openssl-probe-0.2.1
                                    rust-option-ext-0.2.0
                                    rust-orbclient-0.3.55
                                    rust-ordered-float-4.6.0
                                    rust-ordered-float-5.3.0
                                    rust-os-pipe-1.2.3
                                    rust-owned-ttf-parser-0.25.1
                                    rust-owo-colors-4.3.0
                                    rust-oxc-browserslist-3.0.12
                                    rust-oxc-miette-2.7.1
                                    rust-oxc-miette-derive-2.7.1
                                    rust-oxc-allocator-0.128.0
                                    rust-oxc-ast-0.128.0
                                    rust-oxc-ast-macros-0.128.0
                                    rust-oxc-ast-visit-0.128.0
                                    rust-oxc-codegen-0.128.0
                                    rust-oxc-compat-0.128.0
                                    rust-oxc-data-structures-0.128.0
                                    rust-oxc-diagnostics-0.128.0
                                    rust-oxc-ecmascript-0.128.0
                                    rust-oxc-estree-0.128.0
                                    rust-oxc-index-4.1.0
                                    rust-oxc-isolated-declarations-0.128.0
                                    rust-oxc-parser-0.128.0
                                    rust-oxc-regular-expression-0.128.0
                                    rust-oxc-semantic-0.128.0
                                    rust-oxc-span-0.128.0
                                    rust-oxc-str-0.128.0
                                    rust-oxc-syntax-0.128.0
                                    rust-oxc-transformer-0.128.0
                                    rust-oxc-traverse-0.128.0
                                    rust-palette-0.7.6
                                    rust-palette-derive-0.7.6
                                    rust-pango-0.18.3
                                    rust-pango-sys-0.18.0
                                    rust-parking-lot-0.12.5
                                    rust-parking-lot-core-0.9.12
                                    rust-paste-1.0.15
                                    rust-percent-encoding-2.3.2
                                    rust-pest-2.8.8
                                    rust-pest-derive-2.8.8
                                    rust-pest-generator-2.8.8
                                    rust-pest-meta-2.8.8
                                    rust-petgraph-0.8.3
                                    rust-phf-0.11.3
                                    rust-phf-0.13.1
                                    rust-phf-codegen-0.11.3
                                    rust-phf-generator-0.11.3
                                    rust-phf-generator-0.13.1
                                    rust-phf-macros-0.11.3
                                    rust-phf-macros-0.13.1
                                    rust-phf-shared-0.11.3
                                    rust-phf-shared-0.13.1
                                    rust-pin-project-1.1.13
                                    rust-pin-project-internal-1.1.13
                                    rust-pin-project-lite-0.2.17
                                    rust-piper-0.2.5
                                    rust-pkg-config-0.3.33
                                    rust-plain-0.2.3
                                    rust-png-0.17.16
                                    rust-png-0.18.1
                                    rust-polling-3.11.0
                                    rust-portable-atomic-1.14.0
                                    rust-portable-atomic-util-0.2.7
                                    rust-portable-pty-0.9.0
                                    rust-postcard-1.1.3
                                    rust-powerfmt-0.2.0
                                    rust-ppv-lite86-0.2.21
                                    rust-presser-0.3.1
                                    rust-prettyplease-0.2.37
                                    rust-proc-macro-crate-1.3.1
                                    rust-proc-macro-crate-2.0.0
                                    rust-proc-macro-crate-3.5.0
                                    rust-proc-macro-error-1.0.4
                                    rust-proc-macro-error-attr-1.0.4
                                    rust-proc-macro2-1.0.107
                                    rust-profiling-1.0.18
                                    rust-proptest-1.11.0
                                    rust-pulldown-cmark-0.13.4
                                    rust-quick-error-1.2.3
                                    rust-quick-xml-0.41.0
                                    rust-quote-1.0.47
                                    rust-r-efi-5.3.0
                                    rust-r-efi-6.0.0
                                    rust-radium-0.7.0
                                    rust-rand-0.8.7
                                    rust-rand-0.9.5
                                    rust-rand-chacha-0.9.0
                                    rust-rand-core-0.6.4
                                    rust-rand-core-0.9.5
                                    rust-rand-xorshift-0.4.0
                                    rust-range-alloc-0.1.5
                                    rust-raqote-0.8.5
                                    rust-ratatui-0.30.2
                                    rust-ratatui-core-0.1.2
                                    rust-ratatui-crossterm-0.1.2
                                    rust-ratatui-termina-0.1.0
                                    rust-ratatui-termwiz-0.1.2
                                    rust-ratatui-wgpu-0.5.0
                                    rust-ratatui-widgets-0.3.2
                                    rust-raw-window-handle-0.6.2
                                    rust-recvmsg-1.0.0
                                    rust-redox-syscall-0.4.1
                                    rust-redox-syscall-0.5.18
                                    rust-redox-syscall-0.9.1
                                    rust-redox-users-0.5.2
                                    rust-ref-cast-1.0.26
                                    rust-ref-cast-impl-1.0.26
                                    rust-regex-1.13.1
                                    rust-regex-automata-0.4.16
                                    rust-regex-syntax-0.8.11
                                    rust-relative-path-2.0.1
                                    rust-renderdoc-sys-1.1.0
                                    rust-ring-0.17.14
                                    rust-ropey-1.6.1
                                    rust-rquickjs-0.11.0
                                    rust-rquickjs-core-0.11.0
                                    rust-rquickjs-macro-0.11.0
                                    rust-rquickjs-serde-0.5.0
                                    rust-rquickjs-sys-0.11.0
                                    rust-rust-i18n-3.1.5
                                    rust-rust-i18n-macro-3.1.5
                                    rust-rust-i18n-support-3.1.5
                                    rust-rustc-hash-1.1.0
                                    rust-rustc-hash-2.1.3
                                    rust-rustc-version-0.4.1
                                    rust-rustix-0.38.44
                                    rust-rustix-1.1.4
                                    rust-rustix-openpty-0.2.0
                                    rust-rustls-0.23.43
                                    rust-rustls-native-certs-0.8.4
                                    rust-rustls-pki-types-1.15.1
                                    rust-rustls-platform-verifier-0.6.2
                                    rust-rustls-platform-verifier-android-0.1.1
                                    rust-rustls-webpki-0.103.13
                                    rust-rustversion-1.0.23
                                    rust-rusty-fork-0.3.1
                                    rust-rustybuzz-0.20.1
                                    rust-ryu-1.0.23
                                    rust-same-file-1.0.6
                                    rust-schannel-0.1.29
                                    rust-schemars-1.2.2
                                    rust-schemars-derive-1.2.2
                                    rust-scoped-tls-1.0.1
                                    rust-scopeguard-1.2.0
                                    rust-sctk-adwaita-0.10.1
                                    rust-security-framework-3.7.0
                                    rust-security-framework-sys-2.17.0
                                    rust-self-cell-1.3.0
                                    rust-semver-1.0.28
                                    rust-seq-macro-0.3.6
                                    rust-serde-1.0.229
                                    rust-serde-core-1.0.229
                                    rust-serde-derive-1.0.229
                                    rust-serde-derive-internals-0.30.0
                                    rust-serde-json-1.0.151
                                    rust-serde-repr-0.1.21
                                    rust-serde-spanned-0.6.9
                                    rust-serde-spanned-1.1.1
                                    rust-serde-yaml-0.9.34+deprecated
                                    rust-serial2-0.2.37
                                    rust-sha1-0.11.0
                                    rust-sha2-0.10.9
                                    rust-sharded-slab-0.1.7
                                    rust-shared-library-0.1.9
                                    rust-shell-words-1.1.1
                                    rust-shlex-1.3.0
                                    rust-shlex-2.0.1
                                    rust-signal-hook-0.3.18
                                    rust-signal-hook-mio-0.2.5
                                    rust-signal-hook-registry-1.4.8
                                    rust-simd-adler32-0.3.10
                                    rust-simd-cesu8-1.2.0
                                    rust-simdutf8-0.1.5
                                    rust-similar-2.7.0
                                    rust-siphasher-1.0.3
                                    rust-slab-0.4.12
                                    rust-slotmap-1.1.1
                                    rust-smallvec-1.15.2
                                    rust-smawk-0.3.3
                                    rust-smithay-client-toolkit-0.19.2
                                    rust-smol-str-0.2.2
                                    rust-socket2-0.6.5
                                    rust-spirv-0.3.0+sdk-1.3.268.0
                                    rust-stable-deref-trait-1.2.1
                                    rust-static-assertions-1.1.0
                                    rust-str-indices-0.4.4
                                    rust-streaming-iterator-0.1.9
                                    rust-strict-num-0.1.1
                                    rust-strsim-0.11.1
                                    rust-strum-0.28.0
                                    rust-strum-macros-0.28.0
                                    rust-subtle-2.6.1
                                    rust-sw-composite-0.7.16
                                    rust-syn-1.0.109
                                    rust-syn-2.0.119
                                    rust-syn-3.0.3
                                    rust-syntect-5.3.0
                                    rust-system-deps-6.2.2
                                    rust-tap-1.0.1
                                    rust-tar-0.4.46
                                    rust-target-lexicon-0.12.16
                                    rust-tempfile-3.27.0
                                    rust-termcolor-1.4.1
                                    rust-termina-0.3.3
                                    rust-terminfo-0.9.0
                                    rust-termios-0.3.3
                                    rust-termwiz-0.23.3
                                    rust-textwrap-0.16.2
                                    rust-thiserror-1.0.69
                                    rust-thiserror-2.0.19
                                    rust-thiserror-impl-1.0.69
                                    rust-thiserror-impl-2.0.19
                                    rust-thread-local-1.1.10
                                    rust-time-0.3.54
                                    rust-time-core-0.1.9
                                    rust-tiny-keccak-2.0.2
                                    rust-tiny-skia-0.11.4
                                    rust-tiny-skia-path-0.11.4
                                    rust-tiny-http-0.12.0
                                    rust-tokio-1.53.1
                                    rust-tokio-macros-2.7.2
                                    rust-toml-0.8.23
                                    rust-toml-1.1.4+spec-1.1.0
                                    rust-toml-datetime-0.6.11
                                    rust-toml-datetime-1.1.1+spec-1.1.0
                                    rust-toml-edit-0.19.15
                                    rust-toml-edit-0.20.7
                                    rust-toml-edit-0.22.27
                                    rust-toml-edit-0.25.13+spec-1.1.0
                                    rust-toml-parser-1.1.3+spec-1.1.0
                                    rust-toml-write-0.1.2
                                    rust-toml-writer-1.1.2+spec-1.1.0
                                    rust-tracing-0.1.44
                                    rust-tracing-attributes-0.1.31
                                    rust-tracing-core-0.1.36
                                    rust-tracing-log-0.2.0
                                    rust-tracing-subscriber-0.3.23
                                    rust-trash-5.2.6
                                    rust-tree-sitter-0.26.11
                                    rust-tree-sitter-go-0.25.0
                                    rust-tree-sitter-highlight-0.26.11
                                    rust-tree-sitter-javascript-0.25.0
                                    rust-tree-sitter-json-0.24.8
                                    rust-tree-sitter-language-0.1.7
                                    rust-tree-sitter-templ-2.2.0
                                    rust-tree-sitter-typescript-0.23.2
                                    rust-tree-magic-mini-3.2.2
                                    rust-triomphe-0.1.16
                                    rust-ts-rs-12.0.1
                                    rust-ts-rs-macros-12.0.1
                                    rust-ttf-parser-0.25.1
                                    rust-typed-arena-2.0.2
                                    rust-typenum-1.20.1
                                    rust-ucd-trie-0.1.7
                                    rust-unarray-0.1.4
                                    rust-unicase-2.9.0
                                    rust-unicode-bidi-0.3.18
                                    rust-unicode-bidi-mirroring-0.4.0
                                    rust-unicode-ccc-0.4.0
                                    rust-unicode-id-start-1.4.0
                                    rust-unicode-ident-1.0.24
                                    rust-unicode-linebreak-0.1.5
                                    rust-unicode-properties-0.1.4
                                    rust-unicode-script-0.5.8
                                    rust-unicode-segmentation-1.13.3
                                    rust-unicode-truncate-2.0.1
                                    rust-unicode-width-0.2.2
                                    rust-unsafe-libyaml-0.2.11
                                    rust-untrusted-0.9.0
                                    rust-ureq-3.3.0
                                    rust-ureq-proto-0.6.0
                                    rust-urlencoding-2.1.3
                                    rust-utf8-zero-0.8.1
                                    rust-utf8parse-0.2.2
                                    rust-uuid-1.24.0
                                    rust-valuable-0.1.1
                                    rust-version-compare-0.2.1
                                    rust-version-check-0.9.5
                                    rust-vt100-0.16.2
                                    rust-vte-0.15.0
                                    rust-vtparse-0.6.2
                                    rust-wait-timeout-0.2.1
                                    rust-walkdir-2.5.0
                                    rust-wasi-0.11.1+wasi-snapshot-preview1
                                    rust-wasip2-1.0.4+wasi-0.2.12
                                    rust-wasm-bindgen-0.2.126
                                    rust-wasm-bindgen-futures-0.4.76
                                    rust-wasm-bindgen-macro-0.2.126
                                    rust-wasm-bindgen-macro-support-0.2.126
                                    rust-wasm-bindgen-shared-0.2.126
                                    rust-wayland-backend-0.3.16
                                    rust-wayland-client-0.31.15
                                    rust-wayland-csd-frame-0.3.0
                                    rust-wayland-cursor-0.31.14
                                    rust-wayland-protocols-0.32.13
                                    rust-wayland-protocols-plasma-0.3.12
                                    rust-wayland-protocols-wlr-0.3.12
                                    rust-wayland-scanner-0.31.11
                                    rust-wayland-sys-0.31.11
                                    rust-web-sys-0.3.103
                                    rust-web-time-1.1.0
                                    rust-webpki-root-certs-1.0.9
                                    rust-webpki-roots-1.0.9
                                    rust-wezterm-bidi-0.2.3
                                    rust-wezterm-blob-leases-0.1.1
                                    rust-wezterm-color-types-0.3.0
                                    rust-wezterm-dynamic-0.2.1
                                    rust-wezterm-dynamic-derive-0.1.1
                                    rust-wezterm-input-types-0.1.0
                                    rust-wgpu-28.0.0
                                    rust-wgpu-core-28.0.1
                                    rust-wgpu-core-deps-apple-28.0.0
                                    rust-wgpu-core-deps-emscripten-28.0.0
                                    rust-wgpu-core-deps-windows-linux-android-28.0.0
                                    rust-wgpu-hal-28.0.1
                                    rust-wgpu-types-28.0.0
                                    rust-which-6.0.3
                                    rust-widestring-1.2.1
                                    rust-winapi-0.3.9
                                    rust-winapi-i686-pc-windows-gnu-0.4.0
                                    rust-winapi-util-0.1.11
                                    rust-winapi-x86-64-pc-windows-gnu-0.4.0
                                    rust-windows-0.56.0
                                    rust-windows-0.62.2
                                    rust-windows-collections-0.3.2
                                    rust-windows-core-0.56.0
                                    rust-windows-core-0.62.2
                                    rust-windows-future-0.3.2
                                    rust-windows-implement-0.56.0
                                    rust-windows-implement-0.60.2
                                    rust-windows-interface-0.56.0
                                    rust-windows-interface-0.59.3
                                    rust-windows-link-0.2.1
                                    rust-windows-numerics-0.3.1
                                    rust-windows-result-0.1.2
                                    rust-windows-result-0.4.1
                                    rust-windows-strings-0.5.1
                                    rust-windows-sys-0.45.0
                                    rust-windows-sys-0.52.0
                                    rust-windows-sys-0.59.0
                                    rust-windows-sys-0.60.2
                                    rust-windows-sys-0.61.2
                                    rust-windows-targets-0.42.2
                                    rust-windows-targets-0.52.6
                                    rust-windows-targets-0.53.5
                                    rust-windows-threading-0.2.1
                                    rust-windows-aarch64-gnullvm-0.42.2
                                    rust-windows-aarch64-gnullvm-0.52.6
                                    rust-windows-aarch64-gnullvm-0.53.1
                                    rust-windows-aarch64-msvc-0.42.2
                                    rust-windows-aarch64-msvc-0.52.6
                                    rust-windows-aarch64-msvc-0.53.1
                                    rust-windows-i686-gnu-0.42.2
                                    rust-windows-i686-gnu-0.52.6
                                    rust-windows-i686-gnu-0.53.1
                                    rust-windows-i686-gnullvm-0.52.6
                                    rust-windows-i686-gnullvm-0.53.1
                                    rust-windows-i686-msvc-0.42.2
                                    rust-windows-i686-msvc-0.52.6
                                    rust-windows-i686-msvc-0.53.1
                                    rust-windows-x86-64-gnu-0.42.2
                                    rust-windows-x86-64-gnu-0.52.6
                                    rust-windows-x86-64-gnu-0.53.1
                                    rust-windows-x86-64-gnullvm-0.42.2
                                    rust-windows-x86-64-gnullvm-0.52.6
                                    rust-windows-x86-64-gnullvm-0.53.1
                                    rust-windows-x86-64-msvc-0.42.2
                                    rust-windows-x86-64-msvc-0.52.6
                                    rust-windows-x86-64-msvc-0.53.1
                                    rust-winit-0.30.13
                                    rust-winnow-0.5.40
                                    rust-winnow-0.7.15
                                    rust-winnow-1.0.4
                                    rust-winreg-0.10.1
                                    rust-winresource-0.1.31
                                    rust-winsafe-0.0.19
                                    rust-wit-bindgen-0.57.1
                                    rust-wl-clipboard-rs-0.9.3
                                    rust-wyz-0.5.1
                                    rust-x11-2.21.0
                                    rust-x11-dl-2.21.0
                                    rust-x11rb-0.13.2
                                    rust-x11rb-protocol-0.13.2
                                    rust-xattr-1.6.1
                                    rust-xcursor-0.3.10
                                    rust-xkbcommon-dl-0.4.2
                                    rust-xkeysym-0.2.1
                                    rust-xml-rs-0.8.28
                                    rust-xz2-0.1.7
                                    rust-yaml-rust-0.4.5
                                    rust-zerocopy-0.8.55
                                    rust-zerocopy-derive-0.8.55
                                    rust-zeroize-1.9.0
                                    rust-zip-2.4.2
                                    rust-zmij-1.0.23
                                    rust-zopfli-0.8.3)))
