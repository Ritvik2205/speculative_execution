.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
cmovz ecx, ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
cmovnl edx, edx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and bl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
or dil, al
btc rdx, 68
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and bl, -5 # instrumentation
cmovnl di, ax
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and dl, -72 # instrumentation
not bl
or cl, dil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
test rdx, rax
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
