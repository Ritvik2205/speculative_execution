.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 29
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and dl, sil
add dl, al
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
sub dl, bl
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
