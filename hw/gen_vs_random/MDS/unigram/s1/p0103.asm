.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
xor rdi, -9
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
cmovnb bx, di
not dil
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
test dil, -51
test ebx, -2015966884
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
or ecx, 73
not rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
