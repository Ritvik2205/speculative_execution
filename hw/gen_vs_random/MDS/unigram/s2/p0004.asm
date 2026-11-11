.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and dl, al
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
or rdx, 54
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 42
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
cmovnle edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 80
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and sil, bl
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
or dl, -115
or edi, 55
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
cmovo dx, dx
xor cl, -79
cmovnp rdx, rdi
cmovnle edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
