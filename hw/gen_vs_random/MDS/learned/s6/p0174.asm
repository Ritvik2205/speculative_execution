.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or rdi, 21
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor dl, dil
jmp .bb_0.1
.bb_0.1:
and bl, bl
xor al, -4
or al, bl
or bl, dil
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
