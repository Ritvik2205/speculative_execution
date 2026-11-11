.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and dl, bl
or cl, dil
or al, 37
cmovnp rsi, rax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
not bl
xor cl, sil
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and esi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
