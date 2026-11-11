.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
or ebx, edi
bt rsi, rcx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
xor edi, 74
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor si, ax
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
test eax, 758789512
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
