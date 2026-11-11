.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
cmovle rax, rdx
cmovnb rbx, rbx
bt ecx, eax
btr rbx, rbx
xor dil, 5
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 43
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
xor al, al
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
cmovle ecx, eax
or di, 0b1000000000000000 # instrumentation
bsf di, di
cmovnb di, cx
or dl, 22
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and dl, -33 # instrumentation
cmovns rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
