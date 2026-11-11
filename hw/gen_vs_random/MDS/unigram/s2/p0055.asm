.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
xor al, 9
bts rdi, rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
bt dx, di
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
bt ecx, edx
xor ecx, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
or dl, -89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
bt ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
btr esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
