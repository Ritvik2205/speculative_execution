.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rax, 342397759
add ax, 6980
sbb eax, 1830317432
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test rsi, -1408527332
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
adc dl, 48
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add bl, -26 # instrumentation
cmovle rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
test bx, cx
adc rsi, 110
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
