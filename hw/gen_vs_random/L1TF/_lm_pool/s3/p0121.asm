.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rbx]
xor cx, 113
cmp ax, -14781
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 34
sub dil, -70
jmp .bb_0.1
.bb_0.1:
or bl, -88
lea si, qword ptr [rdi + rcx + 5]
test sil, sil
add sil, -61
and rsi, rdx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
