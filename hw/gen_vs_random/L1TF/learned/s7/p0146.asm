.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor sil, dl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
setb bl
sbb sil, cl
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
