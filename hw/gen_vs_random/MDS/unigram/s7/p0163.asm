.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
and al, -114
and bl, 38 # instrumentation
cmovno rax, rbx
xor rax, -91
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovbe di, bx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
xor cl, -13
or al, 24
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
test edx, -1561252782
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 42
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
