.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, dil
mov dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 56
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
sbb ax, -19255
test edx, 573099753
bts eax, ebx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 77
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 34
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
add cx, cx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
cmovnp ecx, esi
and dil, dl
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
sbb sil, 108
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
test ecx, 65
sbb eax, -1688332460
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
test eax, 1561062795
cmovz rdi, rdx
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
