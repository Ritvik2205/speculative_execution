.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and di, ax
not dl
adc bl, 127
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
btc rsi, rbx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
mul ecx
add bl, 95 # instrumentation
mov cl, 28
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
btc esi, edx
sub bx, 24
cmp al, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
movzx ax, dil
add cl, -119 # instrumentation
sbb eax, -2001663753
sub rsi, -104
add eax, -2075159577
inc dx
imul cx, di
and eax, -1948401947
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
adc edi, -83
sub al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 4
sbb edx, 43
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
or al, cl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or dil, cl
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
or bl, sil
xor rbx, -99
xchg rax, rsi
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
adc edi, -83
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
