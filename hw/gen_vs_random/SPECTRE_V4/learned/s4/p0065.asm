.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ebx
test al, dil
sub dl, 107
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
cmp ebx, -27
cmp dx, -26
sbb al, 95
cmp rcx, -121
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
