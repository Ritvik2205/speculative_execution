.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 6980
sbb eax, 99727957
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb rax, 342397759
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
test rsi, -1408527332
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
adc dl, 107
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -26 # instrumentation
cmovle rcx, rbx
test bx, cx
adc rsi, 110
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
