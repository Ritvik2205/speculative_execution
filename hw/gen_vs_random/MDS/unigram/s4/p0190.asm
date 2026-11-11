.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
bt si, 64
xor edx, 48
xor edi, 38
cmovbe ax, ax
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
cmovz ecx, ebx
bt dx, ax
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
xor cl, -79
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and al, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
or cl, cl
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
btc rdx, rax
cmovnz di, ax
not ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
