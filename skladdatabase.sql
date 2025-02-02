PGDMP  .    5                |            amangaliev_ersyn_ap15    17.2    17.0 G    c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            f           1262    19838    amangaliev_ersyn_ap15    DATABASE     w   CREATE DATABASE amangaliev_ersyn_ap15 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 %   DROP DATABASE amangaliev_ersyn_ap15;
                     postgres    false            �            1259    19839    brands    TABLE     e   CREATE TABLE public.brands (
    brand_id integer NOT NULL,
    brand_name character varying(100)
);
    DROP TABLE public.brands;
       public         heap r       postgres    false            �            1259    19842    brands_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.brands_brand_id_seq;
       public               postgres    false    217            g           0    0    brands_brand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.brands_brand_id_seq OWNED BY public.brands.brand_id;
          public               postgres    false    218            �            1259    19843 
   categories    TABLE     x   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL
);
    DROP TABLE public.categories;
       public         heap r       postgres    false            �            1259    19846    categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_category_id_seq;
       public               postgres    false    219            h           0    0    categories_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;
          public               postgres    false    220            �            1259    19847    contractors    TABLE     }   CREATE TABLE public.contractors (
    contractor_id integer NOT NULL,
    contractor_name character varying(100) NOT NULL
);
    DROP TABLE public.contractors;
       public         heap r       postgres    false            �            1259    19850    contractors_contractor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contractors_contractor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.contractors_contractor_id_seq;
       public               postgres    false    221            i           0    0    contractors_contractor_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.contractors_contractor_id_seq OWNED BY public.contractors.contractor_id;
          public               postgres    false    222            �            1259    19851 
   deliveries    TABLE     �   CREATE TABLE public.deliveries (
    delivery_id integer NOT NULL,
    product_id integer,
    warehouse_id integer,
    contractor_id integer,
    quantity integer NOT NULL,
    delivery_date date NOT NULL
);
    DROP TABLE public.deliveries;
       public         heap r       postgres    false            �            1259    19854    deliveries_delivery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deliveries_delivery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.deliveries_delivery_id_seq;
       public               postgres    false    223            j           0    0    deliveries_delivery_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.deliveries_delivery_id_seq OWNED BY public.deliveries.delivery_id;
          public               postgres    false    224            �            1259    19855    products    TABLE     �   CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category_id integer,
    brand_id integer
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    19858    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public               postgres    false    225            k           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public               postgres    false    226            �            1259    19859 	   transfers    TABLE     �   CREATE TABLE public.transfers (
    transfer_id integer NOT NULL,
    product_id integer,
    from_warehouse_id integer,
    to_warehouse_id integer,
    quantity integer NOT NULL,
    transfer_date date NOT NULL
);
    DROP TABLE public.transfers;
       public         heap r       postgres    false            �            1259    19862    transfers_transfer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transfers_transfer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.transfers_transfer_id_seq;
       public               postgres    false    227            l           0    0    transfers_transfer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.transfers_transfer_id_seq OWNED BY public.transfers.transfer_id;
          public               postgres    false    228            �            1259    19863 
   warehouses    TABLE     z   CREATE TABLE public.warehouses (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(100) NOT NULL
);
    DROP TABLE public.warehouses;
       public         heap r       postgres    false            �            1259    19866    warehouses_warehouse_id_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.warehouses_warehouse_id_seq;
       public               postgres    false    229            m           0    0    warehouses_warehouse_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.warehouses_warehouse_id_seq OWNED BY public.warehouses.warehouse_id;
          public               postgres    false    230            �            1259    19867    withdrawals    TABLE     �   CREATE TABLE public.withdrawals (
    withdrawal_id integer NOT NULL,
    product_id integer,
    warehouse_id integer,
    contractor_id integer,
    quantity integer NOT NULL,
    withdrawal_date date NOT NULL
);
    DROP TABLE public.withdrawals;
       public         heap r       postgres    false            �            1259    19870    withdrawals_withdrawal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.withdrawals_withdrawal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.withdrawals_withdrawal_id_seq;
       public               postgres    false    231            n           0    0    withdrawals_withdrawal_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.withdrawals_withdrawal_id_seq OWNED BY public.withdrawals.withdrawal_id;
          public               postgres    false    232            �           2604    19871    brands brand_id    DEFAULT     r   ALTER TABLE ONLY public.brands ALTER COLUMN brand_id SET DEFAULT nextval('public.brands_brand_id_seq'::regclass);
 >   ALTER TABLE public.brands ALTER COLUMN brand_id DROP DEFAULT;
       public               postgres    false    218    217            �           2604    19872    categories category_id    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
       public               postgres    false    220    219            �           2604    19873    contractors contractor_id    DEFAULT     �   ALTER TABLE ONLY public.contractors ALTER COLUMN contractor_id SET DEFAULT nextval('public.contractors_contractor_id_seq'::regclass);
 H   ALTER TABLE public.contractors ALTER COLUMN contractor_id DROP DEFAULT;
       public               postgres    false    222    221            �           2604    19874    deliveries delivery_id    DEFAULT     �   ALTER TABLE ONLY public.deliveries ALTER COLUMN delivery_id SET DEFAULT nextval('public.deliveries_delivery_id_seq'::regclass);
 E   ALTER TABLE public.deliveries ALTER COLUMN delivery_id DROP DEFAULT;
       public               postgres    false    224    223            �           2604    19875    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public               postgres    false    226    225            �           2604    19876    transfers transfer_id    DEFAULT     ~   ALTER TABLE ONLY public.transfers ALTER COLUMN transfer_id SET DEFAULT nextval('public.transfers_transfer_id_seq'::regclass);
 D   ALTER TABLE public.transfers ALTER COLUMN transfer_id DROP DEFAULT;
       public               postgres    false    228    227            �           2604    19877    warehouses warehouse_id    DEFAULT     �   ALTER TABLE ONLY public.warehouses ALTER COLUMN warehouse_id SET DEFAULT nextval('public.warehouses_warehouse_id_seq'::regclass);
 F   ALTER TABLE public.warehouses ALTER COLUMN warehouse_id DROP DEFAULT;
       public               postgres    false    230    229            �           2604    19878    withdrawals withdrawal_id    DEFAULT     �   ALTER TABLE ONLY public.withdrawals ALTER COLUMN withdrawal_id SET DEFAULT nextval('public.withdrawals_withdrawal_id_seq'::regclass);
 H   ALTER TABLE public.withdrawals ALTER COLUMN withdrawal_id DROP DEFAULT;
       public               postgres    false    232    231            Q          0    19839    brands 
   TABLE DATA                 public               postgres    false    217   �T       S          0    19843 
   categories 
   TABLE DATA                 public               postgres    false    219   U       U          0    19847    contractors 
   TABLE DATA                 public               postgres    false    221   �U       W          0    19851 
   deliveries 
   TABLE DATA                 public               postgres    false    223   �U       Y          0    19855    products 
   TABLE DATA                 public               postgres    false    225   �V       [          0    19859 	   transfers 
   TABLE DATA                 public               postgres    false    227   �W       ]          0    19863 
   warehouses 
   TABLE DATA                 public               postgres    false    229   �X       _          0    19867    withdrawals 
   TABLE DATA                 public               postgres    false    231   Y       o           0    0    brands_brand_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.brands_brand_id_seq', 4, true);
          public               postgres    false    218            p           0    0    categories_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_category_id_seq', 2, true);
          public               postgres    false    220            q           0    0    contractors_contractor_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.contractors_contractor_id_seq', 2, true);
          public               postgres    false    222            r           0    0    deliveries_delivery_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.deliveries_delivery_id_seq', 26, true);
          public               postgres    false    224            s           0    0    products_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_product_id_seq', 16, true);
          public               postgres    false    226            t           0    0    transfers_transfer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transfers_transfer_id_seq', 10, true);
          public               postgres    false    228            u           0    0    warehouses_warehouse_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.warehouses_warehouse_id_seq', 2, true);
          public               postgres    false    230            v           0    0    withdrawals_withdrawal_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.withdrawals_withdrawal_id_seq', 10, true);
          public               postgres    false    232            �           2606    19880    brands brands_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (brand_id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public                 postgres    false    217            �           2606    19882    categories categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public                 postgres    false    219            �           2606    19884    contractors contractors_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.contractors
    ADD CONSTRAINT contractors_pkey PRIMARY KEY (contractor_id);
 F   ALTER TABLE ONLY public.contractors DROP CONSTRAINT contractors_pkey;
       public                 postgres    false    221            �           2606    19886    deliveries deliveries_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (delivery_id);
 D   ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_pkey;
       public                 postgres    false    223            �           2606    19888    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    225            �           2606    19890    transfers transfers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.transfers
    ADD CONSTRAINT transfers_pkey PRIMARY KEY (transfer_id);
 B   ALTER TABLE ONLY public.transfers DROP CONSTRAINT transfers_pkey;
       public                 postgres    false    227            �           2606    19892    warehouses warehouses_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (warehouse_id);
 D   ALTER TABLE ONLY public.warehouses DROP CONSTRAINT warehouses_pkey;
       public                 postgres    false    229            �           2606    19894    withdrawals withdrawals_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT withdrawals_pkey PRIMARY KEY (withdrawal_id);
 F   ALTER TABLE ONLY public.withdrawals DROP CONSTRAINT withdrawals_pkey;
       public                 postgres    false    231            �           2606    19895 (   deliveries deliveries_contractor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_contractor_id_fkey FOREIGN KEY (contractor_id) REFERENCES public.contractors(contractor_id);
 R   ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_contractor_id_fkey;
       public               postgres    false    223    221    3498            �           2606    19900 %   deliveries deliveries_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 O   ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_product_id_fkey;
       public               postgres    false    223    225    3502            �           2606    19905 '   deliveries deliveries_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(warehouse_id);
 Q   ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_warehouse_id_fkey;
       public               postgres    false    229    3506    223            �           2606    19910    products products_brand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(brand_id);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_brand_id_fkey;
       public               postgres    false    225    217    3494            �           2606    19915 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public               postgres    false    3496    225    219            �           2606    19920 *   transfers transfers_from_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transfers
    ADD CONSTRAINT transfers_from_warehouse_id_fkey FOREIGN KEY (from_warehouse_id) REFERENCES public.warehouses(warehouse_id);
 T   ALTER TABLE ONLY public.transfers DROP CONSTRAINT transfers_from_warehouse_id_fkey;
       public               postgres    false    229    3506    227            �           2606    19925 #   transfers transfers_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transfers
    ADD CONSTRAINT transfers_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 M   ALTER TABLE ONLY public.transfers DROP CONSTRAINT transfers_product_id_fkey;
       public               postgres    false    225    227    3502            �           2606    19930 (   transfers transfers_to_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transfers
    ADD CONSTRAINT transfers_to_warehouse_id_fkey FOREIGN KEY (to_warehouse_id) REFERENCES public.warehouses(warehouse_id);
 R   ALTER TABLE ONLY public.transfers DROP CONSTRAINT transfers_to_warehouse_id_fkey;
       public               postgres    false    3506    229    227            �           2606    19935 *   withdrawals withdrawals_contractor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT withdrawals_contractor_id_fkey FOREIGN KEY (contractor_id) REFERENCES public.contractors(contractor_id);
 T   ALTER TABLE ONLY public.withdrawals DROP CONSTRAINT withdrawals_contractor_id_fkey;
       public               postgres    false    221    231    3498            �           2606    19940 '   withdrawals withdrawals_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT withdrawals_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 Q   ALTER TABLE ONLY public.withdrawals DROP CONSTRAINT withdrawals_product_id_fkey;
       public               postgres    false    3502    225    231            �           2606    19945 )   withdrawals withdrawals_warehouse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.withdrawals
    ADD CONSTRAINT withdrawals_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(warehouse_id);
 S   ALTER TABLE ONLY public.withdrawals DROP CONSTRAINT withdrawals_warehouse_id_fkey;
       public               postgres    false    3506    229    231            Q   [   x���v
Q���W((M��L�K*J�K)Vs�	uV�0�QP�ϫT״��$���:1��4/�8�@~�٩ĩ6�vL�LI,��� ��8      S   a   x���v
Q���W((M��L�KN,IM�/�L-Vs�	uV�0�QP�����[/��t��¾{/츰��uMk.O��0�1���ۀ$X' �4�      U   X   x���v
Q���W((M��L�K��+)JL.�/*Vs�	uV�0�QP�0�¾{/6]l�����[AlCuMk.O�1�e��.. _�:      W   �   x����
�0��>�mUH$wIK�ɡCA*���D��716qp��?���|״]}�i�=ܞ��^V�a���n����c���(9)2R�TE��d�,	��	B-@O,"DKT�!F�	3\�Hb@�/HV(b*�
�of�[㬠�k�	��e������%_��	kt|6�M��e\�	n��}W�:      Y     x���1K�P��=��*!muq*X!�4����Æ���4B��q�7D�(����w��K�$($Û���oXv��a90I���w4�J?�f1\u�Aφ�	|�O����5~�`�h�h�ꇧ�Qj��a�D7�jU�څ�@RJq���`c�OjW�:C]?��XQ���^�z�o�iAK�gmׁ+�@]gL�*V�z�2Z�;e�SD�N֧�XO�*�7R
g�XF���֫Z���r�.��U��P�*|V�*g$�����]O�O
���w���C9��h�Z      [   �   x���1�0�����TH$wIk��C��T��]EA�V����ׂ�	���､(�|[CQ�x����i�l��rnZدֻ��)*G
b2�!mp2[F�A�p@�aF�13��cRF��"F8�Gh��~�9�ȃ����$fd��=|��]����E�q5�M���C��!]Lz�l	u��\��      ]   N   x���v
Q���W((M��L�+O,J��/-N-Vs�	uV�0�QP���®�/l��E�P]Ӛ˓(�F�:�@:�� �"+3      _   �   x���=�0�w~�mhҚ޵��Ɂ��`"�:H�`��J�]�����{�]Y�š��j�p�������h���i�;5,P���I��JK���MT��1>����9-@� ;��db�&,�K�Plg��.�%5�*^�����SPǮb0CC�S�N�+[K���3nh��(� ����     