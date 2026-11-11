.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -843636050
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
cmovnbe rsi, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or rax, -1561934807
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
bt rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 23
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 100
btc rcx, 87
and cl, 112 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 66
cmovno rdx, rdx
and dil, -75 # instrumentation
cmovp edi, edi
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
