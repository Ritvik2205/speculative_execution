.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
lea eax, qword ptr [rdx + rdx + 832]
adc bx, 22
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bx, 5
sub al, dil
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
cmp sil, dil
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
bswap rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
