.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 41
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 37
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
cmovb rax, rdx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and bl, -30 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 86
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
cmovnbe edx, eax
and dl, al
cmovnl edi, ecx
or ax, -4635
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 25
cmovnb rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
