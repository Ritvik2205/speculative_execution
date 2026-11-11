.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor bx, 91
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
test cl, -123
xor al, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
bt edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
test al, bl
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and eax, -829294476
not al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
xor al, -26
and al, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
