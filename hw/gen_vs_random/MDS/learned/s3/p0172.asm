.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or dil, -71
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
or bl, 100
bt bx, dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
test dl, -95
and rax, 452940266
or rdx, -48
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
test eax, -409834435
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
