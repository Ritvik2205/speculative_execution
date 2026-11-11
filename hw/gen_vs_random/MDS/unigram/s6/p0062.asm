.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and dl, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovb rcx, rbx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
not edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
btc dx, ax
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor edi, edx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and al, al
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
cmovb rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
