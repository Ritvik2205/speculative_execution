.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and sil, 101 # instrumentation
cmovno edi, esi
and dl, -19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and cl, -23 # instrumentation
cmovno esi, ebx
bt eax, 117
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
cmovnz rax, rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and bl, 68
and dl, -73
test bl, dil
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
cmovz dx, si
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
