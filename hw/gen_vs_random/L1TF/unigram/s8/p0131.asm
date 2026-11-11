.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
sbb rax, 1131444263
test dl, -37
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
add bl, 89 # instrumentation
sbb dl, cl
imul dx, ax, 32
or rcx, 61
lea esi, qword ptr [rbx + rdi + 29710]
test dil, -126
sbb sil, 19
setb al
add dl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
lea edi, qword ptr [rdx]
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
lea eax, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
