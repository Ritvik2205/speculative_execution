.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 27
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
or sil, dl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
and rcx, 107
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and edx, -44
cmovbe ax, bx
cmovns si, ax
btr rax, 29
test rcx, -613256812
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 76
and cl, bl
test sil, sil
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 39
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
