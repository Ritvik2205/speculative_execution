.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
test cl, 93
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 1163013815
jmp .bb_0.1
.bb_0.1:
imul rbx
test bl, 84
xor bx, 27
jmp .bb_0.2
.bb_0.2:
lea si, qword ptr [rdx]
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
