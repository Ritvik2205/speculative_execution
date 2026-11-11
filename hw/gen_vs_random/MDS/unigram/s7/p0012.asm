.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
and dl, 53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
cmovnz eax, esi
or bl, 127
and dil, -62
cmovnz esi, edx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
btc rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or dx, bx
jmp .bb_0.1
.bb_0.1:
btc cx, bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and sil, -69
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
btr di, cx
btc ecx, edi
btc edi, ebx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
