.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmp sil, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, dx
adc sil, bl
xchg edx, eax
sbb ebx, 36
xor al, sil
cmp al, 70
btr si, ax
adc cx, 100
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
test ebx, 1263899340
xor si, 10
xor cl, sil
or cl, bl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
cmovb edi, edi
xor cl, al
add cl, -26 # instrumentation
btr ecx, 51
mov rax, rdx
test ecx, 7
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
sub dil, dil
xor bl, dil
test dil, bl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], bx
or bl, 77
add si, 4
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 10
sub dil, cl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 93
sub ebx, ecx
or cl, dl
xchg rdx, rsi
cmovnb rbx, rdi
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sbb dx, ax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
imul ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
