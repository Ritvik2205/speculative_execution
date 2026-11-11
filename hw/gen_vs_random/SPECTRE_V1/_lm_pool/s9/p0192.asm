.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
and dl, al
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and al, -54
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
