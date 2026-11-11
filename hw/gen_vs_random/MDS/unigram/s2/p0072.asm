.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 100
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 93
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
xor dl, bl
and dil, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 45
not al
jmp .bb_0.1
.bb_0.1:
xor dl, 40
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
or bl, 13
btc ax, 22
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
bt edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
