.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and dl, bl
or rax, -443578116
test al, -56
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or rax, 699028911
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
cmovle rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
