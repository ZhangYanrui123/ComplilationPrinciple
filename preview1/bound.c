// bound.c
void updateEnv(char *str)
{
char *tmp;
tmp = getenv("MYENV");
if(tmp != NULL) strcpy(str,tmp);
}
void updateEnvSafe(char *str, size_t strSize)

{
char *tmp;
tmp = getenv("MYENV");
if(tmp != NULL)
{
strncpy(str, tmp, strSize -1);
str[strSize - 1] = '/0';
}
}
//END
