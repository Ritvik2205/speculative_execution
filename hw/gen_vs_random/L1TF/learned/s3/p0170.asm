.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
test al, 15
test sil, 29
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
or al, -48
add ax, -10746
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
lea rdx, qword ptr [rdi + rcx + 56]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
