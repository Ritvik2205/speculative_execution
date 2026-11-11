.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sub bl, al
and sil, 111
sbb bl, sil
lea rdi, qword ptr [rsi + rsi + 9]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
bts ax, 34
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
lea si, qword ptr [rsi + rcx]
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
