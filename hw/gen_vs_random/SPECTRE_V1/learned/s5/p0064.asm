.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
lea rbx, qword ptr [rcx + rdx + 19]
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
or al, 19
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 20
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dl, -36
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
