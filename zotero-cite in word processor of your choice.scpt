FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � This script allows to cite references from Zotero in various text editors. It relies on Better BibTeX for formatting the output      � 	 	   T h i s   s c r i p t   a l l o w s   t o   c i t e   r e f e r e n c e s   f r o m   Z o t e r o   i n   v a r i o u s   t e x t   e d i t o r s .   I t   r e l i e s   o n   B e t t e r   B i b T e X   f o r   f o r m a t t i n g   t h e   o u t p u t     
  
 l      ��  ��    � � It supports a number of output formats:
	- Pandoc: to use with Pandoc and citeproc, formatted as [@Citation Key]
	- Multimarkdon:
	- Scannable Cite:
	     �  .   I t   s u p p o r t s   a   n u m b e r   o f   o u t p u t   f o r m a t s : 
 	 -   P a n d o c :   t o   u s e   w i t h   P a n d o c   a n d   c i t e p r o c ,   f o r m a t t e d   a s   [ @ C i t a t i o n   K e y ] 
 	 -   M u l t i m a r k d o n : 
 	 -   S c a n n a b l e   C i t e : 
 	      l      ��  ��    Y S The reference is copied to the clipboard and pasted into the selected text editor      �   �   T h e   r e f e r e n c e   i s   c o p i e d   t o   t h e   c l i p b o a r d   a n d   p a s t e d   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r        l     ��������  ��  ��        l      ��  ��    G A To do: 
	- try to cite the reference already selected in Zotero
     �   �   T o   d o :   
 	 -   t r y   t o   c i t e   t h e   r e f e r e n c e   a l r e a d y   s e l e c t e d   i n   Z o t e r o 
      l     ��������  ��  ��        l     ��   ��    R L activeEditorsList will be populated in the course of the script's execution      � ! ! �   a c t i v e E d i t o r s L i s t   w i l l   b e   p o p u l a t e d   i n   t h e   c o u r s e   o f   t h e   s c r i p t ' s   e x e c u t i o n   " # " l     $���� $ r      % & % J     ����   & o      ���� &0 activeeditorslist activeEditorsList��  ��   #  ' ( ' l     �� ) *��   ) v p set a list of text editors whose running status is to be checked. The order can be set to one's own preferences    * � + + �   s e t   a   l i s t   o f   t e x t   e d i t o r s   w h o s e   r u n n i n g   s t a t u s   i s   t o   b e   c h e c k e d .   T h e   o r d e r   c a n   b e   s e t   t o   o n e ' s   o w n   p r e f e r e n c e s (  , - , l    .���� . r     / 0 / J     1 1  2 3 2 m     4 4 � 5 5  S c r i v e n e r 3  6 7 6 m     8 8 � 9 9  S u b l i m e   T e x t 7  : ; : m     < < � = =  M i c r o s o f t   W o r d ;  > ? > m    	 @ @ � A A  T e x t E d i t ?  B�� B m   	 
 C C � D D 
 n v A L T��   0 o      ���� 0 editorslist editorsList��  ��   -  E F E l     �� G H��   G #  set a list of output formats    H � I I :   s e t   a   l i s t   o f   o u t p u t   f o r m a t s F  J K J l    L���� L r     M N M J     O O  P Q P m     R R � S S  P a n d o c Q  T U T m     V V � W W  M M D U  X�� X m     Y Y � Z Z  S c a n n a b l e   c i t e��   N o      ���� 0 formatslist formatsList��  ��   K  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _ - '    Generate variable with running apps    ` � a a N         G e n e r a t e   v a r i a b l e   w i t h   r u n n i n g   a p p s ^  b c b l   # d���� d O    # e f e r    " g h g l     i���� i n      j k j 1     ��
�� 
pnam k 2    ��
�� 
prcs��  ��   h o      ���� "0 activeprocesses activeProcesses f m     l l�                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   c  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q 0 * Generate variable with front most process    r � s s T   G e n e r a t e   v a r i a b l e   w i t h   f r o n t   m o s t   p r o c e s s p  t u t l  $ C v���� v O   $ C w x w r   ( B y z y c   ( > { | { l  ( : }���� } 6  ( : ~  ~ l  ( - ����� � n   ( - � � � 1   + -��
�� 
pnam � 2   ( +��
�� 
prcs��  ��    =  0 9 � � � 1   1 5��
�� 
pisf � m   6 8��
�� boovtrue��  ��   | m   : =��
�� 
TEXT z o      ���� 0 frontapp frontApp x m   $ % � ��                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 3 -    Generate list of running text editors        � � � � Z         G e n e r a t e   l i s t   o f   r u n n i n g   t e x t   e d i t o r s         �  � � � l  D q ����� � X   D q ��� � � Z   X l � ����� � E  X [ � � � o   X Y���� "0 activeprocesses activeProcesses � o   Y Z���� 0 appname appName � k   ^ h � �  � � � r   ^ c � � � o   ^ _���� 0 appname appName � o      ���� 0 activeeditor activeEditor �  ��� � r   d h � � � o   d e���� 0 appname appName � n       � � �  ;   f g � o   e f���� &0 activeeditorslist activeEditorsList��  ��  ��  �� 0 appname appName � o   G H���� 0 editorslist editorsList��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � � � ask user to select from running text editors if they front most app is not part of a list of text editors and if there are more then one. Otherwiese continue with the sole running text editor or abort the script    � � � ��   a s k   u s e r   t o   s e l e c t   f r o m   r u n n i n g   t e x t   e d i t o r s   i f   t h e y   f r o n t   m o s t   a p p   i s   n o t   p a r t   o f   a   l i s t   o f   t e x t   e d i t o r s   a n d   i f   t h e r e   a r e   m o r e   t h e n   o n e .   O t h e r w i e s e   c o n t i n u e   w i t h   t h e   s o l e   r u n n i n g   t e x t   e d i t o r   o r   a b o r t   t h e   s c r i p t �  � � � l  r { ����� � r   r { � � � l  r w ����� � I  r w�� ���
�� .corecnte****       **** � o   r s���� &0 activeeditorslist activeEditorsList��  ��  ��   � o      ���� 0 editorcount editorCount��  ��   �  � � � l  | � ����� � Z   | � � � � � � E  | � � � � o   | }���� 0 editorslist editorsList � o   } ����� 0 frontapp frontApp � r   � � � � � o   � ����� 0 frontapp frontApp � o      ���� 0 	targetapp 	targetApp �  � � � =   � � � � � o   � ����� 0 editorcount editorCount � m   � �����  �  � � � r   � � � � � c   � � � � � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� &0 activeeditorslist activeEditorsList��  ��   � m   � ���
�� 
ctxt � o      ���� 0 	targetapp 	targetApp �  � � � ?   � � � � � o   � ����� 0 editorcount editorCount � m   � �����   �  ��� � r   � � � � � c   � � � � � l  � � ����� � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� &0 activeeditorslist activeEditorsList � �� � �
�� 
appr � m   � � � � � � � ( R u n n i n g   t e x t   e d i t o r s � �� � �
�� 
prmp � m   � � � � � � � p P i c k   a   t e x t   e d i t o r   t o   s e n d   t h e   r e f e r e n c e ' s   C i t a t i o n I D   t o � �� � �
�� 
inSL � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� &0 activeeditorslist activeEditorsList��  ��   � �� ���
�� 
mlsl � m   � ���
�� boovfals��  ��  ��   � m   � ���
�� 
ctxt � o      ���� 0 	targetapp 	targetApp��   � k   � � � �  � � � l  � ��� � ���   �   Handle 0 items    � � � �    H a n d l e   0   i t e m s �  � � � l  � ��� � ���   �  
 set error    � � � �    s e t   e r r o r �  � � � r   � � � � � m   � � � � � � � 
 E r r o r � o      ���� 0 
alerttitle 
alertTitle �  � � � r   � � � � � m   � � � � � � � B T h e r e   a r e   n o   r u n n i n g   t e x t   e d i t o r s � o      ���� 0 alertmessage alertMessage �  � � � l  � ��� � ���   �   display error message    � � � � ,   d i s p l a y   e r r o r   m e s s a g e �  � � � I  � ��� 
�� .sysodisAaleR        TEXT  o   � ����� 0 
alerttitle 
alertTitle ����
�� 
mesS o   � ����� 0 alertmessage alertMessage��   � �� r   � � m   � � � 
 f a l s e o      �� 0 	targetapp 	targetApp��  ��  ��   � 	 l     �~�}�|�~  �}  �|  	 

 l     �{�{   * $ ask user to select an output format    � H   a s k   u s e r   t o   s e l e c t   a n   o u t p u t   f o r m a t  l  (�z�y r   ( c   $ l   �x�w I   �v
�v .gtqpchltns    @   @ ns   o   �u�u 0 formatslist formatsList �t
�t 
appr m   � 0 A v a i l a b l e   o u t p u t   f o r m a t s �s
�s 
prmp m  
 �   T P i c k   a n   o u t p u t   f o r m a t   f o r   t h e   c i t a t i o n   t a g �r!"
�r 
inSL! l #�q�p# n  $%$ 4  �o&
�o 
cobj& m  �n�n % o  �m�m 0 formatslist formatsList�q  �p  " �l'�k
�l 
mlsl' m  �j
�j boovfals�k  �x  �w   m   #�i
�i 
ctxt o      �h�h 0 targetformat targetFormat�z  �y   ()( l     �g�f�e�g  �f  �e  ) *+* l     �d,-�d  ,    test if Zotero is running   - �.. 4   t e s t   i f   Z o t e r o   i s   r u n n i n g+ /0/ l )41�c�b1 r  )4232 I )0�a4�`
�a .sysoexecTEXT���     TEXT4 m  ),55 �66 � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? p r o b e = p r o b e '   2 > / d e v / n u l l ;   e x i t   0�`  3 o      �_�_ 0 
zotrunning 
zotRunning�c  �b  0 787 l     �^�]�\�^  �]  �\  8 9:9 l 5�;�[�Z; Z  5�<=�Y�X< = 5<>?> o  58�W�W 0 
zotrunning 
zotRunning? m  8;@@ �AA 
 r e a d y= Z  ?�BCDEB = ?FFGF o  ?B�V�V 0 targetformat targetFormatG m  BEHH �II  P a n d o cC k  IdJJ KLK r  ITMNM I IP�UO�T
�U .sysoexecTEXT���     TEXTO m  ILPP �QQ � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = p a n d o c '   2 > / d e v / n u l l ;   e x i t   0�T  N o      �S�S 0 thereference theReferenceL R�RR r  UdSTS b  U`UVU b  U\WXW m  UXYY �ZZ  [X o  X[�Q�Q 0 thereference theReferenceV m  \_[[ �\\  ]T o      �P�P 0 thetag theTag�R  D ]^] = gn_`_ o  gj�O�O 0 targetformat targetFormat` m  jmaa �bb  M M D^ cdc k  q�ee fgf r  q|hih I qx�Nj�M
�N .sysoexecTEXT���     TEXTj m  qtkk �ll � / u s r / b i n / c u r l   ' h t t p : / / l o c a l h o s t : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = m m d '   2 > / d e v / n u l l ;   e x i t   0�M  i o      �L�L 0 thereference theReferenceg m�Km r  }�non o  }��J�J 0 thereference theReferenceo o      �I�I 0 thetag theTag�K  d pqp = ��rsr o  ���H�H 0 targetformat targetFormats m  ��tt �uu  S c a n n a b l e   c i t eq v�Gv k  ��ww xyx r  ��z{z I ���F|�E
�F .sysoexecTEXT���     TEXT| m  ��}} �~~ � / u s r / b i n / c u r l   ' h t t p : / / 1 2 7 . 0 . 0 . 1 : 2 3 1 1 9 / b e t t e r - b i b t e x / c a y w ? f o r m a t = s c a n n a b l e - c i t e '   2 > / d e v / n u l l ;   e x i t   0�E  { o      �D�D 0 thereference theReferencey �C r  ����� o  ���B�B 0 thereference theReference� o      �A�A 0 thetag theTag�C  �G  E k  ���� ��� l ���@���@  �  
 set error   � ���    s e t   e r r o r� ��� r  ����� m  ���� ��� 
 E r r o r� o      �?�? 0 
alerttitle 
alertTitle� ��� r  ����� m  ���� ��� p B e t t e r   B i b T e X   d o e s   n o t   r e t u r n   t h e   s e l e c t e d   t a r g e t   f o r m a t� o      �>�> 0 alertmessage alertMessage� ��� l ���=���=  �   display error message   � ��� ,   d i s p l a y   e r r o r   m e s s a g e� ��<� I ���;��
�; .sysodisAaleR        TEXT� o  ���:�: 0 
alerttitle 
alertTitle� �9��8
�9 
mesS� o  ���7�7 0 alertmessage alertMessage�8  �<  �Y  �X  �[  �Z  : ��� l     �6�5�4�6  �5  �4  � ��� l     �3���3  � , & copy the citatin tag to the clipboard   � ��� L   c o p y   t h e   c i t a t i n   t a g   t o   t h e   c l i p b o a r d� ��� l ������ I ���2��1
�2 .JonspClpnull���     ****� o  ���0�0 0 thetag theTag�1  �  as text   � ���  a s   t e x t� ��� l     �/�.�-�/  �.  �-  � ��� l     �,���,  �  
 debugging   � ���    d e b u g g i n g� ��� l     �+���+  � %  display dialog (the clipboard)   � ��� >   d i s p l a y   d i a l o g   ( t h e   c l i p b o a r d )� ��� l     �*�)�(�*  �)  �(  � ��� l     �'���'  � H B paste the reference and page number into the selected text editor   � ��� �   p a s t e   t h e   r e f e r e n c e   a n d   p a g e   n u m b e r   i n t o   t h e   s e l e c t e d   t e x t   e d i t o r� ��&� l ���%�$� Z  ����#�"� > ����� o  ���!�! 0 	targetapp 	targetApp� m  ���� ��� 
 f a l s e� O  ����� k  ���� ��� I ��� ��
�  .miscactvnull��� ��� null�  �  � ��� O  ����� I �����
� .prcskprsnull���     ctxt� m  ���� ���  v� ���
� 
faal� m  ���
� eMdsKcmd�  � m  �����                                                                                  sevs  alis    X  
Fischer HD                     BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p   
 F i s c h e r   H D  -System/Library/CoreServices/System Events.app   / ��  �  � 4  ����
� 
capp� o  ���� 0 	targetapp 	targetApp�#  �"  �%  �$  �&       ����  � �
� .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k    ��  "��  ,��  J��  b��  t��  ���  ���  ��� �� /�� 9�� ��� ���  �  �  � �� 0 appname appName� E� 4 8 < @ C�� R V Y� l�
�	���������� ������ ��� ��������� ��� ���������5����@HP��Y[��akt}����������������� &0 activeeditorslist activeEditorsList� � 0 editorslist editorsList� 0 formatslist formatsList
�
 
prcs
�	 
pnam� "0 activeprocesses activeProcesses�  
� 
pisf
� 
TEXT� 0 frontapp frontApp
� 
kocl
� 
cobj
� .corecnte****       ****� 0 activeeditor activeEditor�  0 editorcount editorCount�� 0 	targetapp 	targetApp
�� 
ctxt
�� 
appr
�� 
prmp
�� 
inSL
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� 0 
alerttitle 
alertTitle�� 0 alertmessage alertMessage
�� 
mesS
�� .sysodisAaleR        TEXT�� 0 targetformat targetFormat
�� .sysoexecTEXT���     TEXT�� 0 
zotrunning 
zotRunning�� 0 thereference theReference�� 0 thetag theTag
�� .JonspClpnull���     ****
�� 
capp
�� .miscactvnull��� ��� null
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt�jvE�O������vE�O���mvE�O� 	*�-�,E�UO� *�-�,a [a ,\Ze81a &E` UO ,�[a a l kh  Ϡ �E` O��6FY h[OY��O�j E` O�_  _ E` Y s_ k  �a k/a &E` Y Z_ j -�a a a a a �a k/a  fa ! "a &E` Y 'a #E` $Oa %E` &O_ $a '_ &l (Oa )E` O�a a *a a +a �a k/a  fa ! "a &E` ,Oa -j .E` /O_ /a 0  �_ ,a 1   a 2j .E` 3Oa 4_ 3%a 5%E` 6Y __ ,a 7  a 8j .E` 3O_ 3E` 6Y ?_ ,a 9  a :j .E` 3O_ 3E` 6Y a ;E` $Oa <E` &O_ $a '_ &l (Y hO_ 6j =O_ a > )*a ?_ / *j @O� a Aa Ba Cl DUUY hascr  ��ޭ