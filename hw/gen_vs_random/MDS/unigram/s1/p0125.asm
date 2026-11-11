.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 81
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 74
xor dil, 44
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 74
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 69
cmovnbe ax, dx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
bt eax, 81
and edi, 3
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 26
btc dx, di
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 95
or rdi, 67
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and cl, al
bts rcx, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
