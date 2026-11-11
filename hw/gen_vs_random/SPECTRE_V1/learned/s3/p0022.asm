.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb ecx, eax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
xor al, -89
xor dl, dil
test dil, -116
lea esi, qword ptr [rbx + rdx + 20]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
add al, bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
