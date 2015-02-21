PGDMP     0                    s            escola    9.4.1    9.4.1 m    _           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            a           1262    16580    escola    DATABASE     i   CREATE DATABASE escola WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE escola;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            b           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            c           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11860    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            d           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    193            �            1259    17060    alunos    TABLE     b   CREATE TABLE alunos (
    id integer NOT NULL,
    name character varying(45),
    age integer
);
    DROP TABLE public.alunos;
       public      	   kaiocesar    false    5            �            1259    17058    alunos_id_seq    SEQUENCE     o   CREATE SEQUENCE alunos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.alunos_id_seq;
       public    	   kaiocesar    false    5    192            e           0    0    alunos_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE alunos_id_seq OWNED BY alunos.id;
            public    	   kaiocesar    false    191            �            1259    16611 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public      	   kaiocesar    false    5            �            1259    16609    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public    	   kaiocesar    false    5    179            f           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public    	   kaiocesar    false    178            �            1259    16621    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public      	   kaiocesar    false    5            �            1259    16619    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public    	   kaiocesar    false    5    181            g           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public    	   kaiocesar    false    180            �            1259    16601    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public      	   kaiocesar    false    5            �            1259    16599    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public    	   kaiocesar    false    177    5            h           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public    	   kaiocesar    false    176            �            1259    16631 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public      	   kaiocesar    false    5            �            1259    16641    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public      	   kaiocesar    false    5            �            1259    16639    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public    	   kaiocesar    false    5    185            i           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public    	   kaiocesar    false    184            �            1259    16629    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public    	   kaiocesar    false    5    183            j           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public    	   kaiocesar    false    182            �            1259    16651    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public      	   kaiocesar    false    5            �            1259    16649 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public    	   kaiocesar    false    5    187            k           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public    	   kaiocesar    false    186            �            1259    16705    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public      	   kaiocesar    false    5            �            1259    16703    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public    	   kaiocesar    false    189    5            l           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public    	   kaiocesar    false    188            �            1259    16591    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public      	   kaiocesar    false    5            �            1259    16589    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public    	   kaiocesar    false    5    175            m           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public    	   kaiocesar    false    174            �            1259    16583    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public      	   kaiocesar    false    5            �            1259    16581    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public    	   kaiocesar    false    5    173            n           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public    	   kaiocesar    false    172            �            1259    16727    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public      	   kaiocesar    false    5            �           2604    17063    id    DEFAULT     X   ALTER TABLE ONLY alunos ALTER COLUMN id SET DEFAULT nextval('alunos_id_seq'::regclass);
 8   ALTER TABLE public.alunos ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    192    191    192            �           2604    16614    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    179    178    179            �           2604    16624    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    180    181    181            �           2604    16604    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    177    176    177            �           2604    16634    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    182    183    183            �           2604    16644    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    185    184    185            �           2604    16654    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    186    187    187            �           2604    16708    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    189    188    189            �           2604    16594    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    175    174    175            �           2604    16586    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public    	   kaiocesar    false    172    173    173            \          0    17060    alunos 
   TABLE DATA               (   COPY alunos (id, name, age) FROM stdin;
    public    	   kaiocesar    false    192   ��       o           0    0    alunos_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('alunos_id_seq', 4, true);
            public    	   kaiocesar    false    191            O          0    16611 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public    	   kaiocesar    false    179   �       p           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public    	   kaiocesar    false    178            Q          0    16621    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public    	   kaiocesar    false    181   �       q           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public    	   kaiocesar    false    180            M          0    16601    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public    	   kaiocesar    false    177   �       r           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 21, true);
            public    	   kaiocesar    false    176            S          0    16631 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public    	   kaiocesar    false    183   %�       U          0    16641    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public    	   kaiocesar    false    185   Յ       s           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public    	   kaiocesar    false    184            t           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public    	   kaiocesar    false    182            W          0    16651    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public    	   kaiocesar    false    187   �       u           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public    	   kaiocesar    false    186            Y          0    16705    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public    	   kaiocesar    false    189   �       v           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);
            public    	   kaiocesar    false    188            K          0    16591    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public    	   kaiocesar    false    175   ,�       w           0    0    django_content_type_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_content_type_id_seq', 7, true);
            public    	   kaiocesar    false    174            I          0    16583    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public    	   kaiocesar    false    173   ��       x           0    0    django_migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_migrations_id_seq', 4, true);
            public    	   kaiocesar    false    172            Z          0    16727    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public    	   kaiocesar    false    190   4�       �           2606    16618    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public      	   kaiocesar    false    179    179            �           2606    16628 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public      	   kaiocesar    false    181    181    181            �           2606    16626    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public      	   kaiocesar    false    181    181            �           2606    16616    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public      	   kaiocesar    false    179    179            �           2606    16608 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public      	   kaiocesar    false    177    177    177            �           2606    16606    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public      	   kaiocesar    false    177    177            �           2606    16646    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public      	   kaiocesar    false    185    185            �           2606    16648 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public      	   kaiocesar    false    185    185    185            �           2606    16636    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public      	   kaiocesar    false    183    183            �           2606    16656    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public      	   kaiocesar    false    187    187            �           2606    16658 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public      	   kaiocesar    false    187    187    187            �           2606    16638    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public      	   kaiocesar    false    183    183            �           2606    16714    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public      	   kaiocesar    false    189    189            �           2606    16598 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public      	   kaiocesar    false    175    175    175            �           2606    16596    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public      	   kaiocesar    false    175    175            �           2606    16588    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public      	   kaiocesar    false    173    173            �           2606    16734    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public      	   kaiocesar    false    190    190            �           1259    16665    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public      	   kaiocesar    false    179            �           1259    16676    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public      	   kaiocesar    false    181            �           1259    16677    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public      	   kaiocesar    false    181            �           1259    16664    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public      	   kaiocesar    false    177            �           1259    16690    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public      	   kaiocesar    false    185            �           1259    16689    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public      	   kaiocesar    false    185            �           1259    16702 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public      	   kaiocesar    false    187            �           1259    16701 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public      	   kaiocesar    false    187            �           1259    16678    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public      	   kaiocesar    false    183            �           1259    16725    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public      	   kaiocesar    false    189            �           1259    16726    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public      	   kaiocesar    false    189            �           1259    16735    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public      	   kaiocesar    false    190            �           1259    16736 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public      	   kaiocesar    false    190            �           2606    16671 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public    	   kaiocesar    false    1965    177    181            �           2606    16666 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public    	   kaiocesar    false    181    1970    179            �           2606    16659 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public    	   kaiocesar    false    175    1960    177            �           2606    16684 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public    	   kaiocesar    false    1970    185    179            �           2606    16679 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public    	   kaiocesar    false    183    185    1978            �           2606    16696 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public    	   kaiocesar    false    187    1965    177            �           2606    16691 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public    	   kaiocesar    false    183    187    1978            �           2606    16715 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public    	   kaiocesar    false    189    1960    175            �           2606    16720 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public    	   kaiocesar    false    189    183    1978            \   G   x�3��N��Wp.N,�42�2�t**�KTp-K�KO��,.I�42�2��*��D6�2���L/M�A����� ��@      O      x������ � �      Q      x������ � �      M   �   x�]�K�0��u���P���&�H�&�
n/N��S���T�{g������˼)�����8B�����`�",�f4K
�Q�G'3?��UV�Բ�@
��tb�-l��av�J�7\e��M� n�t��s��̪���O�Z�>�B�'@�(y���e�l�&�j����t%['L���2}�t��7|o�k7x	�@���P��Uv#�$��q�Ϋka�"�1�:��)FT"�� ��1
�      S   �   x�}��
�0����)��.\g�6�ZY]�`�R+Y�� ������礹�����QH�# 8�z�x-L��0ZO��&^`��a/�B����_I�o��c���f���j���|���XbtYgE�[B�-�g�����J������zb����1/      U      x������ � �      W      x������ � �      Y      x������ � �      K   q   x�U�K�0C��)z$��a��Djg�L���!����ya1�8��� ���W�	I�ݣ)B-��1[M�_�T�ܛF��iZ�cCY�l����\��/}������ǁ�H�A�      I   w   x���A
� F��x��C�Q��Y
AZ�Bk
N�}I/�>�c�MKS��K' ��V��'	8̐��ذlcX�� #�?�	��
9��|�6"b�q����^z�G��u1���ߘ5      Z      x������ � �     