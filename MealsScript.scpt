FasdUAS 1.101.10   ��   ��    k             p         ������ 0 
mealindex1 
mealIndex1��      	  p       
 
 ������ 0 
mealindex2 
mealIndex2��   	     p         ������ 0 
mealindex3 
mealIndex3��        p         ������ 0 
mealindex4 
mealIndex4��        p         ������ 0 
mealindex5 
mealIndex5��        p         ������ 0 
mealindex6 
mealIndex6��        p         ������ 0 
mealindex7 
mealIndex7��        l     ��������  ��  ��        p         ������ 0 breakfastone breakfastOne��         p       ! ! ������ 0 breakfasttwo breakfastTwo��      " # " p       $ $ ������  0 breakfastthree breakfastThree��   #  % & % p       ' ' ������ 0 breakfastfour breakfastFour��   &  ( ) ( p       * * ������ 0 breakfastfive breakfastFive��   )  + , + p       - - ������ 0 breakfastsix breakfastSix��   ,  . / . p       0 0 ������  0 breakfastseven breakfastSeven��   /  1 2 1 l     ��������  ��  ��   2  3 4 3 p       5 5 ������ 0 lunchone lunchOne��   4  6 7 6 p       8 8 ������ 0 lunchtwo lunchTwo��   7  9 : 9 p       ; ; ������ 0 
lunchthree 
lunchThree��   :  < = < p       > > ������ 0 	lunchfour 	lunchFour��   =  ? @ ? p       A A ������ 0 	lunchfive 	lunchFive��   @  B C B p       D D ������ 0 lunchsix lunchSix��   C  E F E p       G G ������ 0 
lunchseven 
lunchSeven��   F  H I H l     ��������  ��  ��   I  J K J p       L L ������ 0 	dinnerone 	dinnerOne��   K  M N M p       O O ������ 0 	dinnertwo 	dinnerTwo��   N  P Q P p       R R ������ 0 dinnerthree dinnerThree��   Q  S T S p       U U ������ 0 
dinnerfour 
dinnerFour��   T  V W V p       X X ������ 0 
dinnerfive 
dinnerFive��   W  Y Z Y p       [ [ ������ 0 	dinnersix 	dinnerSix��   Z  \ ] \ p       ^ ^ ������ 0 dinnerseven dinnerSeven��   ]  _ ` _ l     ��������  ��  ��   `  a b a p       c c ������ 0 datestringone dateStringOne��   b  d e d p       f f ������ 0 datestringtwo dateStringTwo��   e  g h g p       i i ������ "0 datestringthree dateStringThree��   h  j k j p       l l ������  0 datestringfour dateStringFour��   k  m n m p       o o ������  0 datestringfive dateStringFive��   n  p q p p       r r ������ 0 datestringsix dateStringSix��   q  s t s p       u u ������ "0 datestringseven dateStringSeven��   t  v w v l     ��������  ��  ��   w  x y x l      �� z {��   z	{	u

tell application "Numbers"
	activate
	try
		set the chosenDocumentFile to �
			(choose file of type �
				{"com.apple.iwork.numbers.numbers", �
					"com.apple.iwork.numbers.sffnumbers", �
					"com.microsoft.excel.xls", �
					"org.openxmlformats.spreadsheetml.sheet"} �
					default location (path to documents folder) �
				with prompt "Choose the Numbers document or Excel workbook to open:")
		open the chosenDocumentFile
	on error errorMessage number errorNumber
		if errorNumber is not -128 then
			display alert errorNumber message errorMessage
		end if
	end try
	
	
	
end tell

set myFile to open for access (choose file name) with write permission
write "{\"monday\": [ { \"breakfast\":\"Sausage, Egg|, & Pop Tarts.\", \"lunch\":\"Gen. Tso Chicken, Carrots|, & Almond Cookie.\", \"dinner\":\"Beef Meatballs, Chicken Parm|, & Chilli.\", \"dayOfWeek\":\"Monday\", \"dateString\":\"2015-05-11\" } ], \"tuesday\": [ { \"breakfast\":\"French Toast, Bacon|, & Banana Muffin.\", \"lunch\":\"Fish Fillet, Chicken Breast|, & Italian Bread.\", \"dinner\":\"Swordfish Fillet, Sausage|, & Chocolate Chip Cookie.\", \"dayOfWeek\":\"Tuesday\", \"dateString\":\"2015-05-12\" } ], \"wednesday\": [ { \"breakfast\":\"Potato Buttons, Eggs|, & Naan Bread.\", \"lunch\":\"Beef Burger, Sweet Potatos|, & Fruit Bar.\", \"dinner\":\"Spaghetti, Sausage|, & Tira Miso Cup.\", \"dayOfWeek\":\"Wednesday\", \"dateString\":\"2015-05-13\" } ], \"thursday\": [ { \"breakfast\":\"Egg Patty, Hashbrowns|, & Blueberries.\", \"lunch\":\"Beef Reuben, Doritos|, & Salsa.\", \"dinner\":\"Sliders, Mushrooms|, & Cannoli.\", \"dayOfWeek\":\"Thursday\", \"dateString\":\"2015-05-14\" } ], \"friday\": [ { \"breakfast\":\"Omlet, Bacon|, & Vanilla Yogurt Quart\", \"lunch\":\"Veggie Soup, Chicken Breast Club|, & Snickerdoodles.\", \"dinner\":\"Beef Kebobs, Garlic Bread|, & Macaroons.\", \"dayOfWeek\":\"Friday\", \"dateString\":\"2015-05-15\" } ], \"saturday\": [ { \"breakfast\":\"Bacon, Eggs|, & Kashi.\", \"lunch\":\"Chicken Noodle Soup, Tortillas|, & Churros.\", \"dinner\":\"Beek Brisket, Gravy|, & Pecan Pie\", \"dayOfWeek\":\"Saturday\", \"dateString\":\"2015-05-16\" } ], \"sunday\": [ { \"breakfast\":\"Scrambled Eggs, Belgian Waffles|, & Potatoes.\", \"lunch\":\"No lunch today!\", \"dinner\":\"Pizza Flatbread, Chicken Wings|, & Carrot Cake.\", \"dayOfWeek\":\"Sunday\", \"dateString\":\"2015-05-17\" } ] }" to myFile
close access myFile
    { � | |� 
 
 t e l l   a p p l i c a t i o n   " N u m b e r s " 
 	 a c t i v a t e 
 	 t r y 
 	 	 s e t   t h e   c h o s e n D o c u m e n t F i l e   t o   � 
 	 	 	 ( c h o o s e   f i l e   o f   t y p e   � 
 	 	 	 	 { " c o m . a p p l e . i w o r k . n u m b e r s . n u m b e r s " ,   � 
 	 	 	 	 	 " c o m . a p p l e . i w o r k . n u m b e r s . s f f n u m b e r s " ,   � 
 	 	 	 	 	 " c o m . m i c r o s o f t . e x c e l . x l s " ,   � 
 	 	 	 	 	 " o r g . o p e n x m l f o r m a t s . s p r e a d s h e e t m l . s h e e t " }   � 
 	 	 	 	 	 d e f a u l t   l o c a t i o n   ( p a t h   t o   d o c u m e n t s   f o l d e r )   � 
 	 	 	 	 w i t h   p r o m p t   " C h o o s e   t h e   N u m b e r s   d o c u m e n t   o r   E x c e l   w o r k b o o k   t o   o p e n : " ) 
 	 	 o p e n   t h e   c h o s e n D o c u m e n t F i l e 
 	 o n   e r r o r   e r r o r M e s s a g e   n u m b e r   e r r o r N u m b e r 
 	 	 i f   e r r o r N u m b e r   i s   n o t   - 1 2 8   t h e n 
 	 	 	 d i s p l a y   a l e r t   e r r o r N u m b e r   m e s s a g e   e r r o r M e s s a g e 
 	 	 e n d   i f 
 	 e n d   t r y 
 	 
 	 
 	 
 e n d   t e l l 
 
 s e t   m y F i l e   t o   o p e n   f o r   a c c e s s   ( c h o o s e   f i l e   n a m e )   w i t h   w r i t e   p e r m i s s i o n 
 w r i t e   " { \ " m o n d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " S a u s a g e ,   E g g | ,   &   P o p   T a r t s . \ " ,   \ " l u n c h \ " : \ " G e n .   T s o   C h i c k e n ,   C a r r o t s | ,   &   A l m o n d   C o o k i e . \ " ,   \ " d i n n e r \ " : \ " B e e f   M e a t b a l l s ,   C h i c k e n   P a r m | ,   &   C h i l l i . \ " ,   \ " d a y O f W e e k \ " : \ " M o n d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 1 \ "   }   ] ,   \ " t u e s d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " F r e n c h   T o a s t ,   B a c o n | ,   &   B a n a n a   M u f f i n . \ " ,   \ " l u n c h \ " : \ " F i s h   F i l l e t ,   C h i c k e n   B r e a s t | ,   &   I t a l i a n   B r e a d . \ " ,   \ " d i n n e r \ " : \ " S w o r d f i s h   F i l l e t ,   S a u s a g e | ,   &   C h o c o l a t e   C h i p   C o o k i e . \ " ,   \ " d a y O f W e e k \ " : \ " T u e s d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 2 \ "   }   ] ,   \ " w e d n e s d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " P o t a t o   B u t t o n s ,   E g g s | ,   &   N a a n   B r e a d . \ " ,   \ " l u n c h \ " : \ " B e e f   B u r g e r ,   S w e e t   P o t a t o s | ,   &   F r u i t   B a r . \ " ,   \ " d i n n e r \ " : \ " S p a g h e t t i ,   S a u s a g e | ,   &   T i r a   M i s o   C u p . \ " ,   \ " d a y O f W e e k \ " : \ " W e d n e s d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 3 \ "   }   ] ,   \ " t h u r s d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " E g g   P a t t y ,   H a s h b r o w n s | ,   &   B l u e b e r r i e s . \ " ,   \ " l u n c h \ " : \ " B e e f   R e u b e n ,   D o r i t o s | ,   &   S a l s a . \ " ,   \ " d i n n e r \ " : \ " S l i d e r s ,   M u s h r o o m s | ,   &   C a n n o l i . \ " ,   \ " d a y O f W e e k \ " : \ " T h u r s d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 4 \ "   }   ] ,   \ " f r i d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " O m l e t ,   B a c o n | ,   &   V a n i l l a   Y o g u r t   Q u a r t \ " ,   \ " l u n c h \ " : \ " V e g g i e   S o u p ,   C h i c k e n   B r e a s t   C l u b | ,   &   S n i c k e r d o o d l e s . \ " ,   \ " d i n n e r \ " : \ " B e e f   K e b o b s ,   G a r l i c   B r e a d | ,   &   M a c a r o o n s . \ " ,   \ " d a y O f W e e k \ " : \ " F r i d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 5 \ "   }   ] ,   \ " s a t u r d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " B a c o n ,   E g g s | ,   &   K a s h i . \ " ,   \ " l u n c h \ " : \ " C h i c k e n   N o o d l e   S o u p ,   T o r t i l l a s | ,   &   C h u r r o s . \ " ,   \ " d i n n e r \ " : \ " B e e k   B r i s k e t ,   G r a v y | ,   &   P e c a n   P i e \ " ,   \ " d a y O f W e e k \ " : \ " S a t u r d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 6 \ "   }   ] ,   \ " s u n d a y \ " :   [   {   \ " b r e a k f a s t \ " : \ " S c r a m b l e d   E g g s ,   B e l g i a n   W a f f l e s | ,   &   P o t a t o e s . \ " ,   \ " l u n c h \ " : \ " N o   l u n c h   t o d a y ! \ " ,   \ " d i n n e r \ " : \ " P i z z a   F l a t b r e a d ,   C h i c k e n   W i n g s | ,   &   C a r r o t   C a k e . \ " ,   \ " d a y O f W e e k \ " : \ " S u n d a y \ " ,   \ " d a t e S t r i n g \ " : \ " 2 0 1 5 - 0 5 - 1 7 \ "   }   ]   } "   t o   m y F i l e 
 c l o s e   a c c e s s   m y F i l e 
 y  } ~ } l     ��������  ��  ��   ~   �  l     ��������  ��  ��   �  � � � l      �� � ���   ��|
tell application "Numbers"
	activate
	try
		set the chosenDocumentFile to �
			(choose file of type �
				{"com.apple.iwork.numbers.numbers", �
					"com.apple.iwork.numbers.sffnumbers", �
					"com.microsoft.excel.xls", �
					"org.openxmlformats.spreadsheetml.sheet"} �
					default location (path to documents folder) �
				with prompt "Choose the Numbers document or Excel workbook to open:")
		open the chosenDocumentFile
	on error errorMessage number errorNumber
		if errorNumber is not -128 then
			display alert errorNumber message errorMessage
		end if
	end try
	
	
	tell application "Numbers"
		activate
		tell application "System Events"
			keystroke "f" using command down
			keystroke "monday"
			keystroke return
			click button 1 of windows of application process "Numbers"
			key code 125
			keystroke return
			keystroke "c" using command down
		end tell
	end tell
end tell
    � � � �� 
 t e l l   a p p l i c a t i o n   " N u m b e r s " 
 	 a c t i v a t e 
 	 t r y 
 	 	 s e t   t h e   c h o s e n D o c u m e n t F i l e   t o   � 
 	 	 	 ( c h o o s e   f i l e   o f   t y p e   � 
 	 	 	 	 { " c o m . a p p l e . i w o r k . n u m b e r s . n u m b e r s " ,   � 
 	 	 	 	 	 " c o m . a p p l e . i w o r k . n u m b e r s . s f f n u m b e r s " ,   � 
 	 	 	 	 	 " c o m . m i c r o s o f t . e x c e l . x l s " ,   � 
 	 	 	 	 	 " o r g . o p e n x m l f o r m a t s . s p r e a d s h e e t m l . s h e e t " }   � 
 	 	 	 	 	 d e f a u l t   l o c a t i o n   ( p a t h   t o   d o c u m e n t s   f o l d e r )   � 
 	 	 	 	 w i t h   p r o m p t   " C h o o s e   t h e   N u m b e r s   d o c u m e n t   o r   E x c e l   w o r k b o o k   t o   o p e n : " ) 
 	 	 o p e n   t h e   c h o s e n D o c u m e n t F i l e 
 	 o n   e r r o r   e r r o r M e s s a g e   n u m b e r   e r r o r N u m b e r 
 	 	 i f   e r r o r N u m b e r   i s   n o t   - 1 2 8   t h e n 
 	 	 	 d i s p l a y   a l e r t   e r r o r N u m b e r   m e s s a g e   e r r o r M e s s a g e 
 	 	 e n d   i f 
 	 e n d   t r y 
 	 
 	 
 	 t e l l   a p p l i c a t i o n   " N u m b e r s " 
 	 	 a c t i v a t e 
 	 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s " 
 	 	 	 k e y s t r o k e   " f "   u s i n g   c o m m a n d   d o w n 
 	 	 	 k e y s t r o k e   " m o n d a y " 
 	 	 	 k e y s t r o k e   r e t u r n 
 	 	 	 c l i c k   b u t t o n   1   o f   w i n d o w s   o f   a p p l i c a t i o n   p r o c e s s   " N u m b e r s " 
 	 	 	 k e y   c o d e   1 2 5 
 	 	 	 k e y s t r o k e   r e t u r n 
 	 	 	 k e y s t r o k e   " c "   u s i n g   c o m m a n d   d o w n 
 	 	 e n d   t e l l 
 	 e n d   t e l l 
 e n d   t e l l 
 �  � � � p       � � ������ 0 
cellnumber 
cellNumber��   �  � � � l     ����� � r      � � � m     ����  � o      ���� 0 
cellnumber 
cellNumber��  ��   �  � � � p       � � ������ 0 thetext theText��   �  � � � p       � � ������ 0 	theresult 	theResult��   �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 getmeals getMeals �  ��� � o      ���� 0 cellnum cellNum��  ��   � O    � � � � k   � � �  � � � I   	������
�� .miscactvnull��� ��� null��  ��   �  � � � Q   
 F � � � � k    ) � �  � � � r    # � � � l 	  ! ����� � l   ! ����� � I   !���� �
�� .sysostdfalis    ��� null��   � �� � �
�� 
ftyp � l 	   ����� � l 
   ����� � J     � �  � � � m     � � � � � > c o m . a p p l e . i w o r k . n u m b e r s . n u m b e r s �  � � � l 	   ����� � m     � � � � � D c o m . a p p l e . i w o r k . n u m b e r s . s f f n u m b e r s��  ��   �  � � � l 	   ���� � m     � � � � � . c o m . m i c r o s o f t . e x c e l . x l s��  �   �  ��~ � l 	   ��}�| � m     � � � � � L o r g . o p e n x m l f o r m a t s . s p r e a d s h e e t m l . s h e e t�}  �|  �~  ��  ��  ��  ��   � �{ � �
�{ 
dflc � l 
   ��z�y � l    ��x�w � I   �v ��u
�v .earsffdralis        afdr � m    �t
�t afdrdocs�u  �x  �w  �z  �y   � �s ��r
�s 
prmp � m     � � � � � l C h o o s e   t h e   N u m b e r s   d o c u m e n t   o r   E x c e l   w o r k b o o k   t o   o p e n :�r  ��  ��  ��  ��   � l      ��q�p � o      �o�o (0 chosendocumentfile chosenDocumentFile�q  �p   �  ��n � I  $ )�m ��l
�m .aevtodocnull  �    alis � l  $ % ��k�j � o   $ %�i�i (0 chosendocumentfile chosenDocumentFile�k  �j  �l  �n   � R      �h � �
�h .ascrerr ****      � **** � o      �g�g 0 errormessage errorMessage � �f ��e
�f 
errn � o      �d�d 0 errornumber errorNumber�e   � Z   1 F � ��c�b � >  1 6 � � � o   1 2�a�a 0 errornumber errorNumber � m   2 5�`�`�� � I  9 B�_ � �
�_ .sysodisAaleR        TEXT � o   9 :�^�^ 0 errornumber errorNumber � �] ��\
�] 
mesS � o   = >�[�[ 0 errormessage errorMessage�\  �c  �b   �  ��Z � O   G� � � � k   Z� � �  � � � Y   Z ��Y � ��X � O   l � � � k   u
 � �  � � � l  u u�W�V�U�W  �V  �U   �  � � � l   u u�T � ��T   � $ 
display dialog (i as string)
    � � � � < 
 d i s p l a y   d i a l o g   ( i   a s   s t r i n g ) 
 �  � � � l  u u�S�R�Q�S  �R  �Q   �  � � � r   u � � � � c   u ~ � � � 1   u z�P
�P 
NMCv � m   z }�O
�O 
TEXT � o      �N�N 0 thetext theText �  � � � Z   � � � ��M�L � =  � � � � � l  � � ��K�J � n   � � � � � 4  � ��I �
�I 
cwor � m   � ��H�H  � o   � ��G�G 0 thetext theText�K  �J   � m   � �   �  M o n d a y � k   � �  r   � � o   � ��F�F 0 i   o      �E�E 0 
mealindex1 
mealIndex1 �D r   � �	 J   � �

  l  � ��C�B n   � � 4  � ��A
�A 
cwor m   � ��@�@  o   � ��?�? 0 thetext theText�C  �B    l  � ��>�= n   � � 4  � ��<
�< 
cwor m   � ��;�;  o   � ��:�: 0 thetext theText�>  �=   �9 l  � ��8�7 n   � � 4  � ��6
�6 
cwor m   � ��5�5  o   � ��4�4 0 thetext theText�8  �7  �9  	 o      �3�3 0 datestringone dateStringOne�D  �M  �L   �  Z   � ��2�1 =  � � !  l  � �"�0�/" n   � �#$# 4  � ��.%
�. 
cwor% m   � ��-�- $ o   � ��,�, 0 thetext theText�0  �/  ! m   � �&& �''  T u e s d a y k   � �(( )*) r   � �+,+ o   � ��+�+ 0 i  , o      �*�* 0 
mealindex2 
mealIndex2* -�)- r   � �./. J   � �00 121 l  � �3�(�'3 n   � �454 4  � ��&6
�& 
cwor6 m   � ��%�% 5 o   � ��$�$ 0 thetext theText�(  �'  2 787 l  � �9�#�"9 n   � �:;: 4  � ��!<
�! 
cwor< m   � �� �  ; o   � ��� 0 thetext theText�#  �"  8 =�= l  � �>��> n   � �?@? 4  � ��A
� 
cworA m   � ��� @ o   � ��� 0 thetext theText�  �  �  / o      �� 0 datestringtwo dateStringTwo�)  �2  �1   BCB Z   �*DE��D =  � �FGF l  � �H��H n   � �IJI 4  � ��K
� 
cworK m   � ��� J o   � ��� 0 thetext theText�  �  G m   � �LL �MM  W e d n e s d a yE k  &NN OPO r  QRQ o  �� 0 i  R o      �� 0 
mealindex3 
mealIndex3P S�S r  &TUT J  "VV WXW l Y��Y n  Z[Z 4 �\
� 
cwor\ m  �
�
 [ o  �	�	 0 thetext theText�  �  X ]^] l _��_ n  `a` 4 �b
� 
cworb m  �� a o  �� 0 thetext theText�  �  ^ c�c l  d��d n   efe 4  � g
�  
cworg m  ���� f o  ���� 0 thetext theText�  �  �  U o      ���� "0 datestringthree dateStringThree�  �  �  C hih Z  +bjk����j = +7lml l +3n����n n  +3opo 4 .3��q
�� 
cworq m  12���� p o  +.���� 0 thetext theText��  ��  m m  36rr �ss  T h u r s d a yk k  :^tt uvu r  :?wxw o  :;���� 0 i  x o      ���� 0 
mealindex4 
mealIndex4v y��y r  @^z{z J  @Z|| }~} l @H���� n  @H��� 4 CH���
�� 
cwor� m  FG���� � o  @C���� 0 thetext theText��  ��  ~ ��� l HP������ n  HP��� 4 KP���
�� 
cwor� m  NO���� � o  HK���� 0 thetext theText��  ��  � ���� l PX������ n  PX��� 4 SX���
�� 
cwor� m  VW���� � o  PS���� 0 thetext theText��  ��  ��  { o      ����  0 datestringfour dateStringFour��  ��  ��  i ��� Z  c�������� = co��� l ck������ n  ck��� 4 fk���
�� 
cwor� m  ij���� � o  cf���� 0 thetext theText��  ��  � m  kn�� ���  F r i d a y� k  r��� ��� r  rw��� o  rs���� 0 i  � o      ���� 0 
mealindex5 
mealIndex5� ���� r  x���� J  x��� ��� l x������� n  x���� 4 {����
�� 
cwor� m  ~���� � o  x{���� 0 thetext theText��  ��  � ��� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � ���� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  ��  � o      ����  0 datestringfive dateStringFive��  ��  ��  � ��� Z  ��������� = ����� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � m  ���� ���  S a t u r d a y� k  ���� ��� r  ����� o  ������ 0 i  � o      ���� 0 
mealindex6 
mealIndex6� ���� r  ����� J  ���� ��� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � ��� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � ���� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  ��  � o      ���� 0 datestringsix dateStringSix��  ��  ��  � ���� Z  �
������� = ����� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � m  ���� ���  S u n d a y� k  ��� ��� r  ����� o  ������ 0 i  � o      ���� 0 
mealindex7 
mealIndex7� ���� r  ���� J  ��� ��� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � ��� l �������� n  ����� 4 �����
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  � ���� l � ������ n  � ��� 4 � ���
�� 
cwor� m  ������ � o  ������ 0 thetext theText��  ��  ��  � o      ���� "0 datestringseven dateStringSeven��  ��  ��  ��   � 4   l r���
�� 
NmCl� o   p q���� 0 i  �Y 0 i   � m   ] ^����  � I  ^ g�� ��
�� .corecnte****       ****  2  ^ c��
�� 
NmCl��  �X   �  r  : l 6���� b  6 b  %	 l !
����
 n  ! 1  !��
�� 
NMCv 4  ��
�� 
NmCl l ���� [   o  ���� 0 
mealindex1 
mealIndex1 m  ���� ��  ��  ��  ��  	 m  !$ �    &   l %5��~ n  %5 1  15�}
�} 
NMCv 4  %1�|
�| 
NmCl l )0�{�z [  )0 o  ),�y�y 0 
mealindex1 
mealIndex1 m  ,/�x�x $�{  �z  �  �~  ��  ��   o      �w�w 0 breakfastone breakfastOne  r  ;d l ;`�v�u b  ;`  b  ;O!"! l ;K#�t�s# n  ;K$%$ 1  GK�r
�r 
NMCv% 4  ;G�q&
�q 
NmCl& l ?F'�p�o' [  ?F()( o  ?B�n�n 0 
mealindex1 
mealIndex1) m  BE�m�m �p  �o  �t  �s  " m  KN** �++    &    l O_,�l�k, n  O_-.- 1  [_�j
�j 
NMCv. 4  O[�i/
�i 
NmCl/ l SZ0�h�g0 [  SZ121 o  SV�f�f 0 
mealindex1 
mealIndex12 m  VY�e�e �h  �g  �l  �k  �v  �u   o      �d�d 0 lunchone lunchOne 343 r  e�565 l e�7�c�b7 b  e�898 b  ey:;: l eu<�a�`< n  eu=>= 1  qu�_
�_ 
NMCv> 4  eq�^?
�^ 
NmCl? l ip@�]�\@ [  ipABA o  il�[�[ 0 
mealindex1 
mealIndex1B m  lo�Z�Z �]  �\  �a  �`  ; m  uxCC �DD    &  9 l y�E�Y�XE n  y�FGF 1  ���W
�W 
NMCvG 4  y��VH
�V 
NmClH l }�I�U�TI [  }�JKJ o  }��S�S 0 
mealindex1 
mealIndex1K m  ���R�R �U  �T  �Y  �X  �c  �b  6 o      �Q�Q 0 	dinnerone 	dinnerOne4 LML r  ��NON l ��P�P�OP b  ��QRQ b  ��STS l ��U�N�MU n  ��VWV 1  ���L
�L 
NMCvW 4  ���KX
�K 
NmClX l ��Y�J�IY [  ��Z[Z o  ���H�H 0 
mealindex1 
mealIndex1[ m  ���G�G �J  �I  �N  �M  T m  ��\\ �]]    &  R l ��^�F�E^ n  ��_`_ 1  ���D
�D 
NMCv` 4  ���Ca
�C 
NmCla l ��b�B�Ab [  ��cdc o  ���@�@ 0 
mealindex2 
mealIndex2d m  ���?�? $�B  �A  �F  �E  �P  �O  O o      �>�> 0 breakfasttwo breakfastTwoM efe r  ��ghg l ��i�=�<i b  ��jkj b  ��lml l ��n�;�:n n  ��opo 1  ���9
�9 
NMCvp 4  ���8q
�8 
NmClq l ��r�7�6r [  ��sts o  ���5�5 0 
mealindex2 
mealIndex2t m  ���4�4 �7  �6  �;  �:  m m  ��uu �vv    &  k l ��w�3�2w n  ��xyx 1  ���1
�1 
NMCvy 4  ���0z
�0 
NmClz l ��{�/�.{ [  ��|}| o  ���-�- 0 
mealindex2 
mealIndex2} m  ���,�, �/  �.  �3  �2  �=  �<  h o      �+�+ 0 lunchtwo lunchTwof ~~ r  ���� l ���*�)� b  ���� b  ����� l ����(�'� n  ����� 1  ���&
�& 
NMCv� 4  ���%�
�% 
NmCl� l ����$�#� [  ����� o  ���"�" 0 
mealindex2 
mealIndex2� m  ���!�! �$  �#  �(  �'  � m  ���� ���    &  � l ��� �� n  ���� 1  �
� 
NMCv� 4  ���
� 
NmCl� l ����� [  ���� o  ���� 0 
mealindex2 
mealIndex2� m  ��� �  �  �   �  �*  �)  � o      �� 0 	dinnertwo 	dinnerTwo ��� r  6��� l 2���� b  2��� b  !��� l ���� n  ��� 1  �
� 
NMCv� 4  ��
� 
NmCl� l ���� [  ��� o  �� 0 
mealindex3 
mealIndex3� m  �� �  �  �  �  � m   �� ���    &  � l !1���� n  !1��� 1  -1�
� 
NMCv� 4  !-�
�
�
 
NmCl� l %,��	�� [  %,��� o  %(�� 0 
mealindex3 
mealIndex3� m  (+�� $�	  �  �  �  �  �  � o      ��  0 breakfastthree breakfastThree� ��� r  7`��� l 7\���� b  7\��� b  7K��� l 7G���� n  7G��� 1  CG� 
�  
NMCv� 4  7C���
�� 
NmCl� l ;B������ [  ;B��� o  ;>���� 0 
mealindex3 
mealIndex3� m  >A���� ��  ��  �  �  � m  GJ�� ���    &  � l K[������ n  K[��� 1  W[��
�� 
NMCv� 4  KW���
�� 
NmCl� l OV������ [  OV��� o  OR���� 0 
mealindex3 
mealIndex3� m  RU���� ��  ��  ��  ��  �  �  � o      ���� 0 
lunchthree 
lunchThree� ��� r  a���� l a������� b  a���� b  au��� l aq������ n  aq��� 1  mq��
�� 
NMCv� 4  am���
�� 
NmCl� l el������ [  el��� o  eh���� 0 
mealindex3 
mealIndex3� m  hk���� ��  ��  ��  ��  � m  qt�� ���    &  � l u������� n  u���� 1  ����
�� 
NMCv� 4  u����
�� 
NmCl� l y������� [  y���� o  y|���� 0 
mealindex3 
mealIndex3� m  |���� ��  ��  ��  ��  ��  ��  � o      ���� 0 dinnerthree dinnerThree� ��� r  ����� l �������� b  ����� b  ����� l �������� n  ����� 1  ����
�� 
NMCv� 4  �����
�� 
NmCl� l �������� [  ����� o  ������ 0 
mealindex4 
mealIndex4� m  ������ ��  ��  ��  ��  � m  ���� ���    &  � l �������� n  ����� 1  ����
�� 
NMCv� 4  �����
�� 
NmCl� l �������� [  ����� o  ������ 0 
mealindex4 
mealIndex4� m  ������ $��  ��  ��  ��  ��  ��  � o      ���� 0 breakfastfour breakfastFour� ��� r  ����� l �������� b  ��   b  �� l ������ n  �� 1  ����
�� 
NMCv 4  ����
�� 
NmCl l ������ [  ��	
	 o  ������ 0 
mealindex4 
mealIndex4
 m  ������ ��  ��  ��  ��   m  �� �    &   l ������ n  �� 1  ����
�� 
NMCv 4  ����
�� 
NmCl l ������ [  �� o  ������ 0 
mealindex4 
mealIndex4 m  ������ ��  ��  ��  ��  ��  ��  � o      ���� 0 	lunchfour 	lunchFour�  r  � l ����� b  � b  �� l ������ n  �� 1  ����
�� 
NMCv 4  ���� 
�� 
NmCl  l ��!����! [  ��"#" o  ������ 0 
mealindex4 
mealIndex4# m  ������ ��  ��  ��  ��   m  ��$$ �%%    &   l �&����& n  �'(' 1  ���
�� 
NMCv( 4  ����)
�� 
NmCl) l ��*����* [  ��+,+ o  ������ 0 
mealindex4 
mealIndex4, m  ������ ��  ��  ��  ��  ��  ��   o      ���� 0 
dinnerfour 
dinnerFour -.- r  	2/0/ l 	.1����1 b  	.232 b  	454 l 	6����6 n  	787 1  ��
�� 
NMCv8 4  	��9
�� 
NmCl9 l :����: [  ;<; o  ���� 0 
mealindex5 
mealIndex5< m  ���� ��  ��  ��  ��  5 m  == �>>    &  3 l -?����? n  -@A@ 1  )-��
�� 
NMCvA 4  )��B
�� 
NmClB l !(C����C [  !(DED o  !$���� 0 
mealindex5 
mealIndex5E m  $'���� $��  ��  ��  ��  ��  ��  0 o      ���� 0 breakfastfive breakfastFive. FGF r  3\HIH l 3XJ����J b  3XKLK b  3GMNM l 3CO����O n  3CPQP 1  ?C��
�� 
NMCvQ 4  3?��R
�� 
NmClR l 7>S����S [  7>TUT o  7:���� 0 
mealindex5 
mealIndex5U m  :=���� ��  ��  ��  ��  N m  CFVV �WW    &  L l GWX����X n  GWYZY 1  SW��
�� 
NMCvZ 4  GS��[
�� 
NmCl[ l KR\����\ [  KR]^] o  KN���� 0 
mealindex5 
mealIndex5^ m  NQ���� ��  ��  ��  ��  ��  ��  I o      ���� 0 	lunchfive 	lunchFiveG _`_ r  ]�aba l ]�c��~c b  ]�ded b  ]qfgf l ]mh�}�|h n  ]miji 1  im�{
�{ 
NMCvj 4  ]i�zk
�z 
NmClk l ahl�y�xl [  ahmnm o  ad�w�w 0 
mealindex5 
mealIndex5n m  dg�v�v �y  �x  �}  �|  g m  mpoo �pp    &  e l q�q�u�tq n  q�rsr 1  }��s
�s 
NMCvs 4  q}�rt
�r 
NmClt l u|u�q�pu [  u|vwv o  ux�o�o 0 
mealindex5 
mealIndex5w m  x{�n�n �q  �p  �u  �t  �  �~  b o      �m�m 0 
dinnerfive 
dinnerFive` xyx r  ��z{z l ��|�l�k| b  ��}~} b  ��� l ����j�i� n  ����� 1  ���h
�h 
NMCv� 4  ���g�
�g 
NmCl� l ����f�e� [  ����� o  ���d�d 0 
mealindex6 
mealIndex6� m  ���c�c �f  �e  �j  �i  � m  ���� ���    &  ~ l ����b�a� n  ����� 1  ���`
�` 
NMCv� 4  ���_�
�_ 
NmCl� l ����^�]� [  ����� o  ���\�\ 0 
mealindex6 
mealIndex6� m  ���[�[ $�^  �]  �b  �a  �l  �k  { o      �Z�Z 0 breakfastsix breakfastSixy ��� r  ����� J  ���� ��Y� b  ����� b  ����� l ����X�W� n  ����� 1  ���V
�V 
NMCv� 4  ���U�
�U 
NmCl� l ����T�S� [  ����� o  ���R�R 0 
mealindex6 
mealIndex6� m  ���Q�Q �T  �S  �X  �W  � m  ���� ���    &  � l ����P�O� n  ����� 1  ���N
�N 
NMCv� 4  ���M�
�M 
NmCl� l ����L�K� [  ����� o  ���J�J 0 
mealindex6 
mealIndex6� m  ���I�I �L  �K  �P  �O  �Y  � o      �H�H 0 lunchsix lunchSix� ��� r  ���� l ���G�F� b  ���� b  ����� l ����E�D� n  ����� 1  ���C
�C 
NMCv� 4  ���B�
�B 
NmCl� l ����A�@� [  ����� o  ���?�? 0 
mealindex6 
mealIndex6� m  ���>�> �A  �@  �E  �D  � m  ���� ���    &  � l ���=�<� n  ���� 1  ��;
�; 
NMCv� 4  ���:�
�: 
NmCl� l ����9�8� [  ����� o  ���7�7 0 
mealindex6 
mealIndex6� m  ���6�6 �9  �8  �=  �<  �G  �F  � o      �5�5 0 	dinnersix 	dinnerSix� ��� r  0��� b  ,��� b  ��� l ��4�3� n  ��� 1  �2
�2 
NMCv� 4  �1�
�1 
NmCl� l ��0�/� [  ��� o  �.�. 0 
mealindex7 
mealIndex7� m  �-�- �0  �/  �4  �3  � m  �� ���    &  � l +��,�+� n  +��� 1  '+�*
�* 
NMCv� 4  '�)�
�) 
NmCl� l &��(�'� [  &��� o  "�&�& 0 
mealindex7 
mealIndex7� m  "%�%�% $�(  �'  �,  �+  � o      �$�$  0 breakfastseven breakfastSeven� ��� r  1Z��� b  1V��� b  1E��� l 1A��#�"� n  1A��� 1  =A�!
�! 
NMCv� 4  1=� �
�  
NmCl� l 5<���� [  5<��� o  58�� 0 
mealindex7 
mealIndex7� m  8;�� �  �  �#  �"  � m  AD�� ���    &  � l EU���� n  EU��� 1  QU�
� 
NMCv� 4  EQ��
� 
NmCl� l IP���� [  IP��� o  IL�� 0 
mealindex7 
mealIndex7� m  LO�� �  �  �  �  � o      �� 0 
lunchseven 
lunchSeven� ��� r  [���� l [����� b  [���� b  [o��� l [k���� n  [k��� 1  gk�
� 
NMCv� 4  [g��
� 
NmCl� l _f ��
  [  _f o  _b�	�	 0 
mealindex7 
mealIndex7 m  be�� �  �
  �  �  � m  kn �    &  � l o�� n  o 1  {�
� 
NMCv 4  o{�
� 
NmCl l sz	��	 [  sz

 o  sv�� 0 
mealindex7 
mealIndex7 m  vy� �  �  �  �  �  �  �  � o      ���� 0 dinnerseven dinnerSeven�   � n   G W 4   R W��
�� 
NmTb m   U V����  n   G R 4   M R��
�� 
NmSh m   P Q����  4   G M��
�� 
docu m   K L���� �Z   � m     �                                                                                  NMBR  alis    P  Macintosh HD               �4�H+   ��qNumbers.app                                                     �m��Y�)        ����  	                Applications    �4M�      �Z2i     ��q  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��   �  l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    l   
���� I    
������ 0 getmeals getMeals �� o    ���� 0 
cellnumber 
cellNumber��  ��  ��  ��     l     ��������  ��  ��    !"! l     ��������  ��  ��  " #$# l     ��������  ��  ��  $ %&% i    '(' I      �������� 0 
writemeals 
writeMeals��  ��  ( k    �)) *+* r     ,-, I    ��./
�� .rdwropenshor       file. l    0����0 I    ������
�� .sysonwflfile    ��� null��  ��  ��  ��  / ��1��
�� 
perm1 m    ��
�� boovtrue��  - o      ���� 0 myfile myFile+ 232 I   #��4��
�� .sysodlogaskr        TEXT4 I    ��5���� 0 parsestring parseString5 676 n    898 4    ��:
�� 
cobj: m    ���� 9 o    ���� 0 datestringone dateStringOne7 ;<; n    =>= 4    ��?
�� 
cobj? m    ���� > o    ���� 0 datestringone dateStringOne< @��@ n    ABA 4    ��C
�� 
cobjC m    ���� B o    ���� 0 datestringone dateStringOne��  ��  ��  3 D��D I  $���EF
�� .rdwrwritnull���     ****E b   $�GHG b   $�IJI b   $wKLK b   $sMNM b   $oOPO b   $kQRQ b   $gSTS b   $cUVU b   $_WXW b   $[YZY b   $W[\[ b   $?]^] b   $;_`_ b   $7aba b   $3cdc b   $/efe b   $+ghg b   $'iji b   $#klk b   $mnm b   $opo b   $qrq b   $ �sts b   $ �uvu b   $ �wxw b   $ �yzy b   $ �{|{ b   $ �}~} b   $ �� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ���� b   $ ��� b   $ {��� b   $ w��� b   $ _��� b   $ [��� b   $ W��� b   $ S��� b   $ O��� b   $ K��� b   $ G��� b   $ E��� b   $ C��� b   $ 1��� b   $ /��� b   $ -��� b   $ +��� b   $ )��� b   $ '��� m   $ %�� ��� 8 { " m o n d a y " :   [   {   " b r e a k f a s t " : "� o   % &���� 0 breakfastone breakfastOne� m   ' (�� ���  " ,   " l u n c h " : "� o   ) *���� 0 lunchone lunchOne� m   + ,�� ���  " ,   " d i n n e r " : "� o   - .���� 0 	dinnerone 	dinnerOne� m   / 0�� ��� N " ,   " d a y O f W e e k " : " M o n d a y " ,   " d a t e S t r i n g " : "� I   1 B������� 0 parsestring parseString� ��� n   2 6��� 4   3 6���
�� 
cobj� m   4 5���� � o   2 3���� 0 datestringone dateStringOne� ��� n   6 :��� 4   7 :���
�� 
cobj� m   8 9���� � o   6 7���� 0 datestringone dateStringOne� ���� n   : >��� 4   ; >���
�� 
cobj� m   < =���� � o   : ;���� 0 datestringone dateStringOne��  ��  � m   C D�� ���  "   }   ] ,� l 	 E F������ m   E F�� ��� 8 " t u e s d a y " :   [   {   " b r e a k f a s t " : "��  ��  � o   G J���� 0 breakfasttwo breakfastTwo� m   K N�� ���  " ,   " l u n c h " : "� o   O R���� 0 lunchtwo lunchTwo� m   S V�� ���  " ,   " d i n n e r " : "� o   W Z���� 0 	dinnertwo 	dinnerTwo� m   [ ^�� ��� P " ,   " d a y O f W e e k " : " T u e s d a y " ,   " d a t e S t r i n g " : "� I   _ v������� 0 parsestring parseString� ��� n   ` f��� 4   c f���
�� 
cobj� m   d e���� � o   ` c���� 0 datestringtwo dateStringTwo� ��� n   f l��� 4   i l���
�� 
cobj� m   j k���� � o   f i���� 0 datestringtwo dateStringTwo� ���� n   l r��� 4   o r���
�� 
cobj� m   p q���� � o   l o���� 0 datestringtwo dateStringTwo��  ��  � m   w z�� ���  "   }   ] ,� l 	 { ~������ m   { ~�� ��� < " w e d n e s d a y " :   [   {   " b r e a k f a s t " : "��  ��  � o    �����  0 breakfastthree breakfastThree� m   � ��� ���  " ,   " l u n c h " : "� o   � ����� 0 
lunchthree 
lunchThree� m   � ��� ���  " ,   " d i n n e r " : "� o   � ����� 0 dinnerthree dinnerThree� m   � ��� ��� T " ,   " d a y O f W e e k " : " W e d n e s d a y " ,   " d a t e S t r i n g " : "� I   � �������� 0 parsestring parseString�    n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� "0 datestringthree dateStringThree  n   � � 4   � ���	
�� 
cobj	 m   � �����  o   � ����� "0 datestringthree dateStringThree 
��
 n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� "0 datestringthree dateStringThree��  ��  � m   � � �  "   }   ] ,� l 	 � ����� m   � � � : " t h u r s d a y " :   [   {   " b r e a k f a s t " : "��  ��  � o   � ����� 0 breakfastfour breakfastFour� m   � � �  " ,   " l u n c h " : "� o   � ����� 0 	lunchfour 	lunchFour� m   � � �  " ,   " d i n n e r " : "� o   � ����� 0 
dinnerfour 
dinnerFour� m   � � � R " ,   " d a y O f W e e k " : " T h u r s d a y " ,   " d a t e S t r i n g " : "� I   � ������� 0 parsestring parseString  n   � � 4   � ���
�� 
cobj m   � �����  o   � �����  0 datestringfour dateStringFour   n   � �!"! 4   � ���#
�� 
cobj# m   � ����� " o   � �����  0 datestringfour dateStringFour  $��$ n   � �%&% 4   � ���'
�� 
cobj' m   � ����� & o   � �����  0 datestringfour dateStringFour��  ��  ~ m   � �(( �))  "   }   ] ,| l 	 � �*����* m   � �++ �,, 6 " f r i d a y " :   [   {   " b r e a k f a s t " : "��  ��  z o   � ��� 0 breakfastfive breakfastFivex m   � �-- �..  " ,   " l u n c h " : "v o   � ��~�~ 0 	lunchfive 	lunchFivet m   � �// �00  " ,   " d i n n e r " : "r o   ��}�} 0 
dinnerfive 
dinnerFivep m  11 �22 N " ,   " d a y O f W e e k " : " F r i d a y " ,   " d a t e S t r i n g " : "n I  �|3�{�| 0 parsestring parseString3 454 n  676 4  �z8
�z 
cobj8 m  �y�y 7 o  �x�x  0 datestringfive dateStringFive5 9:9 n  ;<; 4  �w=
�w 
cobj= m  �v�v < o  �u�u  0 datestringfive dateStringFive: >�t> n  ?@? 4  �sA
�s 
cobjA m  �r�r @ o  �q�q  0 datestringfive dateStringFive�t  �{  l m  "BB �CC  "   }   ] ,j l 	#&D�p�oD m  #&EE �FF : " s a t u r d a y " :   [   {   " b r e a k f a s t " : "�p  �o  h o  '*�n�n 0 breakfastsix breakfastSixf m  +.GG �HH  " ,   " l u n c h " : "d o  /2�m�m 0 lunchsix lunchSixb m  36II �JJ  " ,   " d i n n e r " : "` o  7:�l�l 0 	dinnersix 	dinnerSix^ m  ;>KK �LL R " ,   " d a y O f W e e k " : " S a t u r d a y " ,   " d a t e S t r i n g " : "\ I  ?V�kM�j�k 0 parsestring parseStringM NON n  @FPQP 4  CF�iR
�i 
cobjR m  DE�h�h Q o  @C�g�g 0 datestringsix dateStringSixO STS n  FLUVU 4  IL�fW
�f 
cobjW m  JK�e�e V o  FI�d�d 0 datestringsix dateStringSixT X�cX n  LRYZY 4  OR�b[
�b 
cobj[ m  PQ�a�a Z o  LO�`�` 0 datestringsix dateStringSix�c  �j  Z m  WZ\\ �]]  "   }   ] ,X l 	[^^�_�^^ m  [^__ �`` 6 " s u n d a y " :   [   {   " b r e a k f a s t " : "�_  �^  V o  _b�]�]  0 breakfastseven breakfastSevenT m  cfaa �bb  " ,   " l u n c h " : "R o  gj�\�\ 0 
lunchseven 
lunchSevenP m  kncc �dd  " ,   " d i n n e r " : "N o  or�[�[ 0 dinnerseven dinnerSevenL m  svee �ff N " ,   " d a y O f W e e k " : " S u n d a y " ,   " d a t e S t r i n g " : "J I  w��Zg�Y�Z 0 parsestring parseStringg hih n  x~jkj 4  {~�Xl
�X 
cobjl m  |}�W�W k o  x{�V�V "0 datestringseven dateStringSeveni mnm n  ~�opo 4  ���Uq
�U 
cobjq m  ���T�T p o  ~��S�S "0 datestringseven dateStringSevenn r�Rr n  ��sts 4  ���Qu
�Q 
cobju m  ���P�P t o  ���O�O "0 datestringseven dateStringSeven�R  �Y  H m  ��vv �ww  "   }   ]   }F �Nx�M
�N 
refnx o  ���L�L 0 myfile myFile�M  ��  & yzy l     �K�J�I�K  �J  �I  z {|{ l     �H�G�F�H  �G  �F  | }~} l     �E�D�C�E  �D  �C  ~ � l   ��B�A� I    �@�?�>�@ 0 
writemeals 
writeMeals�?  �>  �B  �A  � ��� l     �=�<�;�=  �<  �;  � ��� l     �:�9�8�:  �9  �8  � ��� i    ��� I      �7��6�7 0 parsestring parseString� ��� o      �5�5 0 inputday inputDay� ��� o      �4�4 0 
inputmonth 
inputMonth� ��3� o      �2�2 0 	inputyear 	inputYear�3  �6  � k     ��� ��� r     ��� c     ��� o     �1�1 0 
inputmonth 
inputMonth� m    �0
�0 
TEXT� o      �/�/ 0 
inputmonth 
inputMonth� ��� r    ��� c    	��� o    �.�. 0 inputday inputDay� m    �-
�- 
TEXT� o      �,�, 0 inputday inputDay� ��� r    ��� c    ��� o    �+�+ 0 	inputyear 	inputYear� m    �*
�* 
TEXT� o      �)�) 0 	inputyear 	inputYear� ��� Z    ������ l   ��(�'� =   ��� o    �&�& 0 
inputmonth 
inputMonth� m    �� ���  J a n u a r y�(  �'  � r    ��� c    ��� m    �� ���  0 1� m    �%
�% 
TEXT� l     ��$�#� o      �"�" 0 returnmonth returnMonth�$  �#  � ��� l    #��!� � =    #��� o     !�� 0 
inputmonth 
inputMonth� m   ! "�� ���  F e b r u a r y�!  �   � ��� r   & +��� c   & )��� m   & '�� ���  0 2� m   ' (�
� 
TEXT� l     ���� o      �� 0 returnmonth returnMonth�  �  � ��� l  . 1���� =  . 1��� o   . /�� 0 
inputmonth 
inputMonth� m   / 0�� ��� 
 M a r c h�  �  � ��� r   4 9��� c   4 7��� m   4 5�� ���  0 3� m   5 6�
� 
TEXT� l     ���� o      �� 0 returnmonth returnMonth�  �  � ��� l  < ?���� =  < ?��� o   < =�� 0 
inputmonth 
inputMonth� m   = >�� ��� 
 A p r i l�  �  � ��� r   B G��� c   B E��� m   B C�� ���  0 4� m   C D�
� 
TEXT� l     ���� o      �� 0 returnmonth returnMonth�  �  � ��� l  J M���� =  J M��� o   J K�
�
 0 
inputmonth 
inputMonth� m   K L�� ���  M a y�  �  � ��� r   P U��� c   P S��� m   P Q�� ���  0 5� m   Q R�	
�	 
TEXT� l     ���� o      �� 0 returnmonth returnMonth�  �  � ��� l  X [���� =  X [��� o   X Y�� 0 
inputmonth 
inputMonth� m   Y Z�� ���  J u n e�  �  � ��� r   ^ c��� c   ^ a   m   ^ _ �  0 6 m   _ `�
� 
TEXT� l     ��  o      ���� 0 returnmonth returnMonth�  �   �  l  f i���� =  f i	 o   f g���� 0 
inputmonth 
inputMonth	 m   g h

 �  J u l y��  ��    r   l q c   l o m   l m �  0 7 m   m n��
�� 
TEXT l     ���� o      ���� 0 returnmonth returnMonth��  ��    l  t w���� =  t w o   t u���� 0 
inputmonth 
inputMonth m   u v �  A u g u s t��  ��    r   z � c   z  !  m   z }"" �##  0 8! m   } ~��
�� 
TEXT l     $����$ o      ���� 0 returnmonth returnMonth��  ��   %&% l  � �'����' =  � �()( o   � ����� 0 
inputmonth 
inputMonth) m   � �** �++  S e p t e m b e r��  ��  & ,-, r   � �./. c   � �010 m   � �22 �33  0 91 m   � ���
�� 
TEXT/ l     4����4 o      ���� 0 returnmonth returnMonth��  ��  - 565 l  � �7����7 =  � �898 o   � ����� 0 
inputmonth 
inputMonth9 m   � �:: �;;  O c t o b e r��  ��  6 <=< r   � �>?> c   � �@A@ m   � ����� 
A m   � ���
�� 
TEXT? l     B����B o      ���� 0 returnmonth returnMonth��  ��  = CDC l  � �E����E =  � �FGF o   � ����� 0 
inputmonth 
inputMonthG m   � �HH �II  N o v e m b e r��  ��  D JKJ r   � �LML c   � �NON m   � ����� O m   � ���
�� 
TEXTM l     P����P o      ���� 0 returnmonth returnMonth��  ��  K QRQ l  � �S����S =  � �TUT o   � ����� 0 
inputmonth 
inputMonthU m   � �VV �WW  D e c e m b e r��  ��  R X��X r   � �YZY c   � �[\[ m   � ����� \ m   � ���
�� 
TEXTZ l     ]����] o      ���� 0 returnmonth returnMonth��  ��  ��  � k   � �^^ _`_ I  � ���a��
�� .sysodlogaskr        TEXTa c   � �bcb m   � �dd �ee < C o u l d   n o t   f i n d   t h e   r e t u r n   d a t ec m   � ���
�� 
TEXT��  ` f��f r   � �ghg m   � �ii �jj  0 0h l     k����k o      ���� 0 returnmonth returnMonth��  ��  ��  � lml l  � ���������  ��  ��  m non r   � �pqp c   � �rsr o   � ����� 0 inputday inputDays m   � ���
�� 
TEXTq l     t����t o      ���� 0 	returnday 	returnDay��  ��  o uvu r   � �wxw c   � �yzy o   � ����� 0 	inputyear 	inputYearz m   � ���
�� 
TEXTx l     {����{ o      ���� 0 
returnyear 
returnYear��  ��  v |}| l  � ���������  ��  ��  } ~~ r   � ���� c   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 
returnyear 
returnYear� m   � ��� ���  -� o   � ����� 0 returnmonth returnMonth� m   � ��� ���  -� o   � ����� 0 	returnday 	returnDay� m   � ���
�� 
TEXT� l     ������ o      ���� "0 finaldatestring finalDateString��  ��   ��� l  � ���������  ��  ��  � ��� L   � ��� o   � ����� "0 finaldatestring finalDateString� ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � F @
 tr -cd '\11\12\15\40-\46\50\51\54-\176' <Meals> MealsUpdated3
   � ��� � 
   t r   - c d   ' \ 1 1 \ 1 2 \ 1 5 \ 4 0 - \ 4 6 \ 5 0 \ 5 1 \ 5 4 - \ 1 7 6 '   < M e a l s >   M e a l s U p d a t e d 3 
� ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���������  � ���������� 0 getmeals getMeals�� 0 
writemeals 
writeMeals�� 0 parsestring parseString
�� .aevtoappnull  �   � ****� �� ����������� 0 getmeals getMeals�� ����� �  ���� 0 cellnum cellNum��  � ������������ 0 cellnum cellNum�� (0 chosendocumentfile chosenDocumentFile�� 0 errormessage errorMessage�� 0 errornumber errorNumber�� 0 i  � c���� � � � ����������� ����������������������~�}�|�{�z�y �x�w&�v�uL�t�sr�r�q��p�o��n�m��l�k�j�i�h�g*�f�e�dC�c�b\�au�`��_��^��]��\��[�Z$�Y=�XV�Wo�V��U��T��S��R��Q�P
�� .miscactvnull��� ��� null
�� 
ftyp�� 
�� 
dflc
�� afdrdocs
�� .earsffdralis        afdr
�� 
prmp�� 
�� .sysostdfalis    ��� null
�� .aevtodocnull  �    alis�� 0 errormessage errorMessage� �O�N�M
�O 
errn�N 0 errornumber errorNumber�M  ����
�� 
mesS
�� .sysodisAaleR        TEXT
�� 
docu
�� 
NmSh
� 
NmTb
�~ 
NmCl
�} .corecnte****       ****
�| 
NMCv
�{ 
TEXT�z 0 thetext theText
�y 
cwor�x 0 
mealindex1 
mealIndex1�w 0 datestringone dateStringOne�v 0 
mealindex2 
mealIndex2�u 0 datestringtwo dateStringTwo�t 0 
mealindex3 
mealIndex3�s "0 datestringthree dateStringThree�r 0 
mealindex4 
mealIndex4�q  0 datestringfour dateStringFour�p 0 
mealindex5 
mealIndex5�o  0 datestringfive dateStringFive�n 0 
mealindex6 
mealIndex6�m 0 datestringsix dateStringSix�l 0 
mealindex7 
mealIndex7�k "0 datestringseven dateStringSeven�j �i $�h 0 breakfastone breakfastOne�g �f �e 0 lunchone lunchOne�d �c �b 0 	dinnerone 	dinnerOne�a 0 breakfasttwo breakfastTwo�` 0 lunchtwo lunchTwo�_ 0 	dinnertwo 	dinnerTwo�^  0 breakfastthree breakfastThree�] 0 
lunchthree 
lunchThree�\ 0 dinnerthree dinnerThree�[ 0 breakfastfour breakfastFour�Z 0 	lunchfour 	lunchFour�Y 0 
dinnerfour 
dinnerFour�X 0 breakfastfive breakfastFive�W 0 	lunchfive 	lunchFive�V 0 
dinnerfive 
dinnerFive�U 0 breakfastsix breakfastSix�T 0 lunchsix lunchSix�S 0 	dinnersix 	dinnerSix�R  0 breakfastseven breakfastSeven�Q 0 
lunchseven 
lunchSeven�P 0 dinnerseven dinnerSeven�����*j O !*������v��j 
��� E�O�j W X  �a  �a �l Y hO*a k/a k/a k/,�k*a -j kh *a �/�*a ,a &E` O_ a k/a   )�E` O_ a l/_ a m/_ a �/mvE`  Y hO_ a k/a !  )�E` "O_ a l/_ a m/_ a �/mvE` #Y hO_ a k/a $  )�E` %O_ a l/_ a m/_ a �/mvE` &Y hO_ a k/a '  )�E` (O_ a l/_ a m/_ a �/mvE` )Y hO_ a k/a *  )�E` +O_ a l/_ a m/_ a �/mvE` ,Y hO_ a k/a -  )�E` .O_ a l/_ a m/_ a �/mvE` /Y hO_ a k/a 0  )�E` 1O_ a l/_ a m/_ a �/mvE` 2Y hU[OY�[O*a _ a 3/a ,a 4%*a _ a 5/a ,%E` 6O*a _ a 7/a ,a 8%*a _ a 9/a ,%E` :O*a _ a ;/a ,a <%*a _ a =/a ,%E` >O*a _ a 3/a ,a ?%*a _ "a 5/a ,%E` @O*a _ "a 7/a ,a A%*a _ "a 9/a ,%E` BO*a _ "a ;/a ,a C%*a _ "a =/a ,%E` DO*a _ %a 3/a ,a E%*a _ %a 5/a ,%E` FO*a _ %a 7/a ,a G%*a _ %a 9/a ,%E` HO*a _ %a ;/a ,a I%*a _ %a =/a ,%E` JO*a _ (a 3/a ,a K%*a _ (a 5/a ,%E` LO*a _ (a 7/a ,a M%*a _ (a 9/a ,%E` NO*a _ (a ;/a ,a O%*a _ (a =/a ,%E` PO*a _ +a 3/a ,a Q%*a _ +a 5/a ,%E` RO*a _ +a 7/a ,a S%*a _ +a 9/a ,%E` TO*a _ +a ;/a ,a U%*a _ +a =/a ,%E` VO*a _ .a 3/a ,a W%*a _ .a 5/a ,%E` XO*a _ .a 7/a ,a Y%*a _ .a 9/a ,%kvE` ZO*a _ .a ;/a ,a [%*a _ .a =/a ,%E` \O*a _ 1a 3/a ,a ]%*a _ 1a 5/a ,%E` ^O*a _ 1a 7/a ,a _%*a _ 1a 9/a ,%E` `O*a _ 1a ;/a ,a a%*a _ 1a =/a ,%E` bUU� �L(�K�J���I�L 0 
writemeals 
writeMeals�K  �J  � �H�H 0 myfile myFile� G�G�F�E�D�C�B�A��@��?��>����=��<��;��:���9��8��7��6�5�4�3�2(+�1-�0/�/1�.BE�-G�,I�+K�*\_�)a�(c�'e�&v�%�$
�G .sysonwflfile    ��� null
�F 
perm
�E .rdwropenshor       file�D 0 datestringone dateStringOne
�C 
cobj�B 0 parsestring parseString
�A .sysodlogaskr        TEXT�@ 0 breakfastone breakfastOne�? 0 lunchone lunchOne�> 0 	dinnerone 	dinnerOne�= 0 breakfasttwo breakfastTwo�< 0 lunchtwo lunchTwo�; 0 	dinnertwo 	dinnerTwo�: 0 datestringtwo dateStringTwo�9  0 breakfastthree breakfastThree�8 0 
lunchthree 
lunchThree�7 0 dinnerthree dinnerThree�6 "0 datestringthree dateStringThree�5 0 breakfastfour breakfastFour�4 0 	lunchfour 	lunchFour�3 0 
dinnerfour 
dinnerFour�2  0 datestringfour dateStringFour�1 0 breakfastfive breakfastFive�0 0 	lunchfive 	lunchFive�/ 0 
dinnerfive 
dinnerFive�.  0 datestringfive dateStringFive�- 0 breakfastsix breakfastSix�, 0 lunchsix lunchSix�+ 0 	dinnersix 	dinnerSix�* 0 datestringsix dateStringSix�)  0 breakfastseven breakfastSeven�( 0 
lunchseven 
lunchSeven�' 0 dinnerseven dinnerSeven�& "0 datestringseven dateStringSeven
�% 
refn
�$ .rdwrwritnull���     ****�I�*j  �el E�O*��k/��l/��m/m+ j O��%�%�%�%�%�%*��k/��l/��m/m+ %�%�%_ %a %_ %a %_ %a %*_ �k/_ �l/_ �m/m+ %a %a %_ %a %_ %a %_ %a %*_ �k/_ �l/_ �m/m+ %a  %a !%_ "%a #%_ $%a %%_ &%a '%*_ (�k/_ (�l/_ (�m/m+ %a )%a *%_ +%a ,%_ -%a .%_ /%a 0%*_ 1�k/_ 1�l/_ 1�m/m+ %a 2%a 3%_ 4%a 5%_ 6%a 7%_ 8%a 9%*_ :�k/_ :�l/_ :�m/m+ %a ;%a <%_ =%a >%_ ?%a @%_ A%a B%*_ C�k/_ C�l/_ C�m/m+ %a D%a E�l F� �#��"�!��� �# 0 parsestring parseString�" ��� �  ���� 0 inputday inputDay� 0 
inputmonth 
inputMonth� 0 	inputyear 	inputYear�!  � �������� 0 inputday inputDay� 0 
inputmonth 
inputMonth� 0 	inputyear 	inputYear� 0 returnmonth returnMonth� 0 	returnday 	returnDay� 0 
returnyear 
returnYear� "0 finaldatestring finalDateString� ������������
"*2:�H�V�d�i��
� 
TEXT� 
� � 
� .sysodlogaskr        TEXT�  ���&E�O��&E�O��&E�O��  
��&E�Y ���  
��&E�Y ���  
��&E�Y ���  
��&E�Y ���  
��&E�Y ���  
��&E�Y w��  
��&E�Y i��  a �&E�Y Y�a   a �&E�Y G�a   a �&E�Y 5�a   a �&E�Y #�a   a �&E�Y a �&j Oa E�O��&E�O��&E�O�a %�%a %�%�&E�O�OP� �������
� .aevtoappnull  �   � ****� k     ��  ��� �� ��  �  �  �  � �
�	��
 0 
cellnumber 
cellNumber�	 0 getmeals getMeals� 0 
writemeals 
writeMeals� kE�O*�k+ O*j+  ascr  ��ޭ