.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
xor bl, -38
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
sub cl, dil
cmp bl, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
sbb dl, sil
sub al, -89
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
