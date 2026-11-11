.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
sub cl, cl
xor bl, -38
add cl, 44 # instrumentation
cmovz ebx, edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
sbb dl, 127
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 95
add bl, 2 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 85
setl dil
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
