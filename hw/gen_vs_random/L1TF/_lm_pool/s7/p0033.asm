.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, sil
cmp ax, -21455
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
xor al, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
