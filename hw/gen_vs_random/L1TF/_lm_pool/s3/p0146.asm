.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
test cl, dil
sbb bl, -88
jmp .bb_0.1
.bb_0.1:
xchg sil, dil
bts rcx, 20
lea si, qword ptr [rcx + rdi]
xor bl, al
and rax, 1163013815
lea ecx, qword ptr [rbx + rcx + 44]
sub dil, -70
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
