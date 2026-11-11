.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub rax, -15
or al, -48
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cbw
jmp .bb_0.2
.bb_0.2:
xchg al, dil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 70
not eax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
