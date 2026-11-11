.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
cmp rsi, 76
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
or bl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
test rdx, 56
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 30
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
