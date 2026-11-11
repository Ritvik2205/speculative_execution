.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rcx
xor ax, -1005
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
xor cl, 15
or al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
cmovnp bx, di
test dx, 16353
btc rcx, 42
jmp .bb_0.1
.bb_0.1:
or rax, -1561934807
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and dl, 120 # instrumentation
cmovnle ax, dx
xor cl, 98
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
or al, dil
and cl, -103 # instrumentation
cmovns ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
