.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add rax, 909978580
test al, -32
or cl, 105
or rax, 1362710293
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
