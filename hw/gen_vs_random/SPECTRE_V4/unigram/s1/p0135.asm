.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -44
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
bt rsi, rdi
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rbx
mul eax
cmp sil, cl
and rdx, 84
and al, sil
bt ecx, 177
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 21
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
inc ax
not cl
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rbx, 34
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
adc bl, cl
imul dl
or dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
adc si, ax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 76
or cl, dil
add sil, cl
test dl, -125
cmovnz rbx, rsi
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
adc sil, -112
sub si, -92
and ebx, -4
or di, di
cmp al, 98
or si, 85
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
mov cl, 14
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi]
cmp cl, sil
test dx, 28394
mul dl
neg ax
neg di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
