.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ecx, ebx
cmovb di, di
add cl, 56 # instrumentation
cmovle rbx, rcx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 67
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
movzx rcx, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 68
bts rdx, rdx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
test ebx, 1263899340
sub rdx, 22
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
sub rcx, 6
xor bl, dl
sub dil, -10
adc bx, bx
not si
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovle rdi, rdx
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
movzx edx, dil
add al, 72 # instrumentation
cmovle ax, si
xor al, dil
cmovle rdi, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovz rax, rcx
xor dil, dil
cmovnle ebx, edx
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
add sil, 72 # instrumentation
cmovle si, bx
xchg sil, sil
imul rdi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 89
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
inc ecx
cmovnp cx, dx
test al, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
