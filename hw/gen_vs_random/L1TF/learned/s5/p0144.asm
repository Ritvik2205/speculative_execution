.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rbx]
sub al, -3
cwde
jl .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, dil
cmp rbx, 71
not al
xor cl, sil
cwde
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
