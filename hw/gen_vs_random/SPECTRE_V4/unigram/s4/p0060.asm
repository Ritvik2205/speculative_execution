.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -16
neg ax
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
bts dx, 26
cmovnb dx, dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
add si, bx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
or bl, -80
cmp rcx, -121
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
movsx rax, di
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], dx
xor cl, cl
and al, -124
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
bt cx, dx
adc edx, -125
cmovnb ecx, eax
cmp dl, dil
test ax, 21107
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
add al, -127
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
or sil, sil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 52
xor cx, -80
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 71
add dl, 29 # instrumentation
cmovnl rax, rsi
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 65
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 8
cmovle edi, ebx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 31
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmp dl, bl
imul edi, eax, 65
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
