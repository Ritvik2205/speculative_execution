.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and bl, 121 # instrumentation
bt rdi, 138
bt eax, edx
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
or si, 0b1000000000000000 # instrumentation
bsf si, si
cmovz dx, dx
or al, 30
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
or bl, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
bt ecx, edi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
or bl, 43
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
or bl, sil
and bl, 15 # instrumentation
cmovb bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
