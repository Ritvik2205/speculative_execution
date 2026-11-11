.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 8
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
mov bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
xchg bl, sil
test di, cx
sub dil, dil
sbb esi, 15
and rax, -1128038253
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
