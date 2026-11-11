.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -595096626
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
test esi, 20
add bl, -109 # instrumentation
sbb ebx, 60
xor dil, 8
sub dl, dil
sbb dl, dl
adc bl, dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 42
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 98
bts edi, 167
and dl, 47
and ecx, 75
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
btc bx, si
cmovnbe bx, cx
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
cmovb ax, ax
cmovle esi, edx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rsi, rbx
mul rbx
sub dl, 43
imul bx, ax
or dl, 56
sub al, dl
sub rax, -701741274
sub rsi, 26
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
sub bx, 46
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
add rdi, rcx
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
xor cl, -85
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
btc dx, 16
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
