.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rdx, rdx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -25
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovnbe rdx, rdi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add bl, 26 # instrumentation
sbb dil, cl
or al, bl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 74
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
imul rdi, rax, 70
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
