.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
sbb rax, 1161375577
adc dl, 80
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
test rsi, -1408527332
sbb eax, 1392087754
add ax, 6656
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
adc rsi, 110
add bl, -26 # instrumentation
cmovle rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
test bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
