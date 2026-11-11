.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ax, 65
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edx
or esi, esi
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
test di, si
and cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
btr dx, bx
and dil, cl
and cl, 91 # instrumentation
cmovle rsi, rsi
cmovnz ecx, eax
and bl, 107 # instrumentation
cmovbe di, cx
test rax, -359674714
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 100
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
cmovb si, di
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
bts rsi, 206
cmovs eax, edx
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
