.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, edi
cmp al, dil
xchg rsi, rbx
test edx, 573099753
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
xor sil, sil
or bl, 31
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
or dil, dl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, ecx
add al, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
or edx, -127
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 65
adc al, 36
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 13
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmp al, 81
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
add bl, bl
test cl, -89
xor esi, ecx
xor eax, -164167056
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 42
dec si
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 33
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
sub ebx, ecx
add cl, cl
and cl, al
sub esi, 95
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and bl, al
add cl, -42 # instrumentation
adc sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
