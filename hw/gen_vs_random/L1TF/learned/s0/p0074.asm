.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 8
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
cmovb di, bx
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 69
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 15
lea edi, qword ptr [rcx]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
