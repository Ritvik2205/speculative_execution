.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, rax
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 79
and ax, -16061
or sil, -78
cmovno ax, dx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and bl, -74 # instrumentation
cmovns edx, ecx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or rax, -689609688
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
btr cx, di
or dil, -41
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
cmovnp dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
