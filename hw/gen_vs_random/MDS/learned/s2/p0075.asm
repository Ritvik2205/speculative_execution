.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test dl, 27
and ax, 29207
and dl, bl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
test al, 22
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
