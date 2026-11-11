.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb eax, esi
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sub al, cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rbx, -64
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
cmovbe esi, eax
and rdi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or eax, edi
cmovb bx, ax
mul rdx
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
