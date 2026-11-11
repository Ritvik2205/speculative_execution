.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 24
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 95
neg bl
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
not ecx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
xor cl, sil
or dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
cmovnl rdi, rdx
cmp cx, 90
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
