.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
or al, -5
test al, dl
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
xor al, 16
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
