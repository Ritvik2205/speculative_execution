.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and dl, sil
xor rdi, -9
btc si, bx
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
or al, -58
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
