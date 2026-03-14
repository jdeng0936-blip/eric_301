#include "mini_printf.h"

static int xvprintf(char buff[], char const * fmt, va_list arp)
{
    unsigned int r, i, j, w, f;
    unsigned long v;
    char s[16], c, d, *p;
    char *out = buff;

    for (;;)
    {
        c = *fmt++;                 /* Get a char */
        if (!c)
        {
            break;                    /* End of format? */
        }
        if (c != '%')               /* Pass through it if not a % sequense */
        {
            *out++ = c;
            continue;
        }
        f = 0;
        c = *fmt++;                 /* Get first char of the sequense */
        if (c == '0')               /* Flag: '0' padded */
        {
            f = 1;
            c = *fmt++;
        }
        else
        {
            if (c == '-')             /* Flag: left justified */
            {
                f = 2;
                c = *fmt++;
            }
        }
        for (w = 0; c >= '0' && c <= '9'; c = *fmt++)
        {
            w = w * 10 + c - '0';     /* Minimum width */
        }
        if (c == 'l' || c == 'L')   /* Prefix: Size is long int */
        {
            f |= 4;
            c = *fmt++;
        }
        if (!c)
        {
            break;                    /* End of format? */
        }
        d = c;
        if (d >= 'a')
        {
            d -= 0x20;
        }
        switch (d)                  /* Type is... */
        {
        case 'S' :                  /* String */
            p = va_arg(arp, char*);
            for (j = 0; p[j]; j++);
            if (!(f & 2) && j < w)
            {
                memset(out, ' ', w - j);
                out += w - j;
                memcpy(out, p, j);
                out += j;
                j = w;
            }
            else
            {
                memcpy(out, p, j);
                out += j;
            }
            if (j < w)
            {
                memset(out, ' ', w - j);
                out += w - j;
            }
            continue;
        case 'C' :                  /* Character */
            *out++ = (char)va_arg(arp, int);
            continue;
        case 'B' :                  /* Binary */
            r = 2;
            break;
        case 'O' :                  /* Octal */
            r = 8;
            break;
        case 'D' :                  /* Signed decimal */
        case 'U' :                  /* Unsigned decimal */
            r = 10;
            break;
        case 'X' :                  /* Hexdecimal */
            r = 16;
            break;
        default:                    /* Unknown type (passthrough) */
            *out++ = c;
            continue;
        }
        /* Get an argument and put it in numeral */
        if(f & 4)
        {
            v = va_arg(arp, long);
        }
        else
        {
            if(d == 'D')
            {
                v = (long)va_arg(arp, int);
            }
            else
            {
                v = va_arg(arp, unsigned int);
            }
        }
        if (d == 'D' && (v & 0x80000000))
        {
            v = 0 - v;
            f |= 8;
        }
        i = 0;
        do
        {
            d = (char)(v % r);
            v /= r;
            if (d > 9)
            {
                d += (c == 'x') ? 0x27 : 0x07;
            }
            s[i++] = d + '0';
        }
        while (v && i < sizeof(s));
        if (f & 8)
        {
            s[i++] = '-';
        }
        j = i;
        d = (f & 1) ? '0' : ' ';
        if (!(f & 2) && j < w)
        {
            memset(out, d, w - j);
            out += w - j;
            do
            {
                *out++ = s[--i];
            }
            while(i);
            j = w;
        }
        else
        {
            do
            {
                *out++ = s[--i];
            }
            while(i);
        }
        if (j < w)
        {
            memset(out, ' ', w - j);
            out += w - j;
        }
    }
    return ((int)(out - buff));
}

int xsprintf(char* buff, char const * fmt, ...)
{
    va_list arp;
    int len;

    va_start(arp, fmt);
    len = xvprintf(buff, fmt, arp);
    va_end(arp);
    buff[len] = 0;
    return len;
}

