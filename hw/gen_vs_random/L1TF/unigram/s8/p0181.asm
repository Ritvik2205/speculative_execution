.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 76
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
xor dl, 64
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
sbb rdi, 85
setbe dl
jmp .bb_0.1
.bb_0.1:
cmovnp ax, bx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
add dl, -78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
sub dl, 105
setbe sil
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
