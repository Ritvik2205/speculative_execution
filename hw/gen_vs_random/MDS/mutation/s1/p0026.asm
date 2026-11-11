.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
xor rax, -345061362
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
xor ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovnb rdx, rcx
or dl, -97
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or cl, al
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
bt rax, rdi
or eax, 1725503461
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
