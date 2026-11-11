.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
add dl, 47
sub dl, dil
add dl, 47
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
test sil, -31
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
