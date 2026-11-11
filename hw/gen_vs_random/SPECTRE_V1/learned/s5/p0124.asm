.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
lea cx, qword ptr [rdi]
inc rdx
test al, -126
add bl, -95
setno dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add ax, bx
lea di, qword ptr [rbx + rax + 73]
sbb eax, 1332762061
lea di, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
