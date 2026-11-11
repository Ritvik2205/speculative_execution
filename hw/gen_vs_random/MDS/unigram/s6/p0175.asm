.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rcx, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
test cl, bl
and rdi, rdx
and dl, -127 # instrumentation
cmovno edi, ecx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
test esi, 1857129931
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
bt edi, 225
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
