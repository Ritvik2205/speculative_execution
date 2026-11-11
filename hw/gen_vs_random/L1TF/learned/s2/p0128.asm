.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub rdx, 39
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdx, 88
jmp .bb_0.1
.bb_0.1:
test cl, 97
sub ax, -3178
test cl, dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
