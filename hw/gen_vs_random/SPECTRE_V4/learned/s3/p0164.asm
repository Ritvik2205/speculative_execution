.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 13
mul ax
add rdx, rcx
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
cmp esi, ebx
or eax, -1434249782
sub al, 99
and bx, ax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
add rdx, rax
xor al, 56
mul dil
add cl, -117 # instrumentation
lea rsi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 37
add rcx, 60
add bl, bl
xor al, 59
add cx, cx
sbb dl, dl
and rcx, -102
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add si, 4
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
adc al, bl
cmovb di, di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or ecx, edx
cmovnbe rcx, rax
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
adc bl, cl
cmp ax, -15409
test ax, di
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
imul cl
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
