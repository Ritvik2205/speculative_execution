.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 52
btc eax, 81
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
or rax, rcx
and di, 10
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 87
cmovbe ax, di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
btc rsi, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and si, dx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 7
xor rsi, 26
bts rcx, 115
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
xor al, -28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
