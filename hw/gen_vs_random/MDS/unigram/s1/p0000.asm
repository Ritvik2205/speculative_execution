.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
cmovnle rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
xor cl, 122
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
cmovp esi, ecx
and dl, 110 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
or al, bl
jmp .bb_0.1
.bb_0.1:
xor ebx, 6
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
cmovnb si, si
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 54
btc edx, 5
not bx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 44
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
xor edx, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
