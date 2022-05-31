# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 1 3



# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\\pic\\include\\__size_t.h" 1 3



typedef unsigned size_t;
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 2 3

# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\\pic\\include\\__null.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 2 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdarg.h" 1 3






typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);
# 11 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 2 3
# 43 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 3
struct __prbuf
{
 char * ptr;
 void (* func)(char);
};
# 85 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\conio.h" 1 3







# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\errno.h" 1 3
# 29 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\errno.h" 3
extern int errno;
# 8 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\conio.h" 2 3




extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);



extern char * cgets(char *);
extern void cputs(const char *);
# 85 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 2 3



extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);
# 180 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdio.h" 3
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\ctype.h" 1 3



extern __bit isalpha(char);
extern __bit isupper(char);
extern __bit islower(char);
extern __bit isdigit(char);
extern __bit isxdigit(char);
extern __bit isspace(char);
extern __bit ispunct(char);
extern __bit isalnum(char);
extern __bit isprint(char);
extern __bit isgraph(char);
extern __bit iscntrl(char);


extern char toupper(char);
extern char tolower(char);
# 2 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdlib.h" 1 3






typedef unsigned short wchar_t;







typedef struct {
 int rem;
 int quot;
} div_t;
typedef struct {
 unsigned rem;
 unsigned quot;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;
# 65 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdlib.h" 3
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);



extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);



extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\xc8debug.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 99 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\stdlib.h" 2 3





extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);
# 3 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\string.h" 1 3
# 14 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\string.h" 3
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);
# 36 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\string.h" 3
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\math.h" 1 3



# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC16Fxxx_DFP/1.3.42/xc8\\pic\\include\\__unsupported.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\math.h" 2 3
# 30 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\math.h" 3
extern double fabs(double);
extern double floor(double);
extern double ceil(double);
extern double modf(double, double *);
extern double sqrt(double);
extern double atof(const char *);
extern double sin(double) ;
extern double cos(double) ;
extern double tan(double) ;
extern double asin(double) ;
extern double acos(double) ;
extern double atan(double);
extern double atan2(double, double) ;
extern double log(double);
extern double log10(double);
extern double pow(double, double) ;
extern double exp(double) ;
extern double sinh(double) ;
extern double cosh(double) ;
extern double tanh(double);
extern double eval_poly(double, const double *, int);
extern double frexp(double, int *);
extern double ldexp(double, int);
extern double fmod(double, double);
extern double trunc(double);
extern double round(double);
# 7 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\include\\c90\\float.h" 1 3
# 8 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c" 2




#pragma warning disable 350
# 358 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
const static unsigned long dpowers[] = {1, 10, 100, 1000, 10000,

       100000, 1000000, 10000000, 100000000,
       1000000000

        };


const static unsigned long hexpowers[] = {1, 0x10, 0x100, 0x1000,

       0x10000, 0x100000, 0x1000000, 0x10000000

       };


const static unsigned long octpowers[] = {1, 010, 0100, 01000, 010000, 0100000,

      01000000,
       010000000, 0100000000, 01000000000, 010000000000,




       };
# 396 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
extern const double _powers_[], _npowers_[];



extern unsigned long _div_to_l_(double, double);

extern unsigned long _tdiv_to_l_(float, float);
# 416 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
static double
fround(unsigned char prec)
{


 if(prec>=110)
  return 0.5 * _npowers_[prec/100U+18U] * _npowers_[(prec%100U)/10U+9U] * _npowers_[prec%10U];
 else if(prec > 10)
  return 0.5 * _npowers_[prec/10U+9U] * _npowers_[prec%10U];
 return 0.5 * _npowers_[prec];
}





static double
scale(signed char scl)
{

 if(scl < 0) {
  scl = -scl;
  if(scl>=110)
   return _npowers_[(unsigned char)(scl/100+18)] * _npowers_[(unsigned char)((scl%100)/10+9)] * _npowers_[(unsigned char)(scl%10)];
  else if(scl > 10)
   return _npowers_[(unsigned char)(scl/10+9)] * _npowers_[(unsigned char)(scl%10)];
  return _npowers_[(unsigned char)scl];
 }
 if(scl>=110)
  return _powers_[(unsigned char)(scl/100+18)] * _powers_[(unsigned char)((scl%100)/10+9)] * _powers_[(unsigned char)(scl%10)];
 else if(scl > 10)
  return _powers_[(unsigned char)(scl/10+9)] * _powers_[(unsigned char)(scl%10)];
 return _powers_[(unsigned char)scl];
}
# 463 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
int
# 498 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
vsprintf(char * sp, register const char * f, register va_list ap)
{
# 512 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
 char c;

 int width;


 int prec;







 unsigned short flag;






 char d;
 double fval;
 int eexp;





 union {
  unsigned long vd;
  double integ;
 } tmpval;

 unsigned long val;
 unsigned len;
 const char * cp;


 *ap = __va_start();


 while((c = *f++)) {

  if(c != '%')

  {
   ((*sp++ = (c)));
   continue;
  }


  width = 0;

  flag = 0;

  for(;;) {
   switch(*f) {

   case '-':
    flag |= 0x08;
    f++;
    continue;



   case ' ':
    flag |= 0x01;
    f++;
    continue;



   case '+':
    flag |= 0x02;
    f++;
    continue;


   case '#':
    flag |= 0x800;
    f++;
    continue;


   case '0':
    flag |= 0x04;
    f++;
    continue;

   }
   break;
  }


  if(flag & 0x02)
   flag &= ~0x01;


  if(flag & 0x08)
   flag &= ~0x04;


  if(isdigit((unsigned)*f)) {
   width = 0;
   do {
    width *= 10;
       width += *f++ - '0';
   } while(isdigit((unsigned)*f));

  } else if(*f == '*') {
   width = (*(int *)__va_arg((*(int **)ap), (int)0));
   f++;

  }


  if(*f == '.') {
   flag |= 0x4000;
   f++;

   if(*f == '*') {
    prec = (*(int *)__va_arg((*(int **)ap), (int)0));
    if (prec < 0) {
     prec = 0;
     flag &= ~0x4000;

     flag |= 0x1000;

    }
    f++;
   } else

   {
    prec = 0;
    while(isdigit((unsigned)*f)) {
     prec *= 10;
        prec += *f++ - '0';
    }
   }
  } else {
   prec = 0;

   flag |= 0x1000;

  }


loop:

  switch(c = *f++) {

  case 0:
   goto alldone;


  case 'l':

   flag |= 0x10;
   goto loop;
# 688 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
  case 'f':
   flag |= 0x400;
   break;




  case 'E':
   flag |= 0x20;

  case 'e':
   flag |= 0x100;
   break;




  case 'G':
   flag |= 0x20;

  case 'g':
   flag |= 0x200;
   break;




  case 'o':

   flag |= 0x40;

   break;



  case 'd':
  case 'i':
   break;



  case 'p':
# 738 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
  case 'X':

   flag |= 0x20;



  case 'x':


   flag |= 0x80;

   break;




  case 's':





    cp = (*(const char * *)__va_arg((*(const char * **)ap), (const char *)0));





   if(!cp)
    cp = "(null)";



   len = 0;
   while(cp[len])
    len++;


dostring:


   if(prec && (prec < ((int)len)))
    len = (unsigned int)prec;


   if(((unsigned)width) > len)
    width -= len;
   else
    width = 0;

   if(!(flag & 0x08))

    while(width--)
     ((*sp++ = (' ')));

   while(len--)
    ((*sp++ = (*cp++)));

   if(flag & 0x08)
    while(width--)
     ((*sp++ = (' ')));

   continue;
# 810 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
  case 'c':
# 825 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
   c = (char)(*(int *)__va_arg((*(int **)ap), (int)0));


  default:


   cp = (char *)&c;
   len = 1;
   goto dostring;
# 843 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
  case 'u':
   flag |= 0xC0;
   break;


  }


  if(flag & (0x700)) {

   if(flag & 0x1000)

    prec = 6;
   fval = (*(double *)__va_arg((*(double **)ap), (double)0));
   if(fval < 0.0) {
    fval = -fval;
    flag |= 0x03;
   }
   eexp = 0;
   if( fval!=0) {
    (void)(*(&eexp) = (unsigned char)((*(unsigned long *)&fval >> 23) & 255) - 126);
    eexp--;
    eexp *= 3;
    eexp /= 10;
    if(eexp < 0)
     eexp--;



    tmpval.integ = scale(-eexp);
    tmpval.integ *= fval;
    if(tmpval.integ < 1.0)
     eexp--;
    else if(tmpval.integ >= 10.0)
     eexp++;
   }

   if(eexp <= 0)
    c = 1;
   else
    c = (char)eexp;
   if(

     flag & 0x100

     ||



     (flag & 0x200 && (eexp < -4 || eexp >= (int)prec))

    ) {

    if(prec && flag & 0x200)
     prec--;

    if((unsigned)prec > (sizeof dpowers/sizeof dpowers[0]) - 2)
     c = (sizeof dpowers/sizeof dpowers[0]) - 2;
    else
     c = (char)prec;
    if( fval!=0) {
     fval /= scale(eexp-c);
# 919 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
     if(fval - (double)(unsigned long)fval >= 0.5)
      fval += 0.5;
     if((unsigned long)fval >= dpowers[c+1u]) {
      fval *= 1e-1;
      eexp++;
     } else if((unsigned long)fval < dpowers[c]) {
      fval *= 10.0;
      eexp--;
     }

    }

    if(flag & 0x200 && !(flag & 0x800)) {
     if(prec > (int)((sizeof dpowers/sizeof dpowers[0])))
      prec = (sizeof dpowers/sizeof dpowers[0]);







     val = (unsigned long)fval;
     while(val && val % 10 == 0) {
      prec--;
      val /= 10;
     }

     if(prec < c) {
      fval /= scale(c-prec);
      c = (char)prec;
     }

    }


    width -= prec + 5;

    if(prec || flag & 0x800)
     width--;

    if(flag & 0x03)
     width--;
# 972 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
    if(flag & 0x04) {

     if(flag & 0x02)
      ((*sp++ = (flag & 0x01 ? '-' : '+')));
     else if(flag & 0x01)
      ((*sp++ = (' ')));

     while(width > 0) {
      ((*sp++ = ('0')));
      width--;
     }
    } else

    {


     if(!(flag & 0x08))

      while(width > 0) {
       ((*sp++ = (' ')));
       width--;
      }


     if(flag & 0x02)
      ((*sp++ = (flag & 0x01 ? '-' : '+')));





     else if(flag & 0x01)
      ((*sp++ = (' ')));

    }




    val = (unsigned long)fval;
    ((*sp++ = (val/dpowers[c] + '0')));
    val %= dpowers[c];


    if(prec || flag & 0x800)



    {
     ((*sp++ = ('.')));
     prec -= c;
     while(c--) {




      if(flag & 0x200 && val == 0) {
       prec = c = 0;
       break;
      }

      ((*sp++ = ('0' + (val/dpowers[c]))));
      val %= dpowers[c];

     }
     while(prec) {
      ((*sp++ = ('0')));
      prec--;
     }
    }

    if(flag & 0x20)
     ((*sp++ = ('E')));
    else

     ((*sp++ = ('e')));
    if(eexp < 0) {
     eexp = -eexp;
     ((*sp++ = ('-')));
    } else
     ((*sp++ = ('+')));
# 1065 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
    ((*sp++ = (((unsigned)eexp) / 10 + '0')));
    ((*sp++ = (((unsigned)eexp) % 10 + '0')));

    if((flag & 0x08) && width > 0)
     do
      ((*sp++ = (' ')));
     while(--width);

     continue;
    }
# 1113 "C:\\Program Files\\Microchip\\xc8\\v2.35\\pic\\sources\\c90\\common\\doprnt.c"
    if(flag & 0x200) {
     if(eexp < 0)
      prec -= (eexp+1);

     val = (unsigned long)fval;
     for(c = 0 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
      if(val < dpowers[c])
       break;
     prec -= c;
     if(prec <= 12)
      fval += fround((unsigned int)prec);


     {
      double temp;
      temp = scale(prec);
      temp *= fval - (double)val;
      val = (unsigned long)temp;
     }
     while(prec && val % 10 == 0) {
      val /= 10;
      prec--;
     }
    } else

     if(prec <= 12)
      fval += fround((unsigned int)prec);


    if((eexp > 9)||(fval != 0 && (unsigned long)fval == 0 && eexp > 1)) {



     if(tmpval.integ < 4.294967296){
      eexp -= (sizeof dpowers/sizeof dpowers[0])-1;
     }else{
      eexp -= (sizeof dpowers/sizeof dpowers[0])-2;
     }
     tmpval.integ = scale(eexp);
     val = ((sizeof(double)== 3) ? _tdiv_to_l_(fval,tmpval.integ) : _div_to_l_(fval,tmpval.integ));


     fval = 0.0;
    } else {
     val = (unsigned long)fval;
     fval -= (double)val;
     eexp = 0;
    }

    for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
     if(val < dpowers[c])
      break;



    width -= prec + c + eexp;
    if(

      flag & 0x800 ||

      prec)
     width--;
    if(flag & 0x03)
     width--;


    if(flag & 0x04) {

     if(flag & 0x02)



      ((*sp++ = (flag & 0x01 ? '-' : '+')));

     else


     if(flag & 0x01)
      ((*sp++ = (' ')));


     while(width > 0) {
      ((*sp++ = ('0')));
      width--;
     }

    } else

    {

     if(!(flag & 0x08))


     while(width > 0) {
      ((*sp++ = (' ')));
      width--;
     }


    if(flag & 0x02)



     ((*sp++ = (flag & 0x01 ? '-' : '+')));

    else if(flag & 0x01)
     ((*sp++ = (' ')));

   }
   while(c--) {



    {
     tmpval.vd = val/dpowers[c];
     tmpval.vd %= 10;
     ((*sp++ = ('0' + tmpval.vd)));
    }

   }
   while(eexp > 0) {
    ((*sp++ = ('0')));
    eexp--;
   }
   if(prec > (int)((sizeof dpowers/sizeof dpowers[0])-2))
    c = (sizeof dpowers/sizeof dpowers[0])-2;
   else
    c = (char)prec;
   prec -= (int)c;

   if(c || flag & 0x800)



    ((*sp++ = ('.')));





   val = (unsigned long)(fval * scale((signed char)c));
   while(c--) {
    tmpval.vd = val/dpowers[c];
    tmpval.vd %= 10;
    ((*sp++ = ('0' + tmpval.vd)));
    val %= dpowers[c];
   }

   while(prec) {
    ((*sp++ = ('0')));
    prec--;
   }

   if((flag & 0x08) && width > 0)
    do
     ((*sp++ = (' ')));
    while(--width);

   continue;
  }




  if((flag & (0xC0)) == 0x00)

  {

   if(flag & 0x10)
    val = (unsigned long)(*(long *)__va_arg((*(long **)ap), (long)0));
   else

    val = (unsigned long)(*(int *)__va_arg((*(int **)ap), (int)0));

   if((long)val < 0) {
    flag |= 0x03;
    val = -val;
   }

  }

  else




  {







    if(flag & 0x10)
    val = (*(unsigned long *)__va_arg((*(unsigned long **)ap), (unsigned long)0));
   else


    val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
  }


  if(prec == 0 && val == 0)
   prec++;


  switch((unsigned char)(flag & (0xC0))) {




  case 0x00:


  case 0xC0:


   for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
    if(val < dpowers[c])
     break;

   break;




  case 0x80:

   for(c = 1 ; c != sizeof hexpowers/sizeof hexpowers[0] ; c++)
    if(val < hexpowers[c])
     break;

   break;





  case 0x40:

   for(c = 1 ; c != sizeof octpowers/sizeof octpowers[0] ; c++)
    if(val < octpowers[c])
     break;

   break;



  }


  if(c < prec)
   c = (char)prec;
  else if(prec < c)
   prec = c;


  if(width && flag & 0x03)
   width--;

  if(flag & 0x4000) {
   if(width > prec)
    width -= prec;
   else
    width = 0;
  }



  if((flag & (

      0x04|

       (0xC0)|0x800)) == (0x40|0x800)) {
   if(width)
    width--;
  } else



  if((flag & ((0xC0)|0x800)) == (0x80|0x800)) {



   if(width > 2)
    width -= 2;
   else
    width = 0;
  }




  if(width > c)
   width -= c;
  else
   width = 0;


  if(flag & 0x04) {

   if(flag & 0x02)
    ((*sp++ = (flag & 0x01 ? '-' : '+')));





   else


   if(flag & 0x01)
    ((*sp++ = (' ')));


   else if((flag & ((0xC0)|0x800)) == (0x80|0x800)) {
    ((*sp++ = ('0')));

    ((*sp++ = (flag & 0x20 ? 'X' : 'x')));





   }


   if(width)
    do
     ((*sp++ = ('0')));
    while(--width);

  } else

  {

   if(width

     && !(flag & 0x08)

     )
    do
     ((*sp++ = (' ')));
    while(--width);


   if(flag & 0x02)
    ((*sp++ = (flag & 0x01 ? '-' : '+')));







   else if(flag & 0x01)
    ((*sp++ = (' ')));



   if((flag & ((0xC0)|0x800)) == (0x40|0x800))
    ((*sp++ = ('0')));
   else



   if((flag & ((0xC0)|0x800)) == (0x80|0x800)) {



    ((*sp++ = ('0')));

    ((*sp++ = (flag & 0x20 ? 'X' : 'x')));





   }


  }




  while(prec--) {

   switch((unsigned char)(flag & (0xC0)))

   {




  case 0x00:


  case 0xC0:


    c = (val / dpowers[(unsigned int)prec]) % 10 + '0';

    break;





   case 0x80:

   {
    unsigned char idx = (val / hexpowers[(unsigned int)prec]) & 0xF;

    c = (flag & 0x20 ? "0123456789ABCDEF" : "0123456789abcdef")[idx];





   }

    break;





   case 0x40:

    c = ((val / octpowers[(unsigned int)prec]) & 07) + '0';

    break;


   }
   ((*sp++ = (c)));
  }


  if((flag & 0x08) && width > 0)
   do
    ((*sp++ = (' ')));
   while(--width);

 }

alldone:


 *sp = 0;

 return 0;
}
