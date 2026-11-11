.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
test dil, dl
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or dx, 125
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rax, 1250429750
or dl, dil
and cl, dl
or rax, 1461812833
xor al, -26
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
