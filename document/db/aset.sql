PGDMP         6                w            aset    11.5    11.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16393    aset    DATABASE     �   CREATE DATABASE aset WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE aset;
             postgres    false            �            1259    16397    detil_aset_lainnya    TABLE     �  CREATE TABLE public.detil_aset_lainnya (
    id integer NOT NULL,
    pidinventaris integer,
    buku_judul character varying(255),
    buku_spesifikasi character varying(255),
    seni_asal character varying(255),
    seni_pencipta character varying(255),
    seni_bahan character varying(255),
    ternak_jenis character varying(255),
    ternak_ukuran character varying(255),
    keterangan character varying(255),
    dokumen character varying(255),
    foto character varying(500)
);
 &   DROP TABLE public.detil_aset_lainnya;
       public         postgres    false            �            1259    16395    detil_aset_lainnya_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detil_aset_lainnya_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.detil_aset_lainnya_id_seq;
       public       postgres    false    197            �           0    0    detil_aset_lainnya_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.detil_aset_lainnya_id_seq OWNED BY public.detil_aset_lainnya.id;
            public       postgres    false    196            �            1259    16408    detil_bangunan    TABLE     �  CREATE TABLE public.detil_bangunan (
    id integer NOT NULL,
    pidinventaris integer,
    konstruksi character varying(255),
    bertingkat character varying(255),
    beton character varying(255),
    luasbangunan integer,
    alamat character varying(255),
    idkota integer,
    idkecamatan integer,
    idkelurahan integer,
    koordinatlokasi character varying(255),
    koordinattanah character varying(255),
    tgldokumen date,
    nodokumen character varying(255),
    luastanah integer,
    statustanah character varying(255),
    kodetanah character varying(255),
    dokumen character varying(255),
    keterangan character varying(255),
    foto character varying(255)
);
 "   DROP TABLE public.detil_bangunan;
       public         postgres    false            �            1259    16406    detil_bangunan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detil_bangunan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.detil_bangunan_id_seq;
       public       postgres    false    199            �           0    0    detil_bangunan_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.detil_bangunan_id_seq OWNED BY public.detil_bangunan.id;
            public       postgres    false    198            �            1259    16419    detil_jalan    TABLE     �  CREATE TABLE public.detil_jalan (
    id integer NOT NULL,
    pidinventaris integer,
    konstruksi character varying(255),
    panjang integer,
    lebar integer,
    luas integer,
    alamat character varying(255),
    idkota integer,
    idkecamatan integer,
    idkelurahan integer,
    koordinatlokasi character varying(255),
    koordinattanah character varying,
    tgldokumen date,
    nodokumen character varying(255),
    luastanah character varying(255),
    statustanah character varying(255),
    kodetanah character varying(255),
    keterangan character varying(255),
    dokumen character varying(255),
    foto character varying(500)
);
    DROP TABLE public.detil_jalan;
       public         postgres    false            �            1259    16417    detil_jalan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detil_jalan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.detil_jalan_id_seq;
       public       postgres    false    201            �           0    0    detil_jalan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.detil_jalan_id_seq OWNED BY public.detil_jalan.id;
            public       postgres    false    200            �            1259    16430    detil_konstruksi    TABLE     �  CREATE TABLE public.detil_konstruksi (
    id integer NOT NULL,
    pidinventaris integer,
    konstruksi character varying(255),
    bertingkat character varying(255),
    beton character varying(255),
    luasbangunan integer,
    alamat character varying(255),
    idkota integer,
    idkecamatan integer,
    idkelurahan integer,
    koordinatlokasi character varying(255),
    koordinattanah character varying(255),
    tglmulai date,
    tgldokumen date,
    nodokumen character varying(255),
    luastanah integer,
    statustanah character varying(255),
    kodetanah character varying(255),
    keterangan character varying(255),
    dokumen character varying(255),
    foto character varying(500)
);
 $   DROP TABLE public.detil_konstruksi;
       public         postgres    false            �            1259    16428    detil_konstruksi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detil_konstruksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.detil_konstruksi_id_seq;
       public       postgres    false    203            �           0    0    detil_konstruksi_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.detil_konstruksi_id_seq OWNED BY public.detil_konstruksi.id;
            public       postgres    false    202            �            1259    16441    detil_mesin    TABLE     �  CREATE TABLE public.detil_mesin (
    id integer NOT NULL,
    pidinventaris integer,
    merk integer,
    ukuran character varying(255),
    bahan character varying(255),
    nopabrik character varying(255),
    norangka character varying(255),
    nomesin character varying(255),
    nopol character varying(255),
    bpkb character varying(255),
    keterangan character varying(255),
    dokumen character varying(255),
    foto character varying(500)
);
    DROP TABLE public.detil_mesin;
       public         postgres    false            �            1259    16439    detil_mesin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detil_mesin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.detil_mesin_id_seq;
       public       postgres    false    205                        0    0    detil_mesin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.detil_mesin_id_seq OWNED BY public.detil_mesin.id;
            public       postgres    false    204            �            1259    16450    detil_tanah    TABLE     P  CREATE TABLE public.detil_tanah (
    id integer NOT NULL,
    pidinventaris integer,
    luas integer,
    alamat character varying(255),
    idkota integer,
    idkecamatan integer,
    idkelurahan integer,
    koordinatlokasi character varying(255),
    koordinattanah character varying(255),
    hak character varying(255),
    status_sertifikat character varying(255),
    tgl_sertifikat date,
    nama_sertifikat character varying(255),
    penggunaan character varying(255),
    keterangan character varying(500),
    dokumen character varying(255),
    foto character varying(500)
);
    DROP TABLE public.detil_tanah;
       public         postgres    false            �            1259    16448    detil_tanah_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detil_tanah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.detil_tanah_id_seq;
       public       postgres    false    207                       0    0    detil_tanah_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.detil_tanah_id_seq OWNED BY public.detil_tanah.id;
            public       postgres    false    206            �            1259    16461 
   inventaris    TABLE     �  CREATE TABLE public.inventaris (
    id integer NOT NULL,
    noreg character varying(255),
    pidbarang integer,
    pidopd character varying(255),
    pidlokasi integer,
    tgl_perolehan date,
    tgl_sensus date,
    volume integer,
    pembagi integer,
    satuan character varying(255),
    harga_satuan integer,
    perolehan character varying(50),
    kondisi character varying(50),
    lokasi_detil character varying(255),
    umur_ekonomis integer,
    keterangan character varying(500)
);
    DROP TABLE public.inventaris;
       public         postgres    false            �            1259    16459    inventaris_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventaris_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.inventaris_id_seq;
       public       postgres    false    209                       0    0    inventaris_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.inventaris_id_seq OWNED BY public.inventaris.id;
            public       postgres    false    208            �            1259    16473    m_alamat    TABLE     �   CREATE TABLE public.m_alamat (
    id integer NOT NULL,
    pid integer,
    nama character varying(255),
    jenis character varying(255),
    kodepos character varying(255)
);
    DROP TABLE public.m_alamat;
       public         postgres    false            �            1259    16471    m_alamat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_alamat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.m_alamat_id_seq;
       public       postgres    false    211                       0    0    m_alamat_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.m_alamat_id_seq OWNED BY public.m_alamat.id;
            public       postgres    false    210            �            1259    16484    m_barang    TABLE     �  CREATE TABLE public.m_barang (
    id integer NOT NULL,
    pid integer,
    kodetampil character varying(255),
    kode_rek character varying(255),
    nama_rek_aset character varying(255),
    jenis_barang integer,
    umur_ekononomis integer,
    aset character varying(255),
    obyek character varying(255),
    rincianobyek character varying(255),
    subrincianobyek character varying(255)
);
    DROP TABLE public.m_barang;
       public         postgres    false            �            1259    16482    m_barang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.m_barang_id_seq;
       public       postgres    false    213                       0    0    m_barang_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.m_barang_id_seq OWNED BY public.m_barang.id;
            public       postgres    false    212            �            1259    16495    m_jenis_barang    TABLE     t   CREATE TABLE public.m_jenis_barang (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer
);
 "   DROP TABLE public.m_jenis_barang;
       public         postgres    false            �            1259    16493    m_jenis_barang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_jenis_barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.m_jenis_barang_id_seq;
       public       postgres    false    215                       0    0    m_jenis_barang_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.m_jenis_barang_id_seq OWNED BY public.m_jenis_barang.id;
            public       postgres    false    214            �            1259    16503    m_jenis_opd    TABLE     q   CREATE TABLE public.m_jenis_opd (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer
);
    DROP TABLE public.m_jenis_opd;
       public         postgres    false            �            1259    16501    m_jenis_opd_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_jenis_opd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.m_jenis_opd_id_seq;
       public       postgres    false    217                       0    0    m_jenis_opd_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.m_jenis_opd_id_seq OWNED BY public.m_jenis_opd.id;
            public       postgres    false    216            �            1259    16511 	   m_kondisi    TABLE     o   CREATE TABLE public.m_kondisi (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer
);
    DROP TABLE public.m_kondisi;
       public         postgres    false            �            1259    16509    m_kondisi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_kondisi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.m_kondisi_id_seq;
       public       postgres    false    219                       0    0    m_kondisi_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.m_kondisi_id_seq OWNED BY public.m_kondisi.id;
            public       postgres    false    218            �            1259    16519    m_lokasi    TABLE        CREATE TABLE public.m_lokasi (
    id integer NOT NULL,
    pid integer,
    nama character varying(255),
    aktif integer
);
    DROP TABLE public.m_lokasi;
       public         postgres    false            �            1259    16517    m_lokasi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_lokasi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.m_lokasi_id_seq;
       public       postgres    false    221                       0    0    m_lokasi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.m_lokasi_id_seq OWNED BY public.m_lokasi.id;
            public       postgres    false    220            �            1259    16527    m_merk_barang    TABLE     s   CREATE TABLE public.m_merk_barang (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer
);
 !   DROP TABLE public.m_merk_barang;
       public         postgres    false            �            1259    16525    m_merk_barang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_merk_barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.m_merk_barang_id_seq;
       public       postgres    false    223            	           0    0    m_merk_barang_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.m_merk_barang_id_seq OWNED BY public.m_merk_barang.id;
            public       postgres    false    222            �            1259    16535    m_organisasi    TABLE     �   CREATE TABLE public.m_organisasi (
    id integer NOT NULL,
    pid integer,
    nama character varying(255),
    jenis character varying(255),
    alamat character varying(255),
    aktif integer
);
     DROP TABLE public.m_organisasi;
       public         postgres    false            �            1259    16533    m_organisasi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_organisasi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.m_organisasi_id_seq;
       public       postgres    false    225            
           0    0    m_organisasi_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.m_organisasi_id_seq OWNED BY public.m_organisasi.id;
            public       postgres    false    224            �            1259    16546    m_penggunaan    TABLE     r   CREATE TABLE public.m_penggunaan (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer
);
     DROP TABLE public.m_penggunaan;
       public         postgres    false            �            1259    16544    m_penggunaan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_penggunaan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.m_penggunaan_id_seq;
       public       postgres    false    227                       0    0    m_penggunaan_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.m_penggunaan_id_seq OWNED BY public.m_penggunaan.id;
            public       postgres    false    226            �            1259    16554    m_perolehan    TABLE     q   CREATE TABLE public.m_perolehan (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer
);
    DROP TABLE public.m_perolehan;
       public         postgres    false            �            1259    16552    m_perolehan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_perolehan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.m_perolehan_id_seq;
       public       postgres    false    229                       0    0    m_perolehan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.m_perolehan_id_seq OWNED BY public.m_perolehan.id;
            public       postgres    false    228            �            1259    16562    m_satuan_baran    TABLE     �   CREATE TABLE public.m_satuan_baran (
    id integer NOT NULL,
    nama character varying(255),
    aktif integer,
    bisadibagi integer
);
 "   DROP TABLE public.m_satuan_baran;
       public         postgres    false            �            1259    16560    m_satuan_baran_id_seq    SEQUENCE     �   CREATE SEQUENCE public.m_satuan_baran_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.m_satuan_baran_id_seq;
       public       postgres    false    231                       0    0    m_satuan_baran_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.m_satuan_baran_id_seq OWNED BY public.m_satuan_baran.id;
            public       postgres    false    230            �            1259    24578 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false            �            1259    24576    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    237                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    236            �            1259    24597    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false            �            1259    16570    pemeliharaan    TABLE     Z  CREATE TABLE public.pemeliharaan (
    id integer NOT NULL,
    pidinventaris integer,
    tgl date,
    uraian character varying(255),
    persh character varying(255),
    alamat character varying(255),
    nokontrak character varying(255),
    tglkontrak date,
    biaya integer,
    menambah integer,
    keterangan character varying(255)
);
     DROP TABLE public.pemeliharaan;
       public         postgres    false            �            1259    16568    pemeliharaan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pemeliharaan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pemeliharaan_id_seq;
       public       postgres    false    233                       0    0    pemeliharaan_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pemeliharaan_id_seq OWNED BY public.pemeliharaan.id;
            public       postgres    false    232            �            1259    16581    penghapusan    TABLE     �  CREATE TABLE public.penghapusan (
    id integer NOT NULL,
    pidinventaris integer,
    noreg character varying(255),
    tglhapus date,
    kriteria character varying(255),
    kondisi character varying(255),
    harga_apprisal character varying(255),
    dokumen character varying(255),
    foto character varying(255),
    nosk character varying(255),
    tglsk date,
    keterangan character varying(255)
);
    DROP TABLE public.penghapusan;
       public         postgres    false            �            1259    16579    penghapusan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.penghapusan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.penghapusan_id_seq;
       public       postgres    false    235                       0    0    penghapusan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.penghapusan_id_seq OWNED BY public.penghapusan.id;
            public       postgres    false    234            �            1259    24586    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    24584    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    239                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    238                       2604    16400    detil_aset_lainnya id    DEFAULT     ~   ALTER TABLE ONLY public.detil_aset_lainnya ALTER COLUMN id SET DEFAULT nextval('public.detil_aset_lainnya_id_seq'::regclass);
 D   ALTER TABLE public.detil_aset_lainnya ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197                       2604    16411    detil_bangunan id    DEFAULT     v   ALTER TABLE ONLY public.detil_bangunan ALTER COLUMN id SET DEFAULT nextval('public.detil_bangunan_id_seq'::regclass);
 @   ALTER TABLE public.detil_bangunan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199                       2604    16422    detil_jalan id    DEFAULT     p   ALTER TABLE ONLY public.detil_jalan ALTER COLUMN id SET DEFAULT nextval('public.detil_jalan_id_seq'::regclass);
 =   ALTER TABLE public.detil_jalan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201                       2604    16433    detil_konstruksi id    DEFAULT     z   ALTER TABLE ONLY public.detil_konstruksi ALTER COLUMN id SET DEFAULT nextval('public.detil_konstruksi_id_seq'::regclass);
 B   ALTER TABLE public.detil_konstruksi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203                       2604    16444    detil_mesin id    DEFAULT     p   ALTER TABLE ONLY public.detil_mesin ALTER COLUMN id SET DEFAULT nextval('public.detil_mesin_id_seq'::regclass);
 =   ALTER TABLE public.detil_mesin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205                       2604    16453    detil_tanah id    DEFAULT     p   ALTER TABLE ONLY public.detil_tanah ALTER COLUMN id SET DEFAULT nextval('public.detil_tanah_id_seq'::regclass);
 =   ALTER TABLE public.detil_tanah ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207                       2604    16464    inventaris id    DEFAULT     n   ALTER TABLE ONLY public.inventaris ALTER COLUMN id SET DEFAULT nextval('public.inventaris_id_seq'::regclass);
 <   ALTER TABLE public.inventaris ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209                       2604    16476    m_alamat id    DEFAULT     j   ALTER TABLE ONLY public.m_alamat ALTER COLUMN id SET DEFAULT nextval('public.m_alamat_id_seq'::regclass);
 :   ALTER TABLE public.m_alamat ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211                       2604    16487    m_barang id    DEFAULT     j   ALTER TABLE ONLY public.m_barang ALTER COLUMN id SET DEFAULT nextval('public.m_barang_id_seq'::regclass);
 :   ALTER TABLE public.m_barang ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213                       2604    16498    m_jenis_barang id    DEFAULT     v   ALTER TABLE ONLY public.m_jenis_barang ALTER COLUMN id SET DEFAULT nextval('public.m_jenis_barang_id_seq'::regclass);
 @   ALTER TABLE public.m_jenis_barang ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215                       2604    16506    m_jenis_opd id    DEFAULT     p   ALTER TABLE ONLY public.m_jenis_opd ALTER COLUMN id SET DEFAULT nextval('public.m_jenis_opd_id_seq'::regclass);
 =   ALTER TABLE public.m_jenis_opd ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217                       2604    16514    m_kondisi id    DEFAULT     l   ALTER TABLE ONLY public.m_kondisi ALTER COLUMN id SET DEFAULT nextval('public.m_kondisi_id_seq'::regclass);
 ;   ALTER TABLE public.m_kondisi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219                       2604    16522    m_lokasi id    DEFAULT     j   ALTER TABLE ONLY public.m_lokasi ALTER COLUMN id SET DEFAULT nextval('public.m_lokasi_id_seq'::regclass);
 :   ALTER TABLE public.m_lokasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221                       2604    16530    m_merk_barang id    DEFAULT     t   ALTER TABLE ONLY public.m_merk_barang ALTER COLUMN id SET DEFAULT nextval('public.m_merk_barang_id_seq'::regclass);
 ?   ALTER TABLE public.m_merk_barang ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223                       2604    16538    m_organisasi id    DEFAULT     r   ALTER TABLE ONLY public.m_organisasi ALTER COLUMN id SET DEFAULT nextval('public.m_organisasi_id_seq'::regclass);
 >   ALTER TABLE public.m_organisasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225                       2604    16549    m_penggunaan id    DEFAULT     r   ALTER TABLE ONLY public.m_penggunaan ALTER COLUMN id SET DEFAULT nextval('public.m_penggunaan_id_seq'::regclass);
 >   ALTER TABLE public.m_penggunaan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227                       2604    16557    m_perolehan id    DEFAULT     p   ALTER TABLE ONLY public.m_perolehan ALTER COLUMN id SET DEFAULT nextval('public.m_perolehan_id_seq'::regclass);
 =   ALTER TABLE public.m_perolehan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229                       2604    16565    m_satuan_baran id    DEFAULT     v   ALTER TABLE ONLY public.m_satuan_baran ALTER COLUMN id SET DEFAULT nextval('public.m_satuan_baran_id_seq'::regclass);
 @   ALTER TABLE public.m_satuan_baran ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            !           2604    24581    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237                       2604    16573    pemeliharaan id    DEFAULT     r   ALTER TABLE ONLY public.pemeliharaan ALTER COLUMN id SET DEFAULT nextval('public.pemeliharaan_id_seq'::regclass);
 >   ALTER TABLE public.pemeliharaan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233                        2604    16584    penghapusan id    DEFAULT     p   ALTER TABLE ONLY public.penghapusan ALTER COLUMN id SET DEFAULT nextval('public.penghapusan_id_seq'::regclass);
 =   ALTER TABLE public.penghapusan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234    235            "           2604    24589    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            �          0    16397    detil_aset_lainnya 
   TABLE DATA               �   COPY public.detil_aset_lainnya (id, pidinventaris, buku_judul, buku_spesifikasi, seni_asal, seni_pencipta, seni_bahan, ternak_jenis, ternak_ukuran, keterangan, dokumen, foto) FROM stdin;
    public       postgres    false    197   y�       �          0    16408    detil_bangunan 
   TABLE DATA                 COPY public.detil_bangunan (id, pidinventaris, konstruksi, bertingkat, beton, luasbangunan, alamat, idkota, idkecamatan, idkelurahan, koordinatlokasi, koordinattanah, tgldokumen, nodokumen, luastanah, statustanah, kodetanah, dokumen, keterangan, foto) FROM stdin;
    public       postgres    false    199   ��       �          0    16419    detil_jalan 
   TABLE DATA               �   COPY public.detil_jalan (id, pidinventaris, konstruksi, panjang, lebar, luas, alamat, idkota, idkecamatan, idkelurahan, koordinatlokasi, koordinattanah, tgldokumen, nodokumen, luastanah, statustanah, kodetanah, keterangan, dokumen, foto) FROM stdin;
    public       postgres    false    201   ��       �          0    16430    detil_konstruksi 
   TABLE DATA                 COPY public.detil_konstruksi (id, pidinventaris, konstruksi, bertingkat, beton, luasbangunan, alamat, idkota, idkecamatan, idkelurahan, koordinatlokasi, koordinattanah, tglmulai, tgldokumen, nodokumen, luastanah, statustanah, kodetanah, keterangan, dokumen, foto) FROM stdin;
    public       postgres    false    203   ؿ       �          0    16441    detil_mesin 
   TABLE DATA               �   COPY public.detil_mesin (id, pidinventaris, merk, ukuran, bahan, nopabrik, norangka, nomesin, nopol, bpkb, keterangan, dokumen, foto) FROM stdin;
    public       postgres    false    205   ��       �          0    16450    detil_tanah 
   TABLE DATA               �   COPY public.detil_tanah (id, pidinventaris, luas, alamat, idkota, idkecamatan, idkelurahan, koordinatlokasi, koordinattanah, hak, status_sertifikat, tgl_sertifikat, nama_sertifikat, penggunaan, keterangan, dokumen, foto) FROM stdin;
    public       postgres    false    207   �       �          0    16461 
   inventaris 
   TABLE DATA               �   COPY public.inventaris (id, noreg, pidbarang, pidopd, pidlokasi, tgl_perolehan, tgl_sensus, volume, pembagi, satuan, harga_satuan, perolehan, kondisi, lokasi_detil, umur_ekonomis, keterangan) FROM stdin;
    public       postgres    false    209   /�       �          0    16473    m_alamat 
   TABLE DATA               A   COPY public.m_alamat (id, pid, nama, jenis, kodepos) FROM stdin;
    public       postgres    false    211   L�       �          0    16484    m_barang 
   TABLE DATA               �   COPY public.m_barang (id, pid, kodetampil, kode_rek, nama_rek_aset, jenis_barang, umur_ekononomis, aset, obyek, rincianobyek, subrincianobyek) FROM stdin;
    public       postgres    false    213   i�       �          0    16495    m_jenis_barang 
   TABLE DATA               9   COPY public.m_jenis_barang (id, nama, aktif) FROM stdin;
    public       postgres    false    215   ��       �          0    16503    m_jenis_opd 
   TABLE DATA               6   COPY public.m_jenis_opd (id, nama, aktif) FROM stdin;
    public       postgres    false    217   ��       �          0    16511 	   m_kondisi 
   TABLE DATA               4   COPY public.m_kondisi (id, nama, aktif) FROM stdin;
    public       postgres    false    219   ��       �          0    16519    m_lokasi 
   TABLE DATA               8   COPY public.m_lokasi (id, pid, nama, aktif) FROM stdin;
    public       postgres    false    221   ��       �          0    16527    m_merk_barang 
   TABLE DATA               8   COPY public.m_merk_barang (id, nama, aktif) FROM stdin;
    public       postgres    false    223   ��       �          0    16535    m_organisasi 
   TABLE DATA               K   COPY public.m_organisasi (id, pid, nama, jenis, alamat, aktif) FROM stdin;
    public       postgres    false    225   �       �          0    16546    m_penggunaan 
   TABLE DATA               7   COPY public.m_penggunaan (id, nama, aktif) FROM stdin;
    public       postgres    false    227   4�       �          0    16554    m_perolehan 
   TABLE DATA               6   COPY public.m_perolehan (id, nama, aktif) FROM stdin;
    public       postgres    false    229   Q�       �          0    16562    m_satuan_baran 
   TABLE DATA               E   COPY public.m_satuan_baran (id, nama, aktif, bisadibagi) FROM stdin;
    public       postgres    false    231   n�       �          0    24578 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    237   ��       �          0    24597    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    240   ��       �          0    16570    pemeliharaan 
   TABLE DATA               �   COPY public.pemeliharaan (id, pidinventaris, tgl, uraian, persh, alamat, nokontrak, tglkontrak, biaya, menambah, keterangan) FROM stdin;
    public       postgres    false    233    �       �          0    16581    penghapusan 
   TABLE DATA               �   COPY public.penghapusan (id, pidinventaris, noreg, tglhapus, kriteria, kondisi, harga_apprisal, dokumen, foto, nosk, tglsk, keterangan) FROM stdin;
    public       postgres    false    235   �       �          0    24586    users 
   TABLE DATA               u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public       postgres    false    239   :�                  0    0    detil_aset_lainnya_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.detil_aset_lainnya_id_seq', 1, true);
            public       postgres    false    196                       0    0    detil_bangunan_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.detil_bangunan_id_seq', 1, false);
            public       postgres    false    198                       0    0    detil_jalan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.detil_jalan_id_seq', 1, false);
            public       postgres    false    200                       0    0    detil_konstruksi_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.detil_konstruksi_id_seq', 1, false);
            public       postgres    false    202                       0    0    detil_mesin_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.detil_mesin_id_seq', 1, false);
            public       postgres    false    204                       0    0    detil_tanah_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.detil_tanah_id_seq', 1, false);
            public       postgres    false    206                       0    0    inventaris_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.inventaris_id_seq', 1, false);
            public       postgres    false    208                       0    0    m_alamat_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.m_alamat_id_seq', 1, false);
            public       postgres    false    210                       0    0    m_barang_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.m_barang_id_seq', 1, false);
            public       postgres    false    212                       0    0    m_jenis_barang_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.m_jenis_barang_id_seq', 1, false);
            public       postgres    false    214                       0    0    m_jenis_opd_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.m_jenis_opd_id_seq', 1, false);
            public       postgres    false    216                       0    0    m_kondisi_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.m_kondisi_id_seq', 1, false);
            public       postgres    false    218                       0    0    m_lokasi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.m_lokasi_id_seq', 1, false);
            public       postgres    false    220                       0    0    m_merk_barang_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.m_merk_barang_id_seq', 1, false);
            public       postgres    false    222                        0    0    m_organisasi_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.m_organisasi_id_seq', 1, false);
            public       postgres    false    224            !           0    0    m_penggunaan_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.m_penggunaan_id_seq', 1, false);
            public       postgres    false    226            "           0    0    m_perolehan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.m_perolehan_id_seq', 1, false);
            public       postgres    false    228            #           0    0    m_satuan_baran_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.m_satuan_baran_id_seq', 1, false);
            public       postgres    false    230            $           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);
            public       postgres    false    236            %           0    0    pemeliharaan_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pemeliharaan_id_seq', 1, false);
            public       postgres    false    232            &           0    0    penghapusan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.penghapusan_id_seq', 1, false);
            public       postgres    false    234            '           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
            public       postgres    false    238            $           2606    16405 *   detil_aset_lainnya detil_aset_lainnya_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.detil_aset_lainnya
    ADD CONSTRAINT detil_aset_lainnya_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.detil_aset_lainnya DROP CONSTRAINT detil_aset_lainnya_pkey;
       public         postgres    false    197            &           2606    16416 "   detil_bangunan detil_bangunan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.detil_bangunan
    ADD CONSTRAINT detil_bangunan_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.detil_bangunan DROP CONSTRAINT detil_bangunan_pkey;
       public         postgres    false    199            (           2606    16427    detil_jalan detil_jalan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.detil_jalan
    ADD CONSTRAINT detil_jalan_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.detil_jalan DROP CONSTRAINT detil_jalan_pkey;
       public         postgres    false    201            *           2606    16438 &   detil_konstruksi detil_konstruksi_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.detil_konstruksi
    ADD CONSTRAINT detil_konstruksi_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.detil_konstruksi DROP CONSTRAINT detil_konstruksi_pkey;
       public         postgres    false    203            ,           2606    16458    detil_tanah detil_tanah_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.detil_tanah
    ADD CONSTRAINT detil_tanah_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.detil_tanah DROP CONSTRAINT detil_tanah_pkey;
       public         postgres    false    207            .           2606    16469    inventaris inventaris_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.inventaris
    ADD CONSTRAINT inventaris_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.inventaris DROP CONSTRAINT inventaris_pkey;
       public         postgres    false    209            0           2606    16481    m_alamat m_alamat_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.m_alamat
    ADD CONSTRAINT m_alamat_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.m_alamat DROP CONSTRAINT m_alamat_pkey;
       public         postgres    false    211            2           2606    16492    m_barang m_barang_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.m_barang
    ADD CONSTRAINT m_barang_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.m_barang DROP CONSTRAINT m_barang_pkey;
       public         postgres    false    213            4           2606    16500 "   m_jenis_barang m_jenis_barang_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.m_jenis_barang
    ADD CONSTRAINT m_jenis_barang_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.m_jenis_barang DROP CONSTRAINT m_jenis_barang_pkey;
       public         postgres    false    215            6           2606    16508    m_jenis_opd m_jenis_opd_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.m_jenis_opd
    ADD CONSTRAINT m_jenis_opd_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.m_jenis_opd DROP CONSTRAINT m_jenis_opd_pkey;
       public         postgres    false    217            8           2606    16516    m_kondisi m_kondisi_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.m_kondisi
    ADD CONSTRAINT m_kondisi_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.m_kondisi DROP CONSTRAINT m_kondisi_pkey;
       public         postgres    false    219            :           2606    16524    m_lokasi m_lokasi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.m_lokasi
    ADD CONSTRAINT m_lokasi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.m_lokasi DROP CONSTRAINT m_lokasi_pkey;
       public         postgres    false    221            <           2606    16532     m_merk_barang m_merk_barang_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.m_merk_barang
    ADD CONSTRAINT m_merk_barang_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.m_merk_barang DROP CONSTRAINT m_merk_barang_pkey;
       public         postgres    false    223            >           2606    16543    m_organisasi m_organisasi_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.m_organisasi
    ADD CONSTRAINT m_organisasi_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.m_organisasi DROP CONSTRAINT m_organisasi_pkey;
       public         postgres    false    225            @           2606    16551    m_penggunaan m_penggunaan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.m_penggunaan
    ADD CONSTRAINT m_penggunaan_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.m_penggunaan DROP CONSTRAINT m_penggunaan_pkey;
       public         postgres    false    227            B           2606    16559    m_perolehan m_perolehan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.m_perolehan
    ADD CONSTRAINT m_perolehan_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.m_perolehan DROP CONSTRAINT m_perolehan_pkey;
       public         postgres    false    229            D           2606    16567 "   m_satuan_baran m_satuan_baran_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.m_satuan_baran
    ADD CONSTRAINT m_satuan_baran_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.m_satuan_baran DROP CONSTRAINT m_satuan_baran_pkey;
       public         postgres    false    231            J           2606    24583    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    237            F           2606    16578    pemeliharaan pemeliharaan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pemeliharaan
    ADD CONSTRAINT pemeliharaan_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pemeliharaan DROP CONSTRAINT pemeliharaan_pkey;
       public         postgres    false    233            H           2606    16589    penghapusan penghapusan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.penghapusan
    ADD CONSTRAINT penghapusan_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.penghapusan DROP CONSTRAINT penghapusan_pkey;
       public         postgres    false    235            L           2606    24596    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    239            N           2606    24594    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    239            O           1259    24603    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    240            �      x�3�4��Ã�b���� ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   H   x�3�4204�74�74�7 ����Ē����Ԣ���Ĥ�TNC.#d��(
����R�R�SKZb���� ]      �      x������ � �      �      x������ � �      �      x������ � �      �   y   x�3�LL��̃�`R/9?�3ƏSŨR��@��4/8�����01شҼ"0�4 ¿�����¹���898���?�,,+�*�<�פ2������R� ��������Q�L���͹b���� ��$b     