PGDMP         2                {            airport_example    15.1    15.1 %    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    17782    airport_example    DATABASE     �   CREATE DATABASE airport_example WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE airport_example;
                postgres    false            �            1259    18220    airplane    TABLE     "  CREATE TABLE public.airplane (
    number_airplane text NOT NULL,
    name_aviacompany text,
    volume_person integer,
    business_class text,
    count_personal integer,
    begage text,
    fk_aviacompany_airplane text,
    fk_weather_airplane text,
    fk_distance_airplane integer
);
    DROP TABLE public.airplane;
       public         heap    postgres    false            �            1259    18208    airport    TABLE     �   CREATE TABLE public.airport (
    number_airport integer NOT NULL,
    name_airport text,
    location_airport text,
    class_airport text,
    city_airport text,
    phone_number character varying(64)
);
    DROP TABLE public.airport;
       public         heap    postgres    false            �            1259    18187    aviacompany    TABLE     �   CREATE TABLE public.aviacompany (
    name_aviacompany text NOT NULL,
    count_airplane integer,
    save_airplane integer,
    flight_class text,
    count_racks integer,
    phone character varying(64)
);
    DROP TABLE public.aviacompany;
       public         heap    postgres    false            �            1259    18215    distance    TABLE     �   CREATE TABLE public.distance (
    number_airplane integer NOT NULL,
    distance integer,
    height integer,
    speed integer
);
    DROP TABLE public.distance;
       public         heap    postgres    false            �            1259    18339    food    TABLE     �   CREATE TABLE public.food (
    id_food text NOT NULL,
    name_food text,
    consist_food text,
    allergy text DEFAULT 'yes'::text,
    age_category text,
    fk_food_reisi text
);
    DROP TABLE public.food;
       public         heap    postgres    false            �            1259    18361    future_delete    TABLE     G   CREATE TABLE public.future_delete (
    first text,
    second text
);
 !   DROP TABLE public.future_delete;
       public         heap    postgres    false            �            1259    18201    person    TABLE     �   CREATE TABLE public.person (
    passport integer NOT NULL,
    first_name text,
    second_name text,
    middle_name text,
    birth text,
    chidren text,
    parent_id integer,
    id_person integer
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    18242    reisi    TABLE     �   CREATE TABLE public.reisi (
    id_reisi text NOT NULL,
    "from" text,
    "where" text,
    time_to_go text,
    fk_airport_reisi integer,
    fk_person_reisi integer
);
    DROP TABLE public.reisi;
       public         heap    postgres    false            �            1259    18194    weather    TABLE     �   CREATE TABLE public.weather (
    id_fly text NOT NULL,
    level_save integer,
    rain text,
    wing text,
    snow text,
    temperature text
);
    DROP TABLE public.weather;
       public         heap    postgres    false            0          0    18220    airplane 
   TABLE DATA           �   COPY public.airplane (number_airplane, name_aviacompany, volume_person, business_class, count_personal, begage, fk_aviacompany_airplane, fk_weather_airplane, fk_distance_airplane) FROM stdin;
    public          postgres    false    219   �,       .          0    18208    airport 
   TABLE DATA           |   COPY public.airport (number_airport, name_airport, location_airport, class_airport, city_airport, phone_number) FROM stdin;
    public          postgres    false    217   X-       +          0    18187    aviacompany 
   TABLE DATA           x   COPY public.aviacompany (name_aviacompany, count_airplane, save_airplane, flight_class, count_racks, phone) FROM stdin;
    public          postgres    false    214   �-       /          0    18215    distance 
   TABLE DATA           L   COPY public.distance (number_airplane, distance, height, speed) FROM stdin;
    public          postgres    false    218   R.       2          0    18339    food 
   TABLE DATA           f   COPY public.food (id_food, name_food, consist_food, allergy, age_category, fk_food_reisi) FROM stdin;
    public          postgres    false    221   �.       3          0    18361    future_delete 
   TABLE DATA           6   COPY public.future_delete (first, second) FROM stdin;
    public          postgres    false    222   �.       -          0    18201    person 
   TABLE DATA           v   COPY public.person (passport, first_name, second_name, middle_name, birth, chidren, parent_id, id_person) FROM stdin;
    public          postgres    false    216   /       1          0    18242    reisi 
   TABLE DATA           i   COPY public.reisi (id_reisi, "from", "where", time_to_go, fk_airport_reisi, fk_person_reisi) FROM stdin;
    public          postgres    false    220   �/       ,          0    18194    weather 
   TABLE DATA           T   COPY public.weather (id_fly, level_save, rain, wing, snow, temperature) FROM stdin;
    public          postgres    false    215   $0       �           2606    18226    airplane airplane_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.airplane
    ADD CONSTRAINT airplane_pkey PRIMARY KEY (number_airplane);
 @   ALTER TABLE ONLY public.airplane DROP CONSTRAINT airplane_pkey;
       public            postgres    false    219            �           2606    18214    airport airport_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.airport
    ADD CONSTRAINT airport_pkey PRIMARY KEY (number_airport);
 >   ALTER TABLE ONLY public.airport DROP CONSTRAINT airport_pkey;
       public            postgres    false    217            �           2606    18193    aviacompany aviacompany_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.aviacompany
    ADD CONSTRAINT aviacompany_pkey PRIMARY KEY (name_aviacompany);
 F   ALTER TABLE ONLY public.aviacompany DROP CONSTRAINT aviacompany_pkey;
       public            postgres    false    214            �           2606    18219    distance distance_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_pkey PRIMARY KEY (number_airplane);
 @   ALTER TABLE ONLY public.distance DROP CONSTRAINT distance_pkey;
       public            postgres    false    218            �           2606    18346    food food_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id_food);
 8   ALTER TABLE ONLY public.food DROP CONSTRAINT food_pkey;
       public            postgres    false    221            �           2606    18207    person person_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (passport);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    216            �           2606    18248    reisi reisi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.reisi
    ADD CONSTRAINT reisi_pkey PRIMARY KEY (id_reisi);
 :   ALTER TABLE ONLY public.reisi DROP CONSTRAINT reisi_pkey;
       public            postgres    false    220            �           2606    18348    food unique_name_food 
   CONSTRAINT     U   ALTER TABLE ONLY public.food
    ADD CONSTRAINT unique_name_food UNIQUE (name_food);
 ?   ALTER TABLE ONLY public.food DROP CONSTRAINT unique_name_food;
       public            postgres    false    221            �           2606    18200    weather weather_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.weather
    ADD CONSTRAINT weather_pkey PRIMARY KEY (id_fly);
 >   ALTER TABLE ONLY public.weather DROP CONSTRAINT weather_pkey;
       public            postgres    false    215            �           2606    18227 .   airplane airplane_fk_aviacompany_airplane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.airplane
    ADD CONSTRAINT airplane_fk_aviacompany_airplane_fkey FOREIGN KEY (fk_aviacompany_airplane) REFERENCES public.aviacompany(name_aviacompany);
 X   ALTER TABLE ONLY public.airplane DROP CONSTRAINT airplane_fk_aviacompany_airplane_fkey;
       public          postgres    false    3206    214    219            �           2606    18237 +   airplane airplane_fk_distance_airplane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.airplane
    ADD CONSTRAINT airplane_fk_distance_airplane_fkey FOREIGN KEY (fk_distance_airplane) REFERENCES public.distance(number_airplane);
 U   ALTER TABLE ONLY public.airplane DROP CONSTRAINT airplane_fk_distance_airplane_fkey;
       public          postgres    false    219    3214    218            �           2606    18232 *   airplane airplane_fk_weather_airplane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.airplane
    ADD CONSTRAINT airplane_fk_weather_airplane_fkey FOREIGN KEY (fk_weather_airplane) REFERENCES public.weather(id_fly);
 T   ALTER TABLE ONLY public.airplane DROP CONSTRAINT airplane_fk_weather_airplane_fkey;
       public          postgres    false    219    3208    215            �           2606    18349    food food_fk_food_reisi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_fk_food_reisi_fkey FOREIGN KEY (fk_food_reisi) REFERENCES public.reisi(id_reisi);
 F   ALTER TABLE ONLY public.food DROP CONSTRAINT food_fk_food_reisi_fkey;
       public          postgres    false    221    3218    220            �           2606    18249 !   reisi reisi_fk_airport_reisi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reisi
    ADD CONSTRAINT reisi_fk_airport_reisi_fkey FOREIGN KEY (fk_airport_reisi) REFERENCES public.airport(number_airport);
 K   ALTER TABLE ONLY public.reisi DROP CONSTRAINT reisi_fk_airport_reisi_fkey;
       public          postgres    false    220    3212    217            �           2606    18254     reisi reisi_fk_person_reisi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reisi
    ADD CONSTRAINT reisi_fk_person_reisi_fkey FOREIGN KEY (fk_person_reisi) REFERENCES public.person(passport);
 J   ALTER TABLE ONLY public.reisi DROP CONSTRAINT reisi_fk_person_reisi_fkey;
       public          postgres    false    216    220    3210            0   f   x���5000���/J).I,�446����M*�,�K-.�4�L-�MJMOLO���4\ MƜN�)�L�<�z#��`�z#�`s�j��������qqq =L*�      .   t   x�3444�����/��,.�S�I���+����+I-�K-���K����/N�/細000555B.# �˫�!N����������	�1p:�df��5B�����2s��" W� ��6l      +   f   x���/J).I,�442�4�L*�,�K-.V�/RHM�����4洰000555B����ԔDNCSNSN�
CNKC3#�`s�,���*�� �b���� ,�!�      /   )   x�3�4400 @����ˈ��ȴ�M����1z\\\ �Wp      2   H   x�3�L*JML�L��/K-�Q(O,Q���Ŝ��Ŝڜ&f�\F�I�%@)��̜l���6����W� ��      3   #   x�K�J��J�LJC��|�,.��B�=... �T�      -   �   x�E��
�0Dϓ�i��Dͱ�"O/�]P�IQ+��W�tN30��ؚ#��2��QR^�{�Z���B[M�*���
���G\���5�<�'�ǔ�A^�J�HmR��u��9m�f짴s�"�x42ڄM�"�jOJ� 7/�      1   ]   x�=�1
�0@�99�$iZ�w�NB�.���� �~��$��������'��D(+�Q�pU7v��td`�H�ze;�.��I�~6M��8 �Bd      ,   !   x�3�4��ˇ"C#.#N#�1�1
?F��� @7h     