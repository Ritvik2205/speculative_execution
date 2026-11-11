.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
adc edi, 59
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 104
xor al, -15
cmovbe esi, ecx
cmovnp esi, ecx
xor al, -28
jmp .bb_0.1
.bb_0.1:
btc rdx, 138
and dl, -115 # instrumentation
cmovl bx, dx
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
or cl, dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
xor rsi, 22
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
