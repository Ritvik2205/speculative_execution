.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and al, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, -63
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 16
test dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
cmovnl eax, eax
test cl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
xor rdx, -59
cmovs esi, esi
btc rcx, rax
or bx, dx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
