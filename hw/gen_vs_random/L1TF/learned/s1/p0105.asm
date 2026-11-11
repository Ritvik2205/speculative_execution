.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
sbb bl, sil
xor eax, -885407671
xor dil, -42
bts eax, 232
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and cl, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
test di, 4
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
