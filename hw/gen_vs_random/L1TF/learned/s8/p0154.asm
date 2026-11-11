.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
lea ax, qword ptr [rax + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
cmovno bx, di
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test rdx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
