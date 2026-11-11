.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
test cl, sil
xchg al, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
xor al, bl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
test dil, -126
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
