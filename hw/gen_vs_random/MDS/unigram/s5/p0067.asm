.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 37 # instrumentation
cmovnbe ax, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 75
and bl, 120 # instrumentation
cmovnp dx, di
or dil, 12
and rbx, rcx
and bl, -28 # instrumentation
cmovl rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
test dx, ax
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
cmovs rcx, rsi
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dil, 38 # instrumentation
cmovbe ebx, edi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
or dil, al
xor rcx, 71
or dil, bl
bt edi, 225
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
