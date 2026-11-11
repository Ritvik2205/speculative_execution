.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, dx
sub sil, -18
lea ax, qword ptr [rax]
sub al, bl
xor sil, -33
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 59
sub dil, -111
lea rax, qword ptr [rdi + rsi + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
