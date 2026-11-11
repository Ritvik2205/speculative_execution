.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -92
sbb sil, -78
sub al, bl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and dl, -111
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
add dil, -75
xor bl, -38
test al, 34
movsx rbx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
