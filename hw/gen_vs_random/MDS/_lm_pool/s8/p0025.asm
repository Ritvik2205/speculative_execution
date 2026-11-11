.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
or bl, cl
btc rax, 106
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
test al, dl
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or cl, 7
xor cl, 24
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and al, bl
and dil, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
or cx, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
