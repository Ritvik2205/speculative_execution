.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
mov dil, dl
sub al, -1
add al, -44
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
