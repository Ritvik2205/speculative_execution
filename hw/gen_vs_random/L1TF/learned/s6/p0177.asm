.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 56
sub sil, -99
cmovnle rbx, rsi
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
inc dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 79
test bl, 84
xor ax, 22976
test al, 15
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdi + rcx]
jmp .bb_0.2
.bb_0.2:
test cl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
