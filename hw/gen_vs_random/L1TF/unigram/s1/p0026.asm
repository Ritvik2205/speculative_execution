.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdi, rsi
and esi, ebx
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
sbb eax, -403815802
cmovl ax, di
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 80
and cl, 68
xchg sil, sil
sub sil, -99
or rax, 1808026647
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
