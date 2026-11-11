.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
test eax, 1729060510
or dil, -76
cmovbe dx, si
xor dil, -5
cmovl rcx, rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 18
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 54
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 92
or bx, 24
and sil, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
