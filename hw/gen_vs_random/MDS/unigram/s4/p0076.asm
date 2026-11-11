.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and bl, -56 # instrumentation
cmovnle ebx, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
xor bl, -27
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
or dl, -21
and cl, 61 # instrumentation
cmovl bx, cx
cmovnl si, ax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 48
bts rdi, 130
jmp .bb_0.1
.bb_0.1:
and dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
or dil, -71
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 14
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and dl, 53 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
cmovnp rdi, rdx
cmovo rcx, rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
