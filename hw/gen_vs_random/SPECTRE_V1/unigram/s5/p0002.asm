.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 1
sbb eax, 1332762061
sub ecx, 11
or al, al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 51
and cl, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub edx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 74
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmovno edx, esi
and al, -54
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 79
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], dx
cmp al, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
