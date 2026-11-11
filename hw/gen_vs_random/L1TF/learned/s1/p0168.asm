.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
xor al, 89
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 40
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
cmp al, 27
sub ax, 26007
sbb bl, -88
test cl, 22
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
