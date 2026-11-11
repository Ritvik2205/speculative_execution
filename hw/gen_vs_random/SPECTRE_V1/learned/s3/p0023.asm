.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and dl, -109
dec al
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add al, -72
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
