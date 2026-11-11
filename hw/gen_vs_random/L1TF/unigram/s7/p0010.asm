.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr esi, edx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
xor rax, rcx
xor cl, 89
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
sbb dl, -26
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
or rsi, rax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add al, 104 # instrumentation
sbb rax, 1890168613
sub eax, 77
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
