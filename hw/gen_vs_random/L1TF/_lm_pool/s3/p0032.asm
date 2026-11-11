.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
or rsi, 88
and rdi, rbx
jmp .bb_0.1
.bb_0.1:
or dl, al
add ecx, 54
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xor dx, 50
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
lea rbx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
