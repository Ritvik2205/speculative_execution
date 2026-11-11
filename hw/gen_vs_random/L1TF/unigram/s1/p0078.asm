.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 72
sbb edx, 23
movsx ebx, cl
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
movsx rsi, si
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
not bl
xor bx, 74
bswap edi
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
add al, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 99
add al, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
