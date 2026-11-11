.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
test sil, 29
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and cl, al
lea rax, qword ptr [rdi + rsi]
xor al, 16
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor dl, al
jmp .bb_0.1
.bb_0.1:
or bl, al
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
lea rdi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
