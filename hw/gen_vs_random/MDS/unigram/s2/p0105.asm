.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
cmovnz si, cx
xor rbx, 89
and bl, 26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
or al, -24
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and cl, cl
and dl, -73
cmovo ebx, edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
