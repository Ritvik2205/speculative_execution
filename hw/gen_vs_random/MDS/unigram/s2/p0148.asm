.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and dl, -73 # instrumentation
cmovns rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
xor di, bx
and dl, 107 # instrumentation
cmovs ecx, edi
bts rax, 149
cmovnp rsi, rcx
btc rbx, 87
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
test rdi, 35
and rdi, 47
cmovnle rbx, rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
or sil, bl
cmovp edi, ebx
and dl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 6
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
