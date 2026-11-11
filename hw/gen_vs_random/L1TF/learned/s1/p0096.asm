.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add cl, 88
cmovle rax, rsi
sbb dil, al
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb esi, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
