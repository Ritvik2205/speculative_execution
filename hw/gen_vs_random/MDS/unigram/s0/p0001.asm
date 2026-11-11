.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
or cl, 100
or ecx, 48
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 82
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
bts si, dx
and bl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
xor dil, 61
bts rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
cmovl rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and dx, si
and bl, -49 # instrumentation
cmovno bx, dx
cmovnp ecx, ebx
and dx, 24
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
