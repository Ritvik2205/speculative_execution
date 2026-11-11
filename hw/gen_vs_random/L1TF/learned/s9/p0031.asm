.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
sub sil, -99
xor rax, 20
and dil, 58
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add bl, 68
lea di, qword ptr [rdx + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cbw
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
