.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
cmp dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
xor eax, edx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
xor dl, 71
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo ax, bx
sub ebx, 75
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 50
lea ecx, qword ptr [rcx + rbx]
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 44
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
