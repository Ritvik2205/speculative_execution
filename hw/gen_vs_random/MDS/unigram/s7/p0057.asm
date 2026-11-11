.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rdx, 12
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
test edi, esi
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
cmovbe di, si
xor al, 34
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
cmovnl edx, ebx
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
btc rax, 106
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and bl, 107 # instrumentation
cmovbe si, bx
bts ax, bx
and bl, -123 # instrumentation
cmovnp si, ax
not dl
cmovs edi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
