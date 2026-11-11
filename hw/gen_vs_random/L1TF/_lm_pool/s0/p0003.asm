.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
test eax, 645518295
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
lea rsi, qword ptr [rdx + rdi]
lea ecx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 84 # instrumentation
cmovle ax, cx
and di, 99
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 88
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
