.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
cmp rsi, 53
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
cmp bl, sil
and sil, 11
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
sub al, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
lea ax, qword ptr [rbx + rdx + 32397]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 76
sub dl, -48
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
