.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
inc bl
mov bl, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
cmp dil, 74
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
cmp rcx, 71
add sil, al
and bl, 89
sub dil, -39
xor cl, al
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
