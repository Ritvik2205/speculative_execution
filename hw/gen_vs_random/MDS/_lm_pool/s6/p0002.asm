.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 96
bts rdi, rax
or al, -22
test cl, 62
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
bt eax, edx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
xor cl, 98
xor rcx, 71
or sil, -49
xor dl, -19
or bl, -125
test dl, 9
cmovle cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
