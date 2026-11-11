.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
or eax, 1495028166
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
