.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sub al, sil
sub cl, dil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
jmp .bb_0.1
.bb_0.1:
add dl, 47
cmp sil, 25
sbb bl, bl
xor dl, sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
