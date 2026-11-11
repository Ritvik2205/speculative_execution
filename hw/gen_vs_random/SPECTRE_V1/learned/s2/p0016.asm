.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdi]
xchg eax, edx
sub bl, -19
movsx dx, cl
cmp sil, al
test cl, -120
sbb cl, sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
test al, 42
and cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
