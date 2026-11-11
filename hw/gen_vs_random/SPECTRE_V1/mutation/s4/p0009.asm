.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
add ax, 6656
test rsi, -1408527332
adc dl, -49
sbb rax, 786640702
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb eax, 1332762061
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
add bl, -26 # instrumentation
cmovle rcx, rbx
test bx, cx
adc rsi, 110
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
