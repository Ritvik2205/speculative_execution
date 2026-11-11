.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 76
cmovno di, si
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 89
xor bl, -5
add dil, -7
jmp .bb_0.1
.bb_0.1:
test bl, 84
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
cmp cx, 54
adc bl, -14
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 10
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
