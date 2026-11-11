.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax]
imul dx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
test esi, 55
sub bl, dil
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 73
add bl, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, rbx
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
lea bx, qword ptr [rdi + rax + 8]
cmovs rdx, rdx
add dl, -125 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 72
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
