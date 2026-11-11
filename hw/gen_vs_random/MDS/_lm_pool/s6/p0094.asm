.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 35
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
btr cx, ax
test cl, 0
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or cl, 7
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
or dil, al
xor cl, 15
test al, -81
or dil, -71
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rsi
not bl
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
