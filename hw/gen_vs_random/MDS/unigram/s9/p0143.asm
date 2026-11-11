.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rdx
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rax, 79
xor cl, 83
or sil, -78
cmovnbe rcx, rbx
xor sil, dl
and cx, -8
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
or rsi, 63
and sil, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rsi]
cmovnz eax, eax
xor sil, -14
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
