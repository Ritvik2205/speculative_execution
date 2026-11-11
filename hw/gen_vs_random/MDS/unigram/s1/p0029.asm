.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 95
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
btc esi, ebx
cmovnb rdx, rsi
cmovb rax, rdi
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 92
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
cmovnle rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
btc rax, 110
btc dx, cx
cmovnz di, si
cmovnbe rbx, rbx
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
